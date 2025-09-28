<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2 align="center">My BOOK Collection</h2>
        <table border="1" align="center" cellpadding="5" cellspacing="0">
          <tr bgcolor="gray">
            <th><font color="white">BOOK_NAME</font></th>
            <th><font color="white">Author</font></th>
            <th><font color="white">ISBN</font></th>
            <th><font color="white">Publisher</font></th>
            <th><font color="white">Edition</font></th>
            <th><font color="white">Price</font></th>
          </tr>

          <xsl:for-each select="BOOKS/INFORMATION/Book">
            <tr>
              <td><xsl:value-of select="book_name"/></td>
              <td bgcolor="black"><b><font color="white"><xsl:value-of select="Author_name"/></font></b></td>
              <td><xsl:value-of select="ISBN_number"/></td>
              <td><xsl:value-of select="publisher"/></td>
              <td><xsl:value-of select="Edition"/></td>
              <td><xsl:value-of select="Price"/></td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
