<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8" />
				<title>Książka adresowa</title>
			</head>
			<body>
				<h1>Książka adresowa (v2)</h1>
				<ul>
					<xsl:apply-templates select="kontakty/kontakt" />
				</ul>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="kontakt[@typ='prywatny']">
<!--
		<li>
			<xsl:value-of select="imie" />
			&#160;
			<xsl:value-of select="nazwisko" />
		</li>
-->
		<h2>
    	  <xsl:value-of select="imie"></xsl:value-of>&#160;
    	  <xsl:value-of select="nazwisko"></xsl:value-of>
    	</h2>
    	<xsl:if test="tel!=''">
    	<p>telefon: <xsl:value-of select="tel"></xsl:value-of></p>
    	</xsl:if>
    	<xsl:if test="email!=''">
    	<p>email: <xsl:value-of select="email"></xsl:value-of></p>
    	</xsl:if>
    	<xsl:if test="fax!=''">
    	<p>fax: <xsl:value-of select="fax"></xsl:value-of></p>
    	</xsl:if>
    	<xsl:if test="strona_www!=''">
    	<p>www: <xsl:value-of select="strona_www"></xsl:value-of></p>
    	</xsl:if>
    	<xsl:if test="skype!=''">
    	<p>skype: <xsl:value-of select="skype"></xsl:value-of></p>
    	</xsl:if>
    	<xsl:if test="facebook!=''">
    	<p>facebook: <xsl:value-of select="facebook"></xsl:value-of></p>
    	</xsl:if>
    	&#160;
	</xsl:template>

	<xsl:template match="kontakt[@typ='firmowy']">
		
			<!--<h1><a href="{firma/strona_www}"><xsl:value-of select="firma/nazwa" /></a></h1>-->
			<h1><xsl:value-of select="firma/nazwa" /></h1>
			<a href="{firma/strona_www}"><img src="{firma/logo}" width="200px"/></a>
			<p>Adres:</p>
			<p style="margin-left: 30px">Ulica <xsl:value-of select="firma/ulica"></xsl:value-of>&#160;<xsl:value-of select="firma/nr"></xsl:value-of></p>
			<p style="margin-left: 30px"><xsl:value-of select="firma/kod"></xsl:value-of>&#160;<xsl:value-of select="firma/miasto"></xsl:value-of></p>
			<p style="margin-left: 30px">NIP: <xsl:value-of select="firma/NIP"></xsl:value-of></p>
<!-- 			
			<xsl:element name="a">
				<xsl:attribute name="href">
				  <xsl:value-of select="firma/strona_www" />
				</xsl:attribute>
				Firma:  <xsl:value-of select="firma/nazwa" />
			</xsl:element>
 -->			
			<h2>Właściciel:<span style="color:red">&#160;
				<xsl:value-of select="nazwisko" />
				&#160;
				<xsl:value-of select="imie" />
			</span></h2>
			<xsl:if test="tel!=''">
	    	<p>telefon: <xsl:value-of select="tel"></xsl:value-of></p>
	    	</xsl:if>
	    	<xsl:if test="email!=''">
	    	<p>email: <xsl:value-of select="email"></xsl:value-of></p>
	    	</xsl:if>
	    	<xsl:if test="fax!=''">
	    	<p>fax: <xsl:value-of select="fax"></xsl:value-of></p>
	    	</xsl:if>
	    	<xsl:if test="strona_www!=''">
	    	<p>www: <xsl:value-of select="strona_www"></xsl:value-of></p>
	    	</xsl:if>
	    	<xsl:if test="skype!=''">
	    	<p>skype: <xsl:value-of select="skype"></xsl:value-of></p>
	    	</xsl:if>
	    	<xsl:if test="facebook!=''">
	    	<p>facebook: <xsl:value-of select="facebook"></xsl:value-of></p>
	    	</xsl:if>
	    	&#160;
		
	</xsl:template>

</xsl:stylesheet>