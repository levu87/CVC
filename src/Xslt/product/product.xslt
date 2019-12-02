<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <h2 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of></h2>
            <div class="row product-list">
                <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates> 
            </div>   
    </xsl:template>
    <xsl:template match="Product">
            <div class="col-md-4 col-6">
                    <div class="product-item">
                        <div class="imgbox">
                            <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img class="lazyload blur-up">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                            </a>
                        </div>
                        <div class="title">
                            <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                        </div>
                        <div class="info-hover">
                            <h4>
                                <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </a>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h4>
                            <a class="btn-viewmore white">
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        
                             <span><xsl:text disable-output-escaping="yes">Xem thêm</xsl:text></span><span class="lnr lnr-arrow-right"></span></a>
                        </div>
                    </div>
                </div>     
    </xsl:template>
</xsl:stylesheet>