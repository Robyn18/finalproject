<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   ID, title, author, year;
    <xsl:apply-templates />
 
</xsl:template>

<xsl:template match="book">
<xsl:value-of select="id" /> <xsl:value-of select="title"/> ,&quot; <xsl:value-of select="year" />
  
    

   
</xsl:template>          

    
</xsl:stylesheet>