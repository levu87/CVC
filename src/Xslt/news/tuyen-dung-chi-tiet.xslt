<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="tuyendung-ct">
				<div class="container">
					<div class="row">
						<div class="col-lg-9">
							<h1><xsl:value-of disable-output-escaping="yes" select="/NewsDetail/Title"></xsl:value-of></h1>
							<h2>Thông tin tuyển dụng</h2>
							<div class="brief-content">
								<div class="row">
									<table>
							    <xsl:apply-templates select="/NewsDetail/NewsAttributes" mode="Table"></xsl:apply-templates>
                                </table>
								</div>
							</div>
							<div class="full-content">
								<div>
									<xsl:value-of disable-output-escaping="yes" select="/NewsDetail/FullContent"></xsl:value-of>
								</div>
								<p class="MsoNormal" style="text-align:justify;tab-stops:center 378.0pt;"> </p>
								<div class="buttons"><a class="btn-register" href="javascript:void(0)" data-fancybox="" data-src="#ungtuyen">
                                <xsl:text disable-output-escaping="yes">Ứng tuyển</xsl:text>
                                </a></div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="other-news-title">Tuyển dụng khác</div>
							<div class="other-news">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="hidden">
							<div id="ungtuyen">
								<div class="popup-body">
									<iframe src="http://datvinhtien.vn/News/JobApplyDialog.aspx?zoneid=117&amp;NewsID=255" frameborder="0"></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    </xsl:template>
    <xsl:template match="NewsAttributes" mode="Table">
       <tr>
            <td class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </td>
            <td>
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="NewsOther">
        <xsl:if test="position()&gt;0 and position()&lt;5">
            <div class="item">
                <div class="time"><xsl:value-of select="CreatedDD"></xsl:value-of>.<xsl:value-of select="CreatedMM"></xsl:value-of>.<xsl:value-of select="CreatedYYYY"></xsl:value-of></div>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    
                        
                   
                    <div class="title">
                        <h4><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h4>
                    </div>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>