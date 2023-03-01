from osgeo import gdal
import tifffile
from skimage.transform import resize
import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras.models import load_model

clorofila_model = load_model('modelo_clorofila.h5')
altura_model = load_model('modelo_altura.h5')

def estandarizar_bandas(img):
    banda1, banda2, banda3, banda4 = np.moveaxis(img, 2, 0)
    bandas = [banda1, banda2, banda3, banda4]
    bandas_norm = []
    for banda in bandas:
        mean = banda.mean()
        std = banda.std()
        banda = (banda-mean)/std
        bandas_norm.append(banda)
    img_norm = np.array(bandas_norm)
    img_norm = np.moveaxis(bandas_norm, 0, 2)
    return img_norm

def recortar(img, h, w):
    cropped_images = []
    for r in range(h):
        for c in range(w):
            i1 = int(r*(img.shape[0]/h))
            i2 = int((r+1)*(img.shape[0]/h))
            
            j1 = int(c*(img.shape[1]/w))
            j2 = int((c+1)*(img.shape[1]/w))
            
            im = img[i1:i2, j1:j2]
            cropped_images.append(im)
    return cropped_images

def write_geotiff(filename, arr, in_ds):
    if arr.dtype == np.float32:
        arr_type = gdal.GDT_Float32
    else:
        arr_type = gdal.GDT_Int32

    driver = gdal.GetDriverByName("GTiff")
    out_ds = driver.Create(filename, arr.shape[1], arr.shape[0], 1, arr_type)
    out_ds.SetProjection(in_ds.GetProjection())
    out_ds.SetGeoTransform(in_ds.GetGeoTransform())
    band = out_ds.GetRasterBand(1)
    band.WriteArray(arr)
    band.FlushCache()
    band.ComputeStatistics(False)

def predecir(input_tif_path):
    tif = tifffile.imread(input_tif_path)
    resized_tif = resize(tif, (2240, 2240))
    norm_tif = estandarizar_bandas(resized_tif)
    cropped_tif = recortar(norm_tif, 10, 10)
    X = np.array(cropped_tif)
    clorofila_pred = clorofila_model.predict(X)
    altura_pred = altura_model.predict(X)
    return clorofila_pred, altura_pred

def guardar_tif(results, output_path, input_tif_path):

    fragments = []
    for i in range(10):
        initial = i*10
        final = (i+1)*10
        fragment = np.concatenate(results[initial:final], axis=1)
        fragments.append(fragment)

    img = np.concatenate(fragments)
    ds = gdal.Open(input_tif_path)
    array = ds.ReadAsArray()
    x, y = array.shape[1], array.shape[2]
    resized_img = resize(img, (x, y))
    write_geotiff(output_path, resized_img, ds)

#Ejemplo------------------
clorofila_pred, altura_pred = predecir('input.tif')
guardar_tif(clorofila_pred, 'clorofila.tif', 'input.tif')
guardar_tif(altura_pred, 'altura.tif', 'input.tif')
