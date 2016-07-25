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
			<xd:p><xd:b>Created on:</xd:b> 2016-06-23</xd:p>
			<xd:p><xd:b>Author:</xd:b> developer@sleepingdog.org.uk</xd:p>
			<xd:p>Copies a SVG document, removing or transforming selected classes of objects.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" />
	<xsl:include href="copy.xslt" />	
	<xsl:param name="alcohol" as="xs:boolean" select="true()" /><!-- false: remove alcohol -->
	<xsl:param name="meat" as="xs:boolean" select="true()" /><!-- false: remove meat -->
	<xsl:param name="personstyles" as="xs:string" select="''" />
	<xsl:template match="/">
		<xsl:apply-templates />
	</xsl:template>
	<!-- If alcohol or other designated classes of objects are not permitted, remove them. -->	
	<!-- When using .NET XSLT classes (which only support XSLT 1.0) you cannot use variables in template matches,
		so move them to a condition inside. -->
	<!--<xsl:template match="svg:*[@class = 'alcohol'][$alcohol = false()]" />-->
	<xsl:template match="svg:*[@class = 'alcohol']">
		<xsl:if test="$alcohol = true()"><xsl:copy-of select="." /></xsl:if>
	</xsl:template>
	<!-- If meat objects are not permitted, remove them. -->
	<!--<xsl:template match="svg:*[@class = 'meat'][$meat = false()]" />-->
	<xsl:template match="svg:*[@class = 'meat']">
		<xsl:if test="$meat = true()"><xsl:copy-of select="." /></xsl:if>
	</xsl:template>
	<xsl:template match="svg:style">
		<xsl:copy>
			<xsl:attribute name="type"><xsl:text>text/css</xsl:text></xsl:attribute> 
			<xsl:value-of select="text()"/>
			<xsl:text>
	/* hide joint objects */
	.ball{display: none;}
	.socket{display: none;}
			</xsl:text>
			<xsl:value-of select="$personstyles"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>