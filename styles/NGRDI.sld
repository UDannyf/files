<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>NGRDI</Name>
    <UserStyle>
      <Title>NGRDI</Title>
      <Name>NGRDI</Name>
      <FeatureTypeStyle>
        <Rule>
          <RasterSymbolizer>
            <ColorMap>
              <ColorMapEntry color="#000000" quantity="-999" opacity="0"/>
              <ColorMapEntry color="#000000" quantity="0" opacity="0"/>
              <ColorMapEntry color="#000002" quantity="1" label="-1"/>
              <ColorMapEntry color="#0000ff" quantity="31" label="-0.75"/>
              <ColorMapEntry color="#6e4795" quantity="63" label="-0.50"/>
              <ColorMapEntry color="#ff00ff" quantity="95" label="-0.25"/>              
              <ColorMapEntry color="#ff0000" quantity="127" label="0"/>              
              <ColorMapEntry color="#ff8d0a" quantity="159" label="0.5"/>              
              <ColorMapEntry color="#e9e500" quantity="191" label="0.25"/>              
	      <ColorMapEntry color="#00ff00" quantity="223" label="0.75"/>	      	      
              <ColorMapEntry color="#1f8a00" quantity="255" label="1"/>
            </ColorMap>
          </RasterSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
