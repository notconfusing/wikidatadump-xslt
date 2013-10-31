<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mw="http://www.mediawiki.org/xml/export-0.8/">
  <xsl:output method="text"/>

<xsl:template match="/mw:mediawiki">
<xsl:text>{
</xsl:text>
<xsl:apply-templates select="mw:page"/>
<xsl:text>
}</xsl:text>
</xsl:template>
  <xsl:template match="mw:page">
  <xsl:if test="starts-with(mw:title, 'Q')">
    <xsl:text>"</xsl:text><xsl:value-of select="mw:title"/><xsl:text>" : </xsl:text> <xsl:value-of select="mw:revision/mw:text"/> <xsl:text></xsl:text><xsl:if test="position()!=last()"><xsl:text>, 
</xsl:text></xsl:if>
    </xsl:if>
  </xsl:template>

<!--
   <xsl:template match='mw:title'>
     <xsl:value-of select="."/>
     <xsl:text>
</xsl:text>
   </xsl:template>
-->

</xsl:stylesheet>