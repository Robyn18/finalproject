<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
<xsl:template match="/">
     <html>
    <head>
      
         <link rel="stylesheet" type="text/css" href="style.css">
        </link>
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
           <a href="artist101output.html">Jeremy Loops</a>
       | 
       <a href="artist102output.html">Matthew Mole</a>
       |
       <a href="artist103output.html">Prime Circle</a>
       |
       <a href="artist104output.html">Dan Patlansky</a>
       |
       <a href="artist105output.html">Mi casa</a>
       |
       <a href="artist106output.html">The Narrow</a>
       |
       <a href="artist111output.html">The Parlotones</a>
       |
       <a href="artist222output.html">ShortStraw</a>
       |
       <a href="artist333output.html">Gangs of Ballet</a>
       |
  <xsl:for-each select="lineup/artist">
    <xsl:result-document method="xml" href="artist{@id}output.html">
      <xsl:copy-of select="."/>
    </xsl:result-document>
  </xsl:for-each>
        </body>
          </html>
</xsl:template> 
    </xsl:stylesheet>