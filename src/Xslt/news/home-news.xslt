<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-news">
				<div class="container">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
					<div class="slider">
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
								
									<xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
								
									<xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
								
							</div>
						</div>
						<div class="swiper-pagination"></div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position() = 1">
        <div class="swiper-slide"> 
        <div class="item item--1">
            <div class="content">
                <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
                <a class="title">
                
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </p>
                <div class="btn-view-more"> <a>
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                       
                    <img src="/Data/Sites/1/media/ic-btn.png" alt=""></img> <span><xsl:text disable-output-escaping="yes">Xem thêm</xsl:text></span></a></div>
            </div>
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
        </div>
        </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <xsl:if test="position() &gt; 1">
            <div class="swiper-slide"> 
                <div class="item item--2">
                    <a class="img">
                        
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
                    <div class="content">
                        <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
                        <a class="title">
                        
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </a>
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </p>
                        <div class="btn-view-more"> <a>
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                           
                        <img src="/Data/Sites/1/media/ic-btn.png" alt=""></img> <span><xsl:text disable-output-escaping="yes">Xem thêm</xsl:text></span></a></div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>