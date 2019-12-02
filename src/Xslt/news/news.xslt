<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="list-news-item clearfix">
            <xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
            <xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
            <xsl:apply-templates select="/NewsList/News" mode="Small2"></xsl:apply-templates>

			<xsl:apply-templates select="/NewsList/News" mode="List"></xsl:apply-templates>
					</div>
					
				
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position() = 1">
            <div class="new-item new-item--1">
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
                <div class="title"><a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </a></div>
            </div>
        </xsl:if>
        
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <xsl:if test="position() = 2">
            <div class="new-item new-item--2"> 
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
                <div class="info"> 
                    <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
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
                    <div class="view-more"><a>
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                    <em class="mdi mdi-arrow-right"></em></a></div>
                </div>
            </div>
        </xsl:if>
        
        
    </xsl:template>
    <xsl:template match="News" mode="Small2">
        <xsl:if test="position() = 3">
            <div class="new-item new-item--3"> 
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
                <div class="info"> 
                    <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
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
                    <div class="view-more"><a>
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                    <em class="mdi mdi-arrow-right"></em></a></div>
                </div>
            </div>
        </xsl:if>
        
        
    </xsl:template>
    <xsl:template match="News" mode="List">
        <xsl:if test="position() &gt; 3">
            <div class="new-item new-item--4">
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
                <div class="info"> 
                    <time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
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
                    <p><xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of></p> 
                    <div class="view-more"><a>
                        
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">  Xem tất cả</xsl:text>
                       
                  <em class="mdi mdi-arrow-right"></em></a></div>
                </div>
            </div>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>