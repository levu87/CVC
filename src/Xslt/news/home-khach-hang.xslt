<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
   <xsl:template match="Zone">
        
            <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News" mode="Zone-News"></xsl:apply-templates>
                    
                </div>
            </div>
            <!--/control-->
            <div class="swiper-btn-next"><em class="lnr lnr-arrow-right"></em></div>
            <div class="swiper-btn-prev"><em class="lnr lnr-arrow-left"></em></div>

      		
    </xsl:template>
    <xsl:template match="News" mode="Zone-News">
        <div class="swiper-slide">
            <div class="item">
                <img class="lazyload blur-up">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>