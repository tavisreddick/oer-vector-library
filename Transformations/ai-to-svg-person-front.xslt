<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns="http://www.w3.org/2000/svg"
	xmlns:svg="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:per="http://www.sleepingdog.org.uk/oer-vector-library/person-components" exclude-result-prefixes="xs xd svg per"
	version="2.0">
	<xd:doc scope="stylesheet">
		<xd:desc>
			<xd:p><xd:b>Created on:</xd:b> 2016-06-19</xd:p>
			<xd:p><xd:b>Author:</xd:b> developer@sleepingdog.org.uk</xd:p>
			<xd:p>Takes Open Educational Resources vector graphics library template SVG exported from Adobe Illustrator and
				produces composite person-1-front character in default, neutral pose.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" xml:space="default"/>
	<xsl:include href="copy.xslt"/>
	<xsl:param name="personComponentsUrl" select="'personComponents.xml'"/>
	<xsl:variable name="personComponentsDoc" select="document($personComponentsUrl)"/>
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="svg:g[@id = $personComponentsDoc/per:personComponents/per:component/@id]">
		<xsl:variable name="gid" select="./@id"/>
		<xsl:comment select="concat('gid = ', $gid)"/>
		<xsl:variable name="newComponent"
			select="
				$personComponentsDoc/per:personComponents/per:component[@id =
				$gid]/per:twin"/>
		<xsl:variable name="newComponentId" select="$newComponent/@id"/>
		<!-- Assume for now that the only case is a left-copy of a right-designated component. -->
		<xsl:variable name="ball" select="../svg:*[@class = 'ball'][1]"/>
		<xsl:variable name="x-offset" select="$newComponent/@x - $ball/@cx"/>
		<xsl:comment select="concat('component-detected, new component = ', $newComponentId)"/>
		<xsl:comment select="concat('$newComponent/@x = ', $newComponent/@x)"/>
		<xsl:comment select="concat('$ball/@cx = ', $ball/@cx)"/>
		<xsl:copy-of select="."/>
		<!-- transformed copy here -->
		<xsl:if test="contains($gid, 'arm') or contains($gid, 'leg')">
			<!-- thanks to Dr. Olaf Hoffmann and Juergen Roethig of the www-svg@w3.org mailing list for explaining this -->
			<use xlink:href="#{$gid}" id="{$newComponentId}" transform="translate({$newComponent/@x} 0) scale(-1 1) translate(-{$newComponent/@x} 0)" />
		</xsl:if>
		<!--<xsl:apply-templates />-->
	</xsl:template>
</xsl:stylesheet>
