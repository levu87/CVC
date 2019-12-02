<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="cvc-project-detail-1">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
						</div>
						<div class="col-md-6">
							<div class="info-detail">
								<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="cvc-project-detail-2">
				<div class="container">
					<div class="catelogy">
						<div class="used-products">
							<h3>Sản phẩm đã sử dụng</h3>
							<div class="box">
								<div class="swiper-container">
									<div class="swiper-wrapper">
									<xsl:apply-templates select="/NewsDetail/ProductRelated"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="cvc-project-detail-3">
				<div class="container">
					<div class="catelogy">
                    <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
                        <div class="other-projects">
							<h3>Dự án khác</h3>
							<div class="row">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
                    </xsl:if>
						
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
        <div class="col-md-6 col-lg-4">
            <div class="item">
                <figure>
                    <div class="image">
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
                    <figcaption>
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
                        </h4>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductRelated">
        <div class="swiper-slide">
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
                    </h4><a class="btn-viewmore white">
                    
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    
                
                     <span><xsl:text disable-output-escaping="yes">Xem thêm</xsl:text></span><span class="lnr lnr-arrow-right"></span></a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>