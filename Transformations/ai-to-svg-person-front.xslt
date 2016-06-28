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
				produces composite person characters with jointed components (head, limbs) attached.</xd:p>
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
		<xsl:variable name="component" select="$personComponentsDoc/per:personComponents/per:component[@id =
			$gid]"/>
		<xsl:variable name="newComponent" select="$component/per:twin"/>
		<xsl:variable name="newComponentId" select="$newComponent/@id"/>
		<xsl:variable name="ball" select="svg:circle[@class = 'ball']"/>
		<xsl:variable name="socketId" select="$component/@socket"/><!-- lookup the object this component joins to -->
		<xsl:variable name="socket" select="//svg:g[@id = $socketId]/svg:circle" />
		<!--<xsl:variable name="socket" select="//svg:circle[@id = $socketId or ../svg:g/@id = $socketId]" />-->
		<xsl:variable name="x-offset" select="$newComponent/@x - $ball/@cx"/>
		<xsl:comment select="concat('component-detected, new component = ', $newComponentId)"/>
		<xsl:comment select="concat('$newComponent/@x = ', $newComponent/@x)"/>
		<xsl:comment select="concat('$ball/@cx = ', $ball/@cx)"/>
		<xsl:comment select="concat('$ball/@cy = ', $ball/@cy)"/>
		<xsl:comment select="concat('$socketId = ', $socketId)"/>
		<xsl:comment select="concat('$socket/@cx = ', $socket/@cx)"/>
		<xsl:comment select="concat('$socket/@cy = ', $socket/@cy)"/>
		<xsl:variable name="jointMoveX" select="$socket/@cx - $ball/@cx"/>
		<xsl:variable name="jointMoveY" select="$socket/@cy - $ball/@cy"/>
		<!-- Recreate the matched g element with the same id, and if it has a socket,
			add a transform attribute that moves the component so it joins its parent,
			adding a neutral rotate transformation that can be used in future to rotate
			the part around its ball-socket joint.
		-->
		<xsl:element name="g">
			<xsl:attribute name="id" select="$gid" />
			<xsl:if test="$socket">
				<xsl:attribute name="transform" select="concat('translate(', $jointMoveX, ', ' , $jointMoveY, ') rotate(0, ',
					$ball/@cx,', ', $ball/@cy, ')')" />
			</xsl:if>
			<xsl:apply-templates />
		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
