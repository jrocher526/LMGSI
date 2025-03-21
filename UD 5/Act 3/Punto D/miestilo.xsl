<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:text>Inventario de Registros&#xA;</xsl:text>
        <xsl:text>------------------------&#xA;&#xA;</xsl:text>

        <xsl:for-each select="root/record">
            <xsl:sort select="date/@when" order="descending" data-type="text"/>
            
            <xsl:text>ID: </xsl:text>
            <xsl:value-of select="id"/>
            <xsl:text>&#xA;Título: </xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text>&#xA;Fecha: </xsl:text>
            <xsl:value-of select="date/@when"/>
            <xsl:text>&#xA;&#xA;</xsl:text>

            <xsl:apply-templates select="text"/>
            <xsl:text>&#xA;&#xA;</xsl:text>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="text">
        <xsl:apply-templates select="p"/>
    </xsl:template>

    <xsl:template match="p">
        <xsl:value-of select="."/>
        <xsl:text>&#xA;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
