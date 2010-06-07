<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsf2="http://schemas.microsoft.com/office/infopath/2006/solutionDefinition/extensions" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:openmrs="http://staging.pih-emr.org:8080/openmrs/moduleServlet/formentry/forms/schema/112-92" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2006-07-25T11:22:21" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="form">
		<html xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:ns1="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:openmrs="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2005-08-07T13:39:21" xmlns:d="http://schemas.microsoft.com/office/infopath/2003/ado/dataFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution">
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
			</head>
			<body>
                <div style="TEXT-ALIGN: center; WIDTH: 97px; FONT-FAMILY: Arial; WHITE-SPACE: nowrap; FONT-SIZE: small" class="xdDTPicker" title="Every form must have a date assigned to it!  Please enter one by clicking on the calendar to the right." noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL2">
                    <span hideFocus="1" class="xdDTText xdBehavior_GTFormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="encounter/encounter.encounter_datetime" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;datetime&quot;,&quot;dateFormat:dd MMMM, yyyy;timeFormat:none;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
                        <xsl:attribute name="xd:num">
                            <xsl:value-of select="encounter/encounter.encounter_datetime"/>
                        </xsl:attribute>
                        <xsl:choose>
                            <xsl:when test="not(string(encounter/encounter.encounter_datetime))">
                                <xsl:attribute name="xd:ghosted">true</xsl:attribute>Click -&gt;</xsl:when>
                            <xsl:when test="function-available('xdFormatting:formatString')">
                                <xsl:value-of select="xdFormatting:formatString(encounter/encounter.encounter_datetime,&quot;datetime&quot;,&quot;dateFormat:dd MMMM, yyyy;timeFormat:none;&quot;)"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="encounter/encounter.encounter_datetime"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </span>
                    <button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
                        <img src="res://infopath.exe/calendar.gif" Linked="true"/>
                    </button>
                </div>
                <div>
                    <em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1139" xd:boundProp="xd:value" xd:onValue="30" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
                        <xsl:attribute name="xd:value">
                            <xsl:value-of select="encounter/encounter.location_id"/>
                        </xsl:attribute>
                        <xsl:if test="encounter/encounter.location_id=&quot;30&quot;">
                            <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                        </xsl:if>
                    </input>
                    </em>
                    <font face="Arial">Rusumo </font>
                    <em>
                        <strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1140" xd:boundProp="xd:value" xd:onValue="27" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
                            <xsl:attribute name="xd:value">
                                <xsl:value-of select="encounter/encounter.location_id"/>
                            </xsl:attribute>
                            <xsl:if test="encounter/encounter.location_id=&quot;27&quot;">
                                <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                            </xsl:if>
                        </input>
                        </strong>
                    </em>
                    <font face="Arial">Mulindi        </font>
                    <em>
                        <strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1141" xd:boundProp="xd:value" xd:onValue="28" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
                            <xsl:attribute name="xd:value">
                                <xsl:value-of select="encounter/encounter.location_id"/>
                            </xsl:attribute>
                            <xsl:if test="encounter/encounter.location_id=&quot;28&quot;">
                                <xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
                            </xsl:if>
                        </input>
                        </strong>
                    </em>
                    <font face="Arial">Rukira      </font>
                </div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>