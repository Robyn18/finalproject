<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     
    <xsl:template match="/">
        <html>
            <head>
                <title>Park fest</title>
                <link rel="stylesheet" type="test/css" href="style.css"/>
            
            </head>
            <body>
       <div id="cttl">
       <div id="link">
            <a href="contact.html">Tickets</a>
           |
            <a href="schedulef.html">Schedule</a>
           |
            <a href="artists.html">Artists</a>
           |
            <a href="location.html">Location</a>
           |
            <a href="Contactinfo.html">Contact</a>
           |
            <a href="faq.html">FAQ</a>
        </div>
        </div>
            
            
            
           
            <h2>Sunday</h2>
    <xsl:apply-templates select="lineup/artist" />
            <h2>Other performance days</h2>
           
            </body> 
        </html>
    </xsl:template>
    
    <xsl:template match="artist[gig/day= 'Sunday']">
        
        <div>
            <name><xsl:value-of select="name"/></name>
            <gig><xsl:apply-templates select="gig" /></gig>
            <gig><xsl:apply-templates select="time" /></gig>
        </div>
        
    </xsl:template>
    
    <xsl:template match="artist[gig/day != 'Sunday']">
    </xsl:template>
     
    <xsl:template match="gig">
     <day><xsl:value-of select="day" /></day>
     <time><xsl:apply-templates select="time" /></time>
    </xsl:template>
    <xsl:template match="time">
        <start><xsl:value-of select="start" /></start>
        to
        <end><xsl:value-of select="end" /></end>
        </xsl:template>
    </xsl:stylesheet>