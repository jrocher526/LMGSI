<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:text>Lista de Registros Fechados desde 1789&#xA;</xsl:text>
        <xsl:text>---------------------------------------&#xA;&#xA;</xsl:text>

        <xsl:for-each select="root/record[substring(date/@when, 1, 4) >= '1789']">
            <xsl:sort select="date/@when" order="descending" data-type="text"/>
            
            <xsl:text>&#xA; ID:</xsl:text>
            <xsl:value-of select="id"/>
            <xsl:text>&#xA; Title:</xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>&#xA; Date:</xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>&#xA; </xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
