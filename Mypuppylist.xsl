<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">


        <table id="results" border="1" class="indent table-hover">
            <thead>
                <tr>
                    <th colspan="12"> Dogs Selection </th>
                </tr>
                <tr>
                    <th colspan="7"> Name</th>
                    <th>Description</th>
                    <th>Breed</th>
                    <th>Age</th>
                    <th>Sex</th>

                </tr>
            </thead>

            <tbody>

                <xsl:for-each select="/puppyListing/puppy">
                    <tr id="{position()}">
                        <td align="right" colspan="6">

                            <xsl:value-of select="name" />
                            <button type="button" class="btn btn-outline-success btn-sm">Adopt</button>
                            
                            <td align="center"></td>

                        </td>
                        <td>
                            <input name="item0" type="checkbox" />
                        </td>>

                        <td>
                            <xsl:value-of select="description" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="breed" />
                        </td>
                        <td>
                            <xsl:value-of select="age" />
                        </td>

                        <td>
                            <xsl:value-of select="sex" />
                        </td>


                    </tr>
                </xsl:for-each>

            </tbody>
        </table>


    </xsl:template>
</xsl:stylesheet>

