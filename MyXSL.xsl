<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
    <h2><xsl:apply-templates select="title"/></h2>
    
    <html>
        <body>
            <h1><i>Pick your favorite.</i></h1>
            <table border="1">
            <tr bgcolor="#9acd32">
                <th>Milk Sweets</th>
                <th>Dryfruit Sweets</th>
                <th>Regular Sweets</th>
                <th>Special Sweets</th>
                <th>Festive</th>
                <th>Holige</th>
                <th>Tamilnadu</th>
            </tr>
             <xsl:for-each select="/sweetshop/sweet">
             <xsl:sort select="ingredientsNumber" data-type="number" order="ASCENDING" />
             <xsl:if test="priceRange &gt; 600">
            <tr>
                 <td><xsl:value-of select="burfi1" /></td>
                 <td><xsl:value-of select="burfi2" /></td>
                 <td><xsl:value-of select="origin" /></td>
                 <td><xsl:value-of select="priceRange" /></td>
                 <td><xsl:value-of select="ingredientsNumber" /></td>
                 <td><xsl:value-of select="ingredients" /></td>
                 <td><xsl:value-of select="workersRequired" /></td>
                 <td><xsl:value-of select="dailyRequirement" /></td>
            </tr> 
            </xsl:if>    
            </xsl:for-each>
            </table>
            <table border="1"> 
                <tr bgcolor="#9acd32"><th>Snacks</th></tr>
             <xsl:for-each select="/sweetshop/snacks">
             <tr>
                 <td><xsl:value-of select="type1" /></td>
                 <td><xsl:value-of select="type2" /></td>
                 <td><xsl:value-of select="priceRange" /></td>
                 <td><xsl:value-of select="ingredientsNumber" /></td>
                 <td><xsl:value-of select="ingredients" /></td>
                 <td><xsl:value-of select="workersRequired" /></td>
                 <td><xsl:value-of select="dailyRequirement" /></td>
            </tr> 
            </xsl:for-each>
            
            </table>
        </body>
    </html>    
        
        
    </xsl:template>
    
</xsl:stylesheet>