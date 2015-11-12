<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>My Game Collection</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match='game'>
  <p>
    <xsl:apply-templates select="title"/>  
    <xsl:apply-templates select="release"/>
    <xsl:apply-templates select="platforms"/>
    <xsl:apply-templates select="@id"/>
   </p>
</xsl:template>

<xsl:template match="@id">
  ID:<xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="title">
  Title: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="release">
  Release: <span style="color:#00ff00">
  <xsl:value-of select="day"/>/
   <xsl:value-of select="year"/>/
    <xsl:value-of select="month"/></span>
  <br/>
</xsl:template>

<xsl:template match="platforms">
  <ul>
  	<xsl:apply-templates/>
    </ul>
</xsl:template>

<xsl:template match="platform">
	<li>
    <xsl:value-of select="."/>
    </li>
</xsl:template>

</xsl:stylesheet>