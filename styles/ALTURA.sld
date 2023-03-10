<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>ALTURA</Name>
    <UserStyle>
      <Title>ALTURA</Title>
      <Name>ALTURA</Name>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <Opacity>0.8</Opacity>
            <ColorMap type="intervals" extended="true">              
              <ColorMapEntry color="#000000" quantity="0" opacity="0"/>       
              <ColorMapEntry color="#000084" quantity="20" label="0 - 20 cm"/>
              <ColorMapEntry color="#4c4cff" quantity="40" label="20 - 40 cm"/>
              <ColorMapEntry color="#9e5dfe" quantity="60" label="40 - 60 cm"/>
              <ColorMapEntry color="#6e4795" quantity="80" label="60 - 80 cm"/>
              <ColorMapEntry color="#ff7156" quantity="100" label="80 - 100 cm"/>              
              <ColorMapEntry color="#ff0000" quantity="120" label="100 - 120 cm"/>             
              <ColorMapEntry color="#01c1ff" quantity="140" label="120 - 140 cm"/>              
              <ColorMapEntry color="#03b49f" quantity="160" label="140 - 160 cm"/>             
              <ColorMapEntry color="#b47003" quantity="180" label="160 - 180 cm"/>             
              <ColorMapEntry color="#ffaa02" quantity="200" label="180 - 200 cm"/>             
              <ColorMapEntry color="#ffe326" quantity="220" label="200 - 220 cm"/>             
	      <ColorMapEntry color="#beae19" quantity="240" label="220 - 240 cm"/>	      	      
              <ColorMapEntry color="#00ff00" quantity="260" label="240 - 260 cm"/>	      	      
              <ColorMapEntry color="#1fa100" quantity="280" label="260 - 280 cm"/>	      	                    
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>

