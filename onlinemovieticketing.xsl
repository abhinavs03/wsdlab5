<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mt="http://www.example.com/onlinemovieticketing"
                exclude-result-prefixes="mt">

    <!-- Define the HTML output format -->
    <xsl:output method="html" indent="yes"/>

    <!-- Template for the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Movie Ticketing System</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Movie Ticketing System</h1>
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Showtime</th>
                        <th>Price</th>
                        <th>Available Seats</th>
                    </tr>
                    <xsl:for-each select="mt:movies/mt:movie">
                        <tr>
                            <td><xsl:value-of select="mt:title"/></td>
                            <td><xsl:value-of select="mt:showtime"/></td>
                            <td><xsl:value-of select="mt:price"/></td>
                            <td><xsl:value-of select="mt:availableSeats"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
