<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns="http://www.w3.org/2000/svg"
	xmlns:svg="http://www.w3.org/2000/svg"
	exclude-result-prefixes="xs xd"
	version="2.0">
	<xd:doc scope="stylesheet">
		<xd:desc>
			<xd:p><xd:b>Created on:</xd:b> 2016-06-21</xd:p>
			<xd:p><xd:b>Author:</xd:b> developer@sleepingdog.org.uk</xd:p>
			<xd:p>Copies a SVG document, replacing any matches of person components it finds from a second SVG document.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" />
	<xsl:include href="copy.xslt" />	
	<xsl:param name="replacementSetUrl" select="'file:/Volumes/sleepingdog/Projects/Coding/OERVectorLibrary/Sets/OVL-Set-Rollergirls.svg'" />
	<xsl:variable name="replacementSetDoc" select="document($replacementSetUrl)" />
	<xsl:template match="/">
		<xsl:apply-templates />
	</xsl:template>
	<xsl:template match="svg:svg/svg:style/text()">
		<xsl:copy />
		<xsl:copy-of select="$replacementSetDoc/svg:svg/svg:style/text()" />
	</xsl:template>
	<xsl:template match="svg:g[starts-with(@id, 'person')][not(svg:g)]">
		<xsl:variable name="gid" select="./@id"/>
		<xsl:comment select="concat('gid = ', $gid)" />
		<xsl:choose>
			<xsl:when test="$replacementSetDoc//svg:g[@id = $gid]">
				<xsl:comment select="'replacement'" />
				<xsl:copy-of select="$replacementSetDoc//svg:g[@id = $gid]" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:comment select="'original'" />
				<xsl:copy />
				<xsl:apply-templates />
			</xsl:otherwise>
		</xsl:choose>
		<!--<xsl:apply-templates />-->
	</xsl:template>
</xsl:stylesheet>