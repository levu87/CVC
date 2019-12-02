<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="home-why" setBackground="/Data/Sites/1/media/about/home-bg2.png">
				<div class="container"> 
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
					<div class="list-item"> 
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <div class="wrapper">
            <div class="item" setBackground="/Data/Sites/1/media/bg-ic.png">
                <div class="img"> 
                    <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                </div><span><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></span>
            </div>
        </div>
        
    </xsl:template>
</xsl:stylesheet>