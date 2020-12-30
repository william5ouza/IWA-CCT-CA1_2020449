<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="5">Services menu</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>name</th>
                    <th>phone</th>
                    <th>location</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/servicesmenu/area">
                    <tr>
                        <td colspan="5">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="client">
                        <tr id="{position()}">
                            <xsl:attribute name="priority">
                                <xsl:value-of select="boolean(@vegetarian)" />
                            </xsl:attribute>
                            <td align="center">
                                <input name="item0" type="checkbox" />
                            </td>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="phone" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="location" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="price" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>