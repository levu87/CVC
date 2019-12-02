<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
            <div class="mobile-nav"> 
                <h4>Danh mục </h4><em class="lnr lnr-chevron-down"></em>
            </div>
            <nav> 
                <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            </nav>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
            <xsl:text>active</xsl:text>
            </xsl:attribute>
            </xsl:if>
            <a class="nav_item">
                <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
                
    </xsl:template>
</xsl:stylesheet>