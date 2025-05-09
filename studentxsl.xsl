<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Grades</title>
        <style>
          body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #f0f4f8;
            padding: 30px;
          }
          h1 {
            color: #333;
          }
          table {
            width: 60%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
          }
          th, td {
            border: 1px solid #bbb;
            padding: 10px;
            text-align: left;
          }
          th {
            background-color: #4CAF50;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <h1>Student Grades Report</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Subject</th>
            <th>Grade</th>
          </tr>
          <xsl:for-each select="school/student">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="subject"/></td>
              <td><xsl:value-of select="grade"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
