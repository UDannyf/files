<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>CLOROFILA</Name>
    <UserStyle>
      <Title>CLOROFILA</Title>
      <Name>CLOROFILA</Name>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <Opacity>1</Opacity>
            <ColorMap  type="intervals" extended="true">              
              <ColorMapEntry color="#000000" quantity="0" opacity="0"/>       
              <ColorMapEntry color="#01820c" quantity="50" label="0 - 50 CCI"/>
              <ColorMapEntry color="#40b74a" quantity="100" label="50 - 100 CCI"/>
              <ColorMapEntry color="#66d16f" quantity="150" label="100 - 150 CCI"/>
              <ColorMapEntry color="#8ae091" quantity="200" label="150 - 200 CCI"/>
              <ColorMapEntry color="#b2e08a" quantity="250" label="200 - 250 CCI"/>              
              <ColorMapEntry color="#bbf16c" quantity="300" label="250 - 300 CCI"/>             
              <ColorMapEntry color="#cef16c" quantity="350" label="300 - 350 CCI"/>
              <ColorMapEntry color="#dbf08a" quantity="400" label="350 - 400 CCI"/>
              <ColorMapEntry color="#e4f095" quantity="450" label="400 - 450 CCI"/>
              <ColorMapEntry color="#fafbb3" quantity="500" label="450 - 500 CCI"/>
              <ColorMapEntry color="#f3eba5" quantity="550" label="500 - 550 CCI"/>              
              <ColorMapEntry color="#dbce80" quantity="600" label="550 - 600 CCI"/>             
              <ColorMapEntry color="#ccba67" quantity="650" label="600 - 650 CCI"/>              
              <ColorMapEntry color="#c0a452" quantity="700" label="650 - 700 CCI"/>             
              <ColorMapEntry color="#c09d52" quantity="750" label="700 - 750 CCI"/>             
              <ColorMapEntry color="#bb8836" quantity="800" label="750 - 800 CCI"/>             
              <ColorMapEntry color="#bb7b36" quantity="850" label="800 - 850 CCI"/>             
	      <ColorMapEntry color="#b36425" quantity="900" label="850 - 900 CCI"/>	      	      
              <ColorMapEntry color="#b22c18" quantity="950" label="900 - 950 CCI"/>	      	      
              <ColorMapEntry color="#860404" quantity="1000" label="950 - 1000 CCI"/>	      	                    
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

