<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <table id="myTable" class="table table-striped">
            <thead>
                <tr>
                    <th colspan="5"></th>
                </tr>
                <tr>
                    <th>Select</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Location</th>
                    <th>Message</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="/servicesmenu/area">
                    <tr>
                        <td colspan="3">

                            <xsl:value-of select="@name"/>
                        </td>
                    </tr>
                    <xsl:for-each select="client">
                        <tr id="{position()}">
                                <td align="center">
                                <input name="item" type="checkbox" />
                            </td>
                            <td align="left">
                                <xsl:value-of select="name" />
                            </td>
                            <td align="left">
                                <xsl:value-of select="phone      " />
                            </td>
                            <td align="left">
                                <xsl:value-of select="location" />
                            </td>
                            <td align="left">
                                <xsl:value-of select="message" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>