<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ships</title>
            </head>
            <body>
                <h2>Items de la orden <xsl:value-of select="shiporder/@orderid"/></h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Item</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="shiporder/item">
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
