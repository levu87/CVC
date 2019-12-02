<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="chitiet-tintuc">
				<div class="container"> 
					<div class="row">
						<div class="col-lg-9 contain">
							<h2><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h2>
							<time><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/CreatedDate"></xsl:value-of></time>
							<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
							<div class="social-share"></div>
						</div>
                        <xsl:if test="count(/NewsDetail/NewsOther) &gt; 0">
                            <div class="col-lg-3 other">
							<div class="head">
								<h2>tin tức khác</h2>
							</div>
							<div class="list-item">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
                        </xsl:if>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="item"> 
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
									<div class="content"> 
										<time><xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of></time>
                                        <a> 
                       
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title"></xsl:value-of>
                                        </xsl:attribute>
                                     
											<h4><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h4></a>
									</div>
								</div>
    </xsl:template>
</xsl:stylesheet>