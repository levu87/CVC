<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-product-2">
				<div class="container">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of></h1>
					<div class="slider">
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
								<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-navigation">
							<div class="p2-button-prev"><img src="/Data/Sites/1/media/left.png" alt=""></img></div>
							<div class="p2-button-next"><img src="/Data/Sites/1/media/right.png" alt=""></img></div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Product">
        

        <xsl:if test="position() &gt; 0">
        
        <div class="swiper-slide"> 
            <div class="item"> 
                <div class="img"> 
                    <img class="lazyload blur-up">
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </img>
                </div>
                <div class="title"> 
                    <div class="top"> 
                    <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                        <p><xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of></p>
                    </div>
                    <div class="bottom"> 
                        <p><xsl:value-of disable-output-escaping="yes" select="Code"></xsl:value-of></p>
                    </div>
                </div>
            </div>
        </div>
        </xsl:if>

        
    </xsl:template>
</xsl:stylesheet>