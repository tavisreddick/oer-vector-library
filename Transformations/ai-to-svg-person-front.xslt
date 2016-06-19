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
			<xd:p><xd:b>Created on:</xd:b> 2016-06-19</xd:p>
			<xd:p><xd:b>Author:</xd:b> developer@sleepingdog.org.uk</xd:p>
			<xd:p>Takes Open Educational Resources vector graphics library template SVG
				exported from Adobe Illustrator and produces composite person-1-front character
				in default, neutral pose.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" xml:space="default" />
	<xsl:include href="copy.xslt" />	
	<xsl:template match="/">
		<xsl:apply-templates />
	</xsl:template>
</xsl:stylesheet>