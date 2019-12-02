<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="dq-recruitment-1">
            <div class="container">
                <div class="main-content">
                    
                    <xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
                    
                </div>
            </div>
        </section>
        <section class="dq-recruitment-2">
            <div class="container">
                <xsl:apply-templates select="/ZoneList/Zone" mode="Zone2"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone1">
        <xsl:if test="position()=1">
        <div class="row">
                        <div class="col">
                            <div class="main-title">
                                <h2 class="main-title"><xsl:value-of select="Title"></xsl:value-of></h2>
                            </div>
                        </div>
                    </div>
            
            <xsl:apply-templates select="News" mode="Zone1-News"></xsl:apply-templates>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone1-News">
        <div class="row item">
            <div class="col-md-6">
                <div class="content">
                    <h3><xsl:value-of select="Title"></xsl:value-of><xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of></h3>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="image">
                    <img class="lazyload">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Zone2">
        <xsl:if test="position()=2">
            <div class="row">
                <div class="col">
                    
                        <h2 class="main-title"><xsl:value-of select="Title"></xsl:value-of></h2>
                
                </div>
            </div>
            <div class="main-table">
                <table>
                    <thead>
                        <tr>
                            <th>Stt</th>
                            <th>Vị trí công việc</th>
                            <th>Khu vực</th>
                            <th>Số lượng</th>
                            <th>Ngày bắt đầu</th>
                            <th>Thời hạn</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="News" mode="Zone2-News"></xsl:apply-templates>
                    </tbody>
                </table>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Zone2-News">
        <tr>
            <td><xsl:value-of select="position()"></xsl:value-of></td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </td>
            <td><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></td>
            <td><xsl:value-of select="SubTitle"></xsl:value-of></td>
             <td><xsl:value-of select="CreadtedDate"></xsl:value-of></td>
            <td><xsl:value-of select="EndDate"></xsl:value-of></td>
            <td>
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    Ứng tuyển
                </a>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
