<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        
            <section class="cvc-about-1">
				<div class="main-content">
                    <xsl:if test="position() = 1">
					<div class="item item--1" id="section-1">
						<div class="container"> 
							<div class="row">
                                <xsl:apply-templates select="News" mode="Zone1-News1"></xsl:apply-templates>
							</div>
						</div>
					</div>
                </xsl:if>
                    <xsl:if test="position()= 2">                        
					<div class="row item item--2" id="section-2">
                            <xsl:apply-templates select="News" mode="Zone1-News2"></xsl:apply-templates>
                        </div>
                    </xsl:if>
                    <xsl:if test="position() = 3">
					<div class="row item item--3" id="section-3">
                            <xsl:apply-templates select="News" mode="Zone1-News3"></xsl:apply-templates>
                        </div>
                    </xsl:if>
                    <xsl:if test="position() = 4">
					<div class="row item item--4" id="section-4">
                            <xsl:apply-templates select="News" mode="Zone1-News4"></xsl:apply-templates>
                        </div>
                    </xsl:if>
				</div>
			</section>
      
        <xsl:if test="position()= 5">
            <section class="history-section" id="section-5">
                <div class="container">
                    <h1>
                        
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                    <div class="history-wrapper">
                        <div class="tab-navigation">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
                                </div>
                                <div class="history-btn-next"> <em class="lnr lnr-arrow-right"></em></div>
                                <div class="history-btn-prev"> <em class="lnr lnr-arrow-left"></em></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <div class="pp-home-team" setBackground="/Data/Sites/1/media/about/bg-3.png" id="section-6">
				<div class="container">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
					<div class="team-slider"> 
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
								<xsl:apply-templates select="News" mode="Zone3-News"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</div>
        </xsl:if>
        <xsl:if test="position()= 7">
            <div class="giai-thuong-wrapper" id="section-7"> 
				<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
				<div class="container"> 
					<div class="slider">
						<div class="swiper-container"> 
							<div class="swiper-wrapper"> 
								<xsl:apply-templates select="News" mode="Zone4-News"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-navigation">
							<div class="product-button-prev"><em class="lnr lnr-arrow-left"></em></div>
							<div class="product-button-next"><em class="lnr lnr-arrow-right"></em></div>
						</div>
					</div>
				</div>
			</div>
        </xsl:if>
        <xsl:if test="position()= 8">
            <section class="doitac" setBackground="/Data/Sites/1/media/about/bg-4.png" id="section-8">
				<div class="container">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
					<div class="slider">
                        <div class="row">
							<div class="col-6 doitac-slider">
                                <xsl:apply-templates select="Zone" mode="Zone1"></xsl:apply-templates>
							</div>
							<div class="col-6 khachhang-slider">
                                <xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
        </xsl:if>
    </xsl:template>
                <xsl:template match="Zone" mode="Zone2">
                    <xsl:if test="position()=2">
                    
                    <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="slider2"></xsl:apply-templates>
                        </div>
                    </div>
                    
                    <div class="swiper-btn-next"><em class="lnr lnr-arrow-right"></em></div>
                    <div class="swiper-btn-prev"><em class="lnr lnr-arrow-left"></em></div>
                    </xsl:if>
                </xsl:template>

                <xsl:template match="Zone" mode="Zone1">
                    <xsl:if test="position()= 1">
                    <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="slider1"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper2-btn-next"><em class="lnr lnr-arrow-right"></em></div>
                    <div class="swiper2-btn-prev"><em class="lnr lnr-arrow-left"></em></div>
                    </xsl:if>
                </xsl:template>


    <xsl:template match="News" mode="slider2">
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

    <xsl:template match="News" mode="slider1">
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


    <xsl:template match="News" mode="child2">
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
    <xsl:template match="News" mode="Zone1-News1">
    
            <div class="col-md-12 col-lg-6 box-img">
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
            </div>
            <div class="col-md-12 col-lg-6 box-text">
                <div class="content">
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News3">
        
            <div class="col-md-12 col-lg-6 box-img">
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
            </div>
            <div class="col-md-12 col-lg-6 box-text">
                <div class="content">
                    <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News2">
            <div class="col-md-12 col-lg-6 box-img">
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
            </div>
            <div class="col-md-12 col-lg-6 box-text">
                <div class="content">
                    <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
        
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News4"> 
            <div class="col-md-12 col-lg-6 box-img">
                <div class="image"><img class="lazyload blur-up">
                <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                </img></div>
            </div>
            <div class="col-md-12 col-lg-6 box-text">
                <div class="content">
                    <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div>
            </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <div class="swiper-slide">
            <div class="date"> 
                <p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
                <h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4>
            </div>
            <div class="title">
                <p><xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of></p>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone3-News">
        <div class="swiper-slide"><a class="item">
                <!-- data-fancybox data-animation-duration="700" data-src="#Modal" -->
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
                <h3><span><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of> </span></h3>
                <P><xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of></P>
            </div></a>
        <div id="Modal" style="display: none;max-width:900px;">
            <div class="popup-wrapper">
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
                <div class="content">
                    <div class="head">
                        <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of> </h3>
                        <P><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></P>
                    </div>
                    <div class="full-content">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </xsl:template>
    <xsl:template match="News" mode="Zone4-News">
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
                    <h3><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h3>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>