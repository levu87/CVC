<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="page-banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
                        <xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
			<a>
				<xsl:attribute name="style">
					<xsl:text disable-output-escaping="yes">background-image: url("</xsl:text>
					<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
					<xsl:text disable-output-escaping="yes">")</xsl:text>
				</xsl:attribute>
				<xsl:if test="Url != ''">
					<xsl:attribute name="href">
						<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</a>
		</div> 
    </xsl:template>
</xsl:stylesheet>