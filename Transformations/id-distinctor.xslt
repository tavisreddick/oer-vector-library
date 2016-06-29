<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
	xmlns="http://www.w3.org/2000/svg"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	exclude-result-prefixes="xs xd"
	version="2.0">
	<xd:doc scope="stylesheet">
		<xd:desc>
			<xd:p><xd:b>Created on:</xd:b> 2016-06-28</xd:p>
			<xd:p><xd:b>Author:</xd:b> developer@sleepingdog.org.uk</xd:p>
			<xd:p>Takes an XML (intended for SVG) document and prefixes the id attribute values to avoid
			collision when used with the original in the same parent document (like a HTML page).</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" />
	<xsl:include href="copy.xslt" />	
	<xsl:param name="idPrefix" as="xs:string" select="'A-'" /><!-- false: remove alcohol -->
	<xsl:template match="/">
		<xsl:apply-templates />
	</xsl:template>
	<!-- If alcohol objects are not permitted, remove them. -->
	<xsl:template match="svg:*/@id">
		<xsl:attribute name="id"><xsl:value-of select="concat($idPrefix, .)"/></xsl:attribute>
	</xsl:template>
	<xsl:template match="@xlink:href">
		<xsl:attribute name="xlink:href">
			<xsl:value-of select="concat('#', $idPrefix, substring-after(., '#'))"/>
		</xsl:attribute>
	</xsl:template>
</xsl:stylesheet>