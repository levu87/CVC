<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-product-1"> 
				<div class="container"> 
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of></h1>
					<div class="list-item"> 
                        
                            <xsl:apply-templates select="/ProductList/Product" mode="big"></xsl:apply-templates>
                            <div class="item item--2">

                                <xsl:apply-templates select="/ProductList/Product" mode="small"></xsl:apply-templates>
							    <xsl:apply-templates select="/ProductList/Product" mode="small-1"></xsl:apply-templates>
                                

                            </div>
                            
						
						
							<xsl:apply-templates select="/ProductList/Product" mode="small2"></xsl:apply-templates>
							
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="Product" mode="big">
    <xsl:if test="position() = 1">
        <div class="item item--1"> 
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
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </div>
        </div>
                        </xsl:if>

    </xsl:template>
    <xsl:template match="Product" mode="small2">
    <xsl:if test="position()= 4">
        <div class="item item--3"> 
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
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </div>
        </div>
        </xsl:if>

    </xsl:template>
    <xsl:template match="Product" mode="small">
    
    <xsl:if test="position() =2">  
        <div class="items">
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
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </div>
        </div>
        </xsl:if>
       
    </xsl:template>
    <xsl:template match="Product" mode="small-1">
    
    <xsl:if test="position() =3">  
        <div class="items">
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
                <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a>
            </div>
        </div>
        </xsl:if>
       
    </xsl:template>
</xsl:stylesheet>