<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <body>
                <xsl:call-template name="masters"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="repairs">
        <div style="padding-left: 15px;padding-top: 10px;">
            <h3>Ремонт</h3>
            <xsl:for-each select="repairs/repair">
                <p/>
                <table border="1" cellspacing="1" cellpadding="10" style="text-align: center;">
                    <tr>
                        <td style="width:150px">repair_id</td>
                        <td style="width:150px">date</td>
                        <td style="width:150px">type</td>
                        <td style="width:150px">price</td>
                    </tr>
                    <tr>
                        <td style="width:150px;height:50px">
                            <xsl:value-of select="@repair_id"/>
                        </td>
                        <td style="width:150px;height:50px">
                            <xsl:value-of select="date"/>
                        </td>
                        <td style="width:150px;height:50px">
                            <xsl:value-of select="type"/>
                        </td>
                        <td style="width:150px;height:50px">
                            <xsl:value-of select="price"/>
                        </td>
                    </tr>
                </table>
            </xsl:for-each>
        </div>
    </xsl:template>

    <xsl:template name="items">
        <div style="padding-left: 15px;padding-top: 10px;">
            <xsl:for-each select="items/item">
                <h3>Прибор</h3>
                <table border="1" cellspacing="1" cellpadding="10" style="text-align: center;">
                    <tr>
                        <td style="width:100px">item_id</td>
                        <td style="width:100px">item_name</td>
                        <td style="width:100px">item_type</td>
                        <td style="width:100px">production_date</td>
                        <td style="width:100px">responsible_person</td>
                    </tr>
                    <tr>
                        <td style="width:100px">
                            <xsl:value-of select="@item_id"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="item_name"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="item_type"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="production_date"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="responsible_person"/>
                        </td>
                    </tr>
                </table>
                <xsl:call-template name="repairs"/>
                <p/>
            </xsl:for-each>
        </div>
    </xsl:template>

    <xsl:template name="masters">
        <h1>Мастерская</h1>
        <xsl:for-each select="//master">
            <div style="padding-left: 15px;padding-top: 10px;">
                <h2>Мастер</h2>
                <table border="1" cellspacing="1" cellpadding="10" style="text-align: center;">
                    <tr>
                        <td style="width:100px">master_id</td>
                        <td style="width:100px">surename</td>
                        <td style="width:100px">name</td>
                        <td style="width:100px">middle_name</td>
                        <td style="width:100px">level</td>
                        <td style="width:100px">reqruitment_date</td>
                    </tr>
                    <tr>
                        <td style="width:100px">
                            <xsl:value-of select="@master_id"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="surename"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="name"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="middle_name"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="level"/>
                        </td>
                        <td style="width:100px">
                            <xsl:value-of select="reqruitment_date"/>
                        </td>
                    </tr>
                </table>
                <xsl:call-template name="items"/>
            </div>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>

