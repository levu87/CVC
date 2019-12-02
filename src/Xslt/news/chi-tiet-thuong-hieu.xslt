<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="dq-recruitment-1 thuong-hieu-ct">
				<div class="container">
					<div class="main-content">
						<div class="row">
							<div class="col"></div>
						</div>
						<div class="row item">
							<div class="col-md-6">
								<div class="content">
									<h3><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h3>
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
								</div>
							</div>
							<div class="col-md-6">
                                <xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
							</div>
						</div>
					</div>

					<div class="other-wrapper">
						<h4>Các thương hiệu khác</h4>
						<div class="other-list brand-list-wrapper">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="NewsImages">
        <div class="image">
            <img class="lazyload blur-up">
            <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match="NewsOther">
        <xsl:if test="position()&gt;0 and position()&lt;5">
        <div class="swiper-slide">
            <div class="item"><a>
                
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                
                    <figure>
                        <div class="ic" style="height: 150px;">
                            <img class="lazyload blur-up">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            </img>
                        </div>
                    </figure></a></div>
        </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>