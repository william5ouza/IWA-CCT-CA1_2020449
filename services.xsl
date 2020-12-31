<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="menuTable" border="1" class="indent">
            <thead>
                <tr>
                    <th colspan="5">Quotation list</th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Area</th>
                    <th>Note</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/servicesmenu/section">
                    <tr>
                        <td colspan="3">
                            <xsl:value-of select="@name" />
                        </td>
                    </tr>
                    <xsl:for-each select="entree">
                        <tr id="{position()}">
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
                                <xsl:value-of select="area" />
                            </td>
                            <td align="right">
                                <xsl:value-of select="note" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>