<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Applications</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
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
          .accepted {
            background-color: #d4edda;
            color: green;
          }
          .rejected {
            background-color: #f8d7da;
            color: red;
          }
        </style>
      </head>
      <body>
        <h1>Student Applications Status</h1>
        <table>
          <tr>
            <th>Name</th>
            <th>Grade</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="applications/student">
            <xsl:variable name="grade" select="grade" />
            <xsl:choose>
              <!-- If grade is A or A+ (accepted) -->
              <xsl:when test="$grade = 'A' or $grade = 'A+'">
                <tr class="accepted">
                  <td><xsl:value-of select="name" /></td>
                  <td><xsl:value-of select="grade" /></td>
                  <td>Accepted</td>
                </tr>
              </xsl:when>
              <!-- If grade is C (rejected) -->
              <xsl:when test="$grade = 'C'">
                <tr class="rejected">
                  <td><xsl:value-of select="name" /></td>
                  <td><xsl:value-of select="grade" /></td>
                  <td>Rejected</td>
                </tr>
              </xsl:when>
              <!-- Default status is pending for other grades -->
              <xsl:otherwise>
                <tr>
                  <td><xsl:value-of select="name" /></td>
                  <td><xsl:value-of select="grade" /></td>
                  <td>Pending</td>
                </tr>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
