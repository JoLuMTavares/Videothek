<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Genre Liste</title>
			</head>
			<body style="font-family: Calibri">
				<table style="width: 100%; max-width: 1800px">
					<tbody>
						<tr>
							<th style="text-align:center; background-color: gold">Filmen mit diesem bestimmten Schauspieler</th>
						</tr>
						<tr>
							<table style="border-style: ridge; background: linear-gradient(-90deg, #FFBF00, brown)">
								<tbody>
									<tr bgcolor="#f44">
										<th style="text-align:left">Liste</th>
									</tr>
									<xsl:for-each select="resultset/row">
										<!--<xsl:sort select="id"/>-->
										<xsl:variable name="varIndex" select="count(preceding-sibling::td)"/>
										<tr style="border-style: solid;">
											<td>
												<xsl:attribute name="align"><xsl:value-of select="key('align', $varIndex)/@name"/></xsl:attribute>
												<xsl:apply-templates/>
											</td>
										</tr>
									</xsl:for-each>
								</tbody>
							</table>
						</tr>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
