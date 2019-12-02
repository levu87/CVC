<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hoi-dap">
				<div class="container">
					<h1 class="main-title"><xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of></h1>
					<div class="row">
						<div class="col-lg-12">
							<div class="table-responsive"> 
								<table class="table">
									<thead>
										<tr>
											<th class="title" scope="col">Tên tài liệu</th>
											<th scope="col">Ngày đăng</th>
											<th scope="col">Xem</th>
											<th scope="col">Tải về</th>
										</tr>
									</thead>
									<tbody> 
										<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
    </xsl:template>
    <xsl:template match="News">
        <tr> 
            <td class="title"><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></td>
            <td><xsl:value-of select="CreatedDD"></xsl:value-of>.<xsl:value-of select="CreatedMM"></xsl:value-of>.<xsl:value-of select="CreatedYYYY"></xsl:value-of></td>
            <td> <a>
			<xsl:attribute name="data-fancybox">
				<xsl:text disable-output-escaping="yes">file_</xsl:text>
				<xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
					<xsl:attribute name='href'>
						<xsl:value-of select='FileUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='title'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					<em class="mdi mdi-file-outline"></em>
				</a></td>
            <td><a class="download_document" download="">
					<xsl:attribute name='href'>
						<xsl:value-of select='FileUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='data-filename'>
						<xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
					</xsl:attribute>
					<span class="lnr lnr-download"></span>
				</a></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>