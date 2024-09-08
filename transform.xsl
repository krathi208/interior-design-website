<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>WeDesign - Project Data</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
                <style>
                    body {
                        background-color: #f8f9fa;
                        color: #333;
                        margin-top: 50px;
                    }
                    h2 {
                        text-align: center;
                        font-weight: bold;
                        margin-bottom: 30px;
                    }
                    .container {
                        margin-top: 50px;
                    }
                    .table thead {
                        background-color: #343a40;
                        color: white;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h2>WeDesign Projects</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Project Name</th>
                                <th>Client Name</th>
                                <th>Budget (USD)</th>
                                <th>Location</th>
                                <th>Designer</th>
                                <th>Style</th>
                                <th>Description</th>
                                <th>Duration (Days)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="WeDesign/Project">
                                <tr>
                                    <td><xsl:value-of select="ProjectName"/></td>
                                    <td><xsl:value-of select="ClientName"/></td>
                                    <td><xsl:value-of select="Budget"/></td>
                                    <td><xsl:value-of select="Location"/></td>
                                    <td><xsl:value-of select="Designer"/></td>
                                    <td><xsl:value-of select="Style"/></td>
                                    <td><xsl:value-of select="Description"/></td>
                                    <td><xsl:value-of select="Duration"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
