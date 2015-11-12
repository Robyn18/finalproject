<?xml version="1.0" encoding="UTF-8"?>
 
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   
    <xsl:template match="/">
         <html>
    <head>
         <link rel="stylesheet" type="text/css" href="style.css"/>
        </head>
           
    
  
        <lineup>
            <xsl:apply-templates />  
        </lineup>
             </html>
    </xsl:template>
      
    <xsl:template match="band">
        <artist>
            <xsl:attribute name="id">
            <xsl:value-of select="@id" />
            </xsl:attribute>
            <name><xsl:value-of select="@name" /></name>
            <genre><xsl:apply-templates select="@genre" /> </genre>
            <writeup><xsl:value-of select="description" /></writeup>
            <gig><xsl:apply-templates select="timeslot" /></gig>
            <gig><xsl:apply-templates select="time" /></gig>
            <photo><xsl:value-of select="photo" /></photo>
     </artist>
    </xsl:template>
    
    <xsl:template match="@genre">
        <genre><xsl:value-of select="." /></genre>
    </xsl:template>
    <xsl:template match="timeslot">
     <day><xsl:value-of select="(@day)" /></day>
     <time><xsl:apply-templates select="time" /></time>
    </xsl:template>
    <xsl:template match="time">
        <start><xsl:value-of select="@start" />:00</start>
        <end><xsl:value-of select="@end" />:00</end>
        
        </xsl:template>
</xsl:stylesheet>