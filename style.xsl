<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
<xsl:template  match="/">
	<h1>Employee data</h1>
	<table border="1" >
		<tr>	
			<th bgcolor="#f0902e">name</th>
			<th bgcolor="#f0902e">phone home</th>
			<th bgcolor="#f0902e">phone work</th>
			<th bgcolor="#f0902e">phone mobile</th>
			<th bgcolor="#f0902e">address</th>
			<th bgcolor="#f0902e">email</th>
		</tr>
	<xsl:for-each select="employees/employee">
		<tr>
			<td bgcolor="#d31919" border="1"><xsl:value-of select="name"/></td>
			<td border="1"><xsl:value-of select="phones/phone[@type='home']"/></td>
			<td border="1"><xsl:value-of select="phones/phone[@type='work']"/></td>
			<td border="1"><xsl:value-of select="phones/phone[@type='mobile']"/></td>
			<td border="1"><xsl:value-of select="addresses/address"/></td>
			<td border="1"><xsl:value-of select="email"/></td>
		</tr>
	</xsl:for-each>
	</table>
</xsl:template>
</xsl:stylesheet>