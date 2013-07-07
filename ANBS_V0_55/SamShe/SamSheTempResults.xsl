<?xml version="1.0" encoding="UTF-8"?> 



<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:param name="contextPath"/>

    <xsl:template match="MSHE.VulXML">
    
    
    <xsl:element  name = "Name">
    
    </xsl:element>
    
 
	<ul>
		<xsl:apply-templates/>
	</ul>

    </xsl:template>

    <xsl:template match="result">
       <hr/>
	
	<li>
	 <font><xsl:attribute name="color"><xsl:value-of select="color" /></xsl:attribute> <b>#<xsl:value-of select="item" />: <xsl:value-of select="name" /> </b> (<xsl:value-of select="risk" /> risk) </font> <xsl:value-of select="description" />
	</li>

    </xsl:template>


        
</xsl:stylesheet>