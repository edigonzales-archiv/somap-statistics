<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.opengis.net/wms" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" version="3.0">
  <xsl:output method="text" indent="no"/>
  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="result">
    <xsl:apply-templates select="row[label='ADD_LAYER']"/>
  </xsl:template>

  <xsl:template match="row">
    <xsl:apply-templates select="subtable"/>
  </xsl:template>

  <xsl:template match="subtable">
    <xsl:for-each select="row">
      <xsl:value-of select="parse-json(label)" /><xsl:text>
      
      </xsl:text>
    </xsl:for-each>
  </xsl:template>




</xsl:stylesheet>
