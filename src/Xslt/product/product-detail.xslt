<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="sanpham-wrapper pd-60">
				<div class="container product-detail">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of></h1>
					<div class="row">
						<div class="col-lg-6">
							<div class="product-image-slider">
								<div class="product-thumbnails-nav"><span class="lnr lnr-chevron-up"></span><span class="lnr lnr-chevron-down"></span></div>
								<div class="swiper-container product-thumbnails">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Thumbs"></xsl:apply-templates>
									</div>
								</div>
								<div class="swiper-container product-images">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Top"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="product-attributes">
                                <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
                                <div class="brand">
                                  <table>
                                    <tbody>
                                      <xsl:apply-templates select='/ProductDetail/NewsRelated'></xsl:apply-templates>
                                      
                                    </tbody>
                                  </table>
                                </div>
							</div>
							<div class="contact">
                            <a class="button button--1">
                            
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                                <xsl:text disable-output-escaping="yes">/lien-he</xsl:text>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Liên hệ</xsl:text>
                            </a>
                            
                            <a class="button button--2" href="">Catalogue 170M3819</a></div>
							<div class="social"></div>
						</div>
						<div class="col-12">
							<div class="product-info">
								<div class="product-detail-title"> 
									<ul class="detail-navigation"> 
                                        
                                        <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Navigation"></xsl:apply-templates>
									</ul>
								</div>
                                <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
								<div class="btn-wrapper"><a class="btn-viewmore red" href="javascript:void(0)"><span><xsl:text disable-output-escaping="yes"> Đọc thêm</xsl:text></span><span class="lnr lnr-arrow-right"></span></a></div>
							</div>
						</div>

            
						<div class="col-12">
                            <xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
							<div class="product-others">
								<div class="product-detail-title">
									<h5>Sản phẩm khác</h5>
								</div>
								<div class="product-others-nav"><span class="lnr lnr-arrow-left"></span><span class="lnr lnr-arrow-right"></span></div>
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="ProductDetail/ProductOther"></xsl:apply-templates>
								
									</div>
								</div>
							</div>
                            </xsl:if>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match='NewsRelated'>
        <tr>
            <th>Hãng sản xuất</th>
            <td> <a class="brand">
              
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
              <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
              
            </a></td>
          </tr>
    </xsl:template>
    <xsl:template match="ProductOther">
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
                     <span><xsl:text disable-output-escaping="yes">Xem thêm</xsl:text> </span><span class="lnr lnr-arrow-right"></span></a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Content">
    <div class="product-attributes noi-dung current" id="tab-1">
		<xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>product-attributes noi-dung current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>product-attributes noi-dung</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="id">
        <xsl:text>tab-</xsl:text>
        <xsl:value-of select="position()"></xsl:value-of>
      </xsl:attribute>


      <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>					
	</div>
  </xsl:template>
    <xsl:template match="ProductAttributes" mode="Navigation">
    <li class="link">
      <xsl:if test="position() =1">
        <xsl:attribute name="class">
          <xsl:text>link current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>link current</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a class="link" id="current" href="javascript:void(0)">
        <xsl:if test="position() =1">
          <xsl:attribute name="class">
            <xsl:text>link current</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="class">
            <xsl:text>link current</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="data-tab">
          <xsl:text>tab-</xsl:text>
          <xsl:value-of select="position()"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
      </a>
    </li>
  </xsl:template>
    <xsl:template match="ProductImages" mode="Top">
        <div class="swiper-slide">
            <a data-fancybox="Image">
            <xsl:attribute name="href">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <div class="imgbox">
                <img class="lazyload blur-up">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img>
            </div>
            </a>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Thumbs">
        <div class="swiper-slide">
            <div class="imgbox">
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