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
				adds reflected left side components to person characters based on their right side.</xd:p>
		</xd:desc>
	</xd:doc>
	<xsl:output indent="yes" media-type="image/svg+xml" method="xml" xml:space="default"/>
	<xsl:include href="copy.xslt"/>
	<xsl:param name="personComponentsUrl" select="'personComponents.xml'"/>
	<xsl:variable name="personComponentsDoc" select="document($personComponentsUrl)"/>
	<xsl:template match="/">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="svg:g[@id = $personComponentsDoc/per:personComponents/per:component[per:twin]/@id]">
		<xsl:variable name="gid" select="./@id"/>
		<xsl:comment select="concat('gid (reflection twin) = ', $gid)"/>
		<xsl:variable name="component" select="$personComponentsDoc/per:personComponents/per:component[@id =
			$gid]"/>
		<xsl:variable name="newComponent" select="$component/per:twin"/>
		<xsl:variable name="newComponentId" select="$newComponent/@id"/>
		<!-- Assume for now that the only case is a left-copy of a right-designated component. -->
		<xsl:variable name="ball" select="svg:circle[@class = 'ball']"/>
		<xsl:variable name="socketId" select="$component/@socket"/><!-- lookup the object this component joins to -->
		<xsl:variable name="socket" select="//svg:g[@id = $socketId]/svg:circle" />
		<xsl:variable name="x-offset" select="$newComponent/@x - $ball/@cx"/>
		<xsl:variable name="jointMoveX" select="$socket/@cx - $ball/@cx"/>
		<xsl:variable name="jointMoveY" select="$socket/@cy - $ball/@cy"/>
		<xsl:element name="g">
			<xsl:attribute name="id" select="$gid" />
			<xsl:if test="$socket">
				<xsl:attribute name="transform" select="concat('translate(', $jointMoveX, ' ' , $jointMoveY, ')')" />
			</xsl:if>
			<!--<xsl:copy-of select="./*" />-->
			<xsl:apply-templates />
		</xsl:element>
		<!-- transformed copy here -->
		<xsl:variable name="totalXtransforms">
			<xsl:for-each select="ancestor-or-self::*/@transform[concat(., 'translate')]">
				<xsl:value-of select="concat(substring-before(substring-after(.,'translate('), ','), ' ')" />
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="sumTotalXtransforms">
			<xsl:sequence select="sum(for $s in tokenize(normalize-space($totalXtransforms), '\s+')
				return number($s)
				)" />
		</xsl:variable>
		<xsl:comment select="concat('$totalXtransforms = ', $totalXtransforms)" />
		<xsl:comment select="concat('$sumTotalXtransforms = ', $sumTotalXtransforms)" />
		<!--<xsl:if test="contains($gid, 'arm') or contains($gid, 'leg')">-->
		<xsl:if test="$newComponent">
			<!-- thanks to Dr. Olaf Hoffmann and Juergen Roethig of the www-svg@w3.org mailing list for explaining this -->
			<use xlink:href="#{$gid}" id="{$newComponentId}" transform="translate({$newComponent/@x - $sumTotalXtransforms}, 0) scale(-1 1)
				translate(-{$newComponent/@x - $sumTotalXtransforms}, 0)" />
		</xsl:if>
		<!--<xsl:apply-templates />-->
	</xsl:template>
</xsl:stylesheet>
