<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body >
        <h1>Product Information</h1>
        <table border="1" width="50%">
        <tr bgcolor="#990000">
        	<th>ID</th>
         	<th>NAME</th>
          	<th>PRICE</th>
        </tr>
        <xsl:for-each select="products/product">
        <!--<xsl:sort select="name"/>-->
       <!-- <xsl:if test="price &gt; 5">-->
            <tr bgcolor="#006600">
            <td><xsl:value-of select="id"></xsl:value-of></td>
            <xsl:choose>
                <xsl:when test="price &gt; 15">
                <td bgcolor="orange"><xsl:value-of select="name"></xsl:value-of></td>
                </xsl:when>
                <xsl:otherwise>
                  <td bgcolor="pink"><xsl:value-of select="name"></xsl:value-of></td>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="price"></xsl:value-of></td>
            </tr>
       <!-- </xsl:if>-->
        </xsl:for-each>
        </table> 
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
