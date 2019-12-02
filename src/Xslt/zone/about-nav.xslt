<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="about-nav"> 
				<div class="container"> 
					<div class="menu-slide">
					
					<div class="swiper-container">
						<div class="swiper-wrapper">
							
								<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						
						</div>
					</div>
					</div>
				</div>
				<div class="nav-wrapper">
					<div class="container">
						<div class="swiper-navigation">
						
						<div class="left-menu">
							<em class="mdi mdi-menu-left"></em>
						</div>
						<div class="right-menu">
							<em class="mdi mdi-menu-right"></em>
						</div>
					</div>
					</div>
				</div>
				
                
			</section>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()&gt;0 and position()&lt;9">
		<div class="swiper-slide">
			<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#section-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
		</div>
		</xsl:if>
    </xsl:template>
</xsl:stylesheet>


