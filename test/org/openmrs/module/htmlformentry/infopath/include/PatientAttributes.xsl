<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsf2="http://schemas.microsoft.com/office/infopath/2006/solutionDefinition/extensions" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:openmrs="http://staging.pih-emr.org:8080/openmrs/moduleServlet/formentry/forms/schema/112-92" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2006-07-25T11:22:21" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="form">
		<html xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:ns1="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:openmrs="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2005-08-07T13:39:21" xmlns:d="http://schemas.microsoft.com/office/infopath/2003/ado/dataFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution">
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
			</head>
			<body>
                <span hideFocus="1" class="xdTextBox " title="" tabIndex="-1" xd:disableEditing="yes" xd:binding="patient/patient.medical_record_number" xd:xctname="PlainText" xd:CtrlId="CTRL7" style="TEXT-ALIGN: center; FONT-STYLE: normal; WIDTH: 161px; FONT-FAMILY: Arial; WORD-WRAP: normal; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: medium; FONT-WEIGHT: bold; TEXT-DECORATION: none">
                    <xsl:value-of select="patient/patient.medical_record_number"/>
				</span>
                <div style="LINE-HEIGHT: 115%; MARGIN-TOP: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; MARGIN-BOTTOM: 0pt; FONT-SIZE: 11pt">
                    <span style="FONT-SIZE: 12pt">
                        <font face="Arial">
                            <font size="2">
                                <font face="Arial">
                                    <strong>Prénom/</strong>
                                    <font color="#808080">
                                        <em>First name</em>
                                    </font>:  </font>
                            </font><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:disableEditing="yes" xd:binding="patient/patient.given_name" xd:xctname="PlainText" xd:CtrlId="CTRL5" style="FONT-STYLE: normal; WIDTH: 130px; FONT-FAMILY: Arial; WORD-WRAP: normal; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold; TEXT-DECORATION: none">
                                <xsl:value-of select="patient/patient.given_name"/>
                            </span>
                        </font>
                    </span>
                </div>
                <div>
                    <font face="Arial">
                        <font face="Arial">
                            <strong>Nom/ </strong>
                            <font color="#808080">
                                <em>Last name</em>
                            </font>: </font>
                        <font size="2"><span hideFocus="1" class="xdTextBox" title="" tabIndex="-1" xd:disableEditing="yes" xd:binding="patient/patient.family_name" xd:xctname="PlainText" xd:CtrlId="CTRL4" style="FONT-STYLE: normal; WIDTH: 130px; FONT-FAMILY: Arial; WORD-WRAP: normal; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: small; FONT-WEIGHT: bold; TEXT-DECORATION: none">
                                <xsl:value-of select="patient/patient.family_name"/>
                            </span>
                            <font face="Arial">     </font>
                        </font>
                    </font>
                </div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
