<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <bookstore>
    <xsl:apply-templates />
  </bookstore>
</xsl:template>

<xsl:template match="book"> 
  <book>
      <xsl:attribute name="category">
          <xsl:value-of select="upper-case(genre)" />
      </xsl:attribute>
      <id> <xsl:value-of select="@id"/> </id>
	  <title> lang="en"<xsl:value-of select="title"/> </title>
      <xsl:apply-templates select="author"/>
      <year> <xsl:value-of select="substring(publish_date,1,4)"/> </year>
      <price> <xsl:value-of select="price"/></price>
      
  </book>
</xsl:template>
<xsl:template match="book[upper-case(genre) != 'FANTASY']" />

<xsl:template match="author">
    <author> <xsl:value-of select="." /></author> 
</xsl:template>          

    
</xsl:stylesheet>