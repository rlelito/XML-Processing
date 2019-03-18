<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>

<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="style.css" type="text/css"/>
	<title>TV Series List</title>
</head>

<body>
	<div id="TVseriesContainer">
		<h1>TV Series List</h1>

		<h2>On going</h2>
		<xsl:for-each select="TVseriesList/TVseries[@type='onGoing']">
			<xsl:variable name="color">
				<xsl:choose>
					<xsl:when test="title[@type='polish']">
						lightgreen
					</xsl:when>
					<xsl:when test="title[@type='original']">
						moccasin
					</xsl:when>
					<xsl:otherwise>
						lightgrey
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>

			<table style="background-color: {$color};">
				<tr>
					<td rowspan="5" id="photo">
						<img><xsl:attribute name="src">
							<xsl:value-of select="poster" />
						</xsl:attribute></img>
					</td>
					<td id="original">
						<b><xsl:value-of select="title[@type='original']" /></b>
					</td>
				</tr>
				<xsl:choose>
					<xsl:when test="title[@type='polish']">
						<tr>
							<td id="polish">
								Polish title: 
								<i><xsl:value-of select="title[@type='polish']" /></i>
							</td>
						</tr>
					</xsl:when>
					<xsl:otherwise>
						<tr>
							<td id="polish"></td>
						</tr>
					</xsl:otherwise>
				</xsl:choose>
				<tr>
					<td id="line">
						Release: <xsl:value-of select="release" />
					</td>
				</tr>
				<tr>
					<td id="line">
						Seasons: <xsl:value-of select="seasons" />
					</td>
				</tr>
				<tr>
					<td id="line">
						Episodes: <xsl:value-of select="episodes" />
					</td>
				</tr>
			</table>
		</xsl:for-each>


		<h2>Completed</h2>
		<xsl:for-each select="TVseriesList/TVseries[@type='completed']">
			<xsl:variable name="color">
				<xsl:choose>
					<xsl:when test="title[@type='polish']">
						lightgreen
					</xsl:when>
					<xsl:when test="title[@type='original']">
						moccasin
					</xsl:when>
					<xsl:otherwise>
						lightgrey
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>

			<table style="background-color: {$color};">
				<tr>
					<td rowspan="5" id="photo">
						<img><xsl:attribute name="src">
							<xsl:value-of select="poster" />
						</xsl:attribute></img>
					</td>
					<td id="original">
						<b><xsl:value-of select="title[@type='original']" /></b>
					</td>
				</tr>
				<xsl:choose>
					<xsl:when test="title[@type='polish']">
						<tr>
							<td id="polish">
								Polish title: 
								<i><xsl:value-of select="title[@type='polish']" /></i>
							</td>
						</tr>
					</xsl:when>
					<xsl:otherwise>
						<tr>
							<td id="polish"></td>
						</tr>
					</xsl:otherwise>
				</xsl:choose>
				<tr>
					<td id="line">
						Release: <xsl:value-of select="release" />
					</td>
				</tr>
				<tr>
					<td id="line">
						Seasons: <xsl:value-of select="seasons" />
					</td>
				</tr>
				<tr>
					<td id="line">
						Episodes: <xsl:value-of select="episodes" />
					</td>
				</tr>
			</table>
		</xsl:for-each>

	</div>

</body>

</html>

</xsl:template>
</xsl:stylesheet>