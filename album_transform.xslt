<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Album List</title>
            </head>
            <body>
                <h1>Album List</h1>
                <xsl:apply-templates select="albums/album"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="album">
        <div>
            <h2><xsl:value-of select="title"/></h2>
            <p>Artist: <xsl:value-of select="artist"/></p>
            <p>Media: <xsl:value-of select="@media"/></p>
            <h3>Tracklist</h3>
            <ul>
                <xsl:apply-templates select="tracklist/track"/>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="track">
        <li><xsl:value-of select="."/></li>
    </xsl:template>

</xsl:stylesheet>
