<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsf2="http://schemas.microsoft.com/office/infopath/2006/solutionDefinition/extensions" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:openmrs="http://staging.pih-emr.org:8080/openmrs/moduleServlet/formentry/forms/schema/112-92" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2006-07-25T11:22:21" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="form">
		<html xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:ns1="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:openmrs="http://schema.iukenya.org/2006/AMRS/FormEntry/15" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2005-08-07T13:39:21" xmlns:d="http://schemas.microsoft.com/office/infopath/2003/ado/dataFields" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution">
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdSection{border:1pt solid #FFFFFF;margin:6px 0px 6px 0px;padding:1px 1px 1px 5px;} 		.xdRepeatingSection{border:1pt solid #FFFFFF;margin:6px 0px 6px 0px;padding:1px 1px 1px 5px;} 		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:18px;width:20px;behavior: url(#default#DTPicker);}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:18px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; BORDER-TOP: medium none; BORDER-RIGHT: medium none
}
TABLE.msoUcTable TD {
	BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid; BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style languageStyle="languageStyle">BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
TABLE {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
SELECT {
	FONT-SIZE: 10pt; FONT-FAMILY: Verdana
}
.optionalPlaceholder {
	PADDING-LEFT: 20px; FONT-WEIGHT: normal; FONT-SIZE: xx-small; BEHAVIOR: url(#default#xOptional); COLOR: #333333; FONT-STYLE: normal; FONT-FAMILY: Verdana; TEXT-DECORATION: none
}
.langFont {
	FONT-FAMILY: Verdana
}
.defaultInDocUI {
	FONT-SIZE: xx-small; FONT-FAMILY: Verdana
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
			</head>
			<body>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 934px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 88px"></col>
							<col style="WIDTH: 296px"></col>
							<col style="WIDTH: 4px"></col>
							<col style="WIDTH: 546px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div>
										<font face="Arial">
											<font face="Arial">
												<strong>IMB ID:</strong>
											</font><span hideFocus="1" class="xdTextBox " title="" tabIndex="-1" xd:disableEditing="yes" xd:binding="patient/patient.medical_record_number" xd:xctname="PlainText" xd:CtrlId="CTRL7" style="TEXT-ALIGN: center; FONT-STYLE: normal; WIDTH: 161px; FONT-FAMILY: Arial; WORD-WRAP: normal; WHITE-SPACE: nowrap; COLOR: #000000; FONT-SIZE: medium; FONT-WEIGHT: bold; TEXT-DECORATION: none">
												<xsl:value-of select="patient/patient.medical_record_number"/>
											</span>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div style="LINE-HEIGHT: 115%; MARGIN-TOP: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; MARGIN-BOTTOM: 0pt; FONT-SIZE: 11pt">
										<span style="FONT-SIZE: 12pt">
											<font face="Arial">
												<font face="Arial">
													<strong>Date:</strong>
												</font>
												<font face="Verdana"></font>
												<div style="TEXT-ALIGN: center; WIDTH: 97px; FONT-FAMILY: Arial; WHITE-SPACE: nowrap; FONT-SIZE: small" class="xdDTPicker" title="Every form must have a date assigned to it!  Please enter one by clicking on the calendar to the right." noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL2"><span hideFocus="1" class="xdDTText xdBehavior_GTFormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="encounter/encounter.encounter_datetime" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;datetime&quot;,&quot;dateFormat:dd MMMM, yyyy;timeFormat:none;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
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
											</font>
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
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
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
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
								</td>
							</tr>
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt">
									<span lang="EN">
										<div align="right">
											<font face="Arial">Consult-Cards-RW. V1.6akb.16Jul09</font>
										</div>
									</span>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 31px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<img style="WIDTH: 57px; FLOAT: left; HEIGHT: 60px" hspace="12" alt="Text Box:  " src="D9251811.gif" width="57" height="60" v:shapes="_x0000_s1026" xmlns:v="urn:v"/>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font style="FONT-SIZE: 16pt" face="Arial">Inshuti Mu </font>
										<font style="FONT-SIZE: 16pt" face="Arial">Buzima</font>
									</div>
									<div>
										<font style="FONT-SIZE: 16pt" face="Arial">PIH Rwanda</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div style="LINE-HEIGHT: 115%; MARGIN-TOP: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; MARGIN-BOTTOM: 0pt; FONT-SIZE: 11pt">
										<span style="FONT-SIZE: 12pt">
											<strong>
												<font face="Arial">Formulaire de consultation cardiologique/</font>
											</strong>
										</span>
									</div>
									<div style="LINE-HEIGHT: 115%; MARGIN-TOP: 0in; PADDING-LEFT: 0in; PADDING-RIGHT: 0in; MARGIN-BOTTOM: 0pt; FONT-SIZE: 11pt">
										<span style="FONT-SIZE: 12pt">
											<strong>
												<em>
													<font color="#808080" face="Arial">Cardiology Consultation Form</font>
												</em>
											</strong>
										</span>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 31px">
								<td colSpan="3" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<div>
												<font face="Arial">
													<span style="FONT-SIZE: 8pt">
														<strong>Clinique ou Hôpital/ </strong>
													</span>
													<em>
														<sub>
															<span style="FONT-SIZE: 7pt">
																<font color="#808080"></font>
															</span>
														</sub>
														<span style="FONT-SIZE: 8pt">
															<strong>
																<font color="#808080">Clinic </font>
															</strong>
														</span>
														<sub>
															<span style="FONT-SIZE: 8pt">
																<font color="#808080"></font>
															</span>
														</sub>
														<span style="FONT-SIZE: 8pt">
															<strong>
																<font color="#808080">or Hospital</font>
															</strong>
														</span>
													</em>
												</font>
											</div>
											<div>
												<font face="Arial">
													<span>
														<div>
															<div>
																<font face="Arial">
																	<font style="FONT-SIZE: 6pt"></font>
																</font>
															</div>
														</div>
													</span>
												</font>
											</div>
											<div>
												<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/patient_hospitalized/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1375" xd:boundProp="xd:value" xd:fixed="TRUE" xd:offValue="1066^NO^99DCT" xd:onValue="1065^YES^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/patient_hospitalized/value"/>
														</xsl:attribute>
														<xsl:if test="obs/patient_hospitalized/value=&quot;1065^YES^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<span>
														<font size="1" face="Arial">patient est hospitalisé/ <font style="FONT-SIZE: 8pt" color="#808080">
																<strong>
																	<em>patient is hospitalized </em>
																</strong>
															</font>
														</font>
													</span>
												</div>
											</div>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font>
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
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1142" xd:boundProp="xd:value" xd:onValue="25" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="encounter/encounter.location_id"/>
													</xsl:attribute>
													<xsl:if test="encounter/encounter.location_id=&quot;25&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em>
										<font face="Arial">Nyarabuye   </font>
										<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1147" xd:boundProp="xd:value" xd:onValue="37" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="encounter/encounter.location_id"/>
												</xsl:attribute>
												<xsl:if test="encounter/encounter.location_id=&quot;37&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</strong>
										<font face="Arial">Ndego</font>
									</div>
									<div>
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1150" xd:boundProp="xd:value" xd:onValue="38" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="encounter/encounter.location_id"/>
													</xsl:attribute>
													<xsl:if test="encounter/encounter.location_id=&quot;38&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em>
										<font face="Arial">Burera   </font>
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1144" xd:boundProp="xd:value" xd:onValue="26" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="encounter/encounter.location_id"/>
													</xsl:attribute>
													<xsl:if test="encounter/encounter.location_id=&quot;26&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em>
										<font face="Arial">Rwinkwavu   </font>
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1145" xd:boundProp="xd:value" xd:onValue="29" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="encounter/encounter.location_id"/>
													</xsl:attribute>
													<xsl:if test="encounter/encounter.location_id=&quot;29&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em>
										<font face="Arial">Kirehe      </font>
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(encounter/encounter.location_id)}" tabIndex="0" xd:binding="encounter/encounter.location_id" xd:xctname="OptionButton" xd:CtrlId="CTRL1146" xd:boundProp="xd:value" xd:onValue="1" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: x-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="encounter/encounter.location_id"/>
													</xsl:attribute>
													<xsl:if test="encounter/encounter.location_id=&quot;1&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/clinic_location_other/value" xd:xctname="PlainText" xd:CtrlId="CTRL1340" style="WIDTH: 20%; FONT-FAMILY: Arial">
											<xsl:value-of select="obs/clinic_location_other/value"/>
										</span>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 937px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 937px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">1. Historie de la maladie actuelle/ <font color="#808080">
													<em>History of present illness</em>
												</font>
											</font>
										</strong>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 2.25pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>A. Le patient a-t'il eu un <font face="Arial">é</font>chocardiogramme auparavant?/ <font color="#808080">
													<em>Has the patient had an echocardiogram previously?</em>
												</font>
											</strong>
										</font>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/previous_echocardiogram_taken/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/previous_echocardiogram_taken/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1312" xd:boundProp="xd:value" xd:onValue="1065^YES^99DCT" style="FONT-SIZE: 7pt; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/previous_echocardiogram_taken/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/previous_echocardiogram_taken/value=&quot;1065^YES^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
											<font face="Arial">
												<font style="FONT-SIZE: 7pt">oui/</font>
												<span lang="FR">
													<font style="FONT-SIZE: 7pt" color="#808080">
														<em>yes</em>
													</font>
												</span>
												<font style="FONT-SIZE: 7pt"> </font>
											</font>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/previous_echocardiogram_taken/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/previous_echocardiogram_taken/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1313" xd:boundProp="xd:value" xd:onValue="1066^NO^99DCT" style="FONT-SIZE: 7pt; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/previous_echocardiogram_taken/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/previous_echocardiogram_taken/value=&quot;1066^NO^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
											<font style="FONT-SIZE: 7pt">non/</font>
											<font style="FONT-SIZE: 7pt" color="#808080">
												<em>no </em>
											</font>
											<font style="FONT-SIZE: 7pt"></font>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/previous_echocardiogram_taken/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/previous_echocardiogram_taken/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1314" xd:boundProp="xd:value" style="FONT-SIZE: 7pt; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/previous_echocardiogram_taken/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/previous_echocardiogram_taken/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
											<font style="FONT-SIZE: 7pt">non spécifié/ </font>
											<em>
												<font style="FONT-SIZE: 7pt" color="#808080">not specified</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 17px">
								<td style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 2.25pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>B. <span>Sévérité des symptômes / <font color="#808080">
														<em>Severity of symptoms</em>
													</font>
												</span>
											</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 87px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1136" xd:boundProp="xd:value" xd:onValue="3135^NYHA CLASS 1^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3135^NYHA CLASS 1^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font face="Arial">
													<font size="1">NYHA classe I: (Asymptomatique) Pas de limitations d'activités/ <strong>
															<em>
																<font color="#808080">(Asymptomatic) No limitations on activity </font>
															</em>
														</strong>
													</font>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1457" xd:boundProp="xd:value" xd:onValue="3114^NYHA CLASS 1 AND 2^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3114^NYHA CLASS 1 AND 2^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font face="Arial">
													<font size="1">NYHA classe I/II</font>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1137" xd:boundProp="xd:value" xd:onValue="3136^NYHA CLASS 2^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3136^NYHA CLASS 2^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1" face="Arial">NYHA classe II: (Moins symptomatique) Limitation légère d'activit<font face="Arial">é</font>s. Symptômes seulement avec effort modéré comme en montant les collines/ </font>
											</div>
											<div>
												<font size="1" face="Arial">
													<strong>
														<em>
															<font color="#808080">(Mildly symptomatic) Symptoms only with moderate exertion, such as climbing a hill</font>
														</em>
													</strong>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1458" xd:boundProp="xd:value" xd:onValue="3999^NYHA CLASS 2 AND 3^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3999^NYHA CLASS 2 AND 3^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font face="Arial">
													<font size="1">NYHA classe II/III</font>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1138" xd:boundProp="xd:value" xd:onValue="3137^NYHA CLASS 3^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3137^NYHA CLASS 3^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1" face="Arial">NYHA classe III: (Modérément symptomatique) Limitation marquée d'activités.  Symptômes avec effort légère mais confortable au repos/</font>
											</div>
											<div>
												<font color="#808080" size="1">
													<strong>
														<em>(Moderately symptomatic) Symptoms with even light activity but comfortable at rest</em>
													</strong>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1459" xd:boundProp="xd:value" xd:onValue="6246^NYHA CLASS 3 AND 4^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;6246^NYHA CLASS 3 AND 4^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font face="Arial">
													<font size="1">NYHA classe III/IV</font>
												</font>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1135" xd:boundProp="xd:value" xd:onValue="3138^NYHA CLASS 4^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;3138^NYHA CLASS 4^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1">NYHA classe IV: (Sévèrement symptomatique) Symptômes avec toute activité, peut être symptomatique au repos/</font>
											</div>
											<div>
												<strong>
													<em>
														<font color="#808080" size="1">(Severely symptomatic) Symptoms </font>
													</em>
												</strong>
											</div>
											<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/history_of_present_illness/nyha_class/value)}" tabIndex="0" xd:binding="obs/history_of_present_illness/nyha_class/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1149" xd:boundProp="xd:value">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/history_of_present_illness/nyha_class/value"/>
													</xsl:attribute>
													<xsl:if test="obs/history_of_present_illness/nyha_class/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1">non spécifié/ <strong>
														<em>
															<font color="#808080">not specified</font>
														</em>
													</strong>
												</font>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 87px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<div>
												<strong>C. Donnez toute autre histoire utile</strong>/<font color="#808080">
													<em>Document any other relevant history:  </em>
												</font>
											</div>
											<div>
												<font color="#ff0000">
													<font face="Arial">
														<font color="#808080">
															<em> <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1358" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/history_of_present_illness/history_of_present_illness_duplicated_on_another_form/value=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
															</em>
														</font>
													</font>
													<font color="#ff0000">
														<font color="#000000">La m</font>
														<font face="Arial">
															<font color="#000000">ême que DDB/</font>
															<font color="#808080">
																<em>Same as DDB</em>
															</font>
														</font>
													</font>
												</font>
											</div>
											<div>
												<font color="#ff0000">
													<font face="Arial">
														<font color="#808080"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/history_of_present_illness/relevant_interval_history/value" xd:xctname="PlainText" xd:CtrlId="CTRL1359" style="WIDTH: 100%; HEIGHT: 56px">
																<xsl:value-of select="obs/history_of_present_illness/relevant_interval_history/value"/>
															</span>
														</font>
													</font>
												</font>
											</div>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 939px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext" width="undefined">
						<colgroup>
							<col style="WIDTH: 939px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>2. </strong>
											<span>
												<font face="Arial">
													<font style="FONT-SIZE: 9pt">
														<strong/>
													</font>
													<font style="FONT-SIZE: 9pt">Médicament reçus auparavant/ </font>
													<font style="FONT-SIZE: 9pt">
														<em>
															<font style="FONT-SIZE: 9pt" color="#808080"></font>
															<font style="FONT-SIZE: 9pt">Previous medications</font>
														</em>
													</font>
												</font>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial"> Assurez que les médicaments cardiaques sont correctes pour ce patient ONLINE</font>
										</strong>
									</div>
									<div>
										<font color="#ff0000">
											<span>
												<span>
													<font color="#000000">
														<font color="#000000">
															<em>
																<font face="Arial">
																	<strong> </strong>
																	<font color="#808080">Assure that the cardiac medications are correct on the patient's dashboard and regimen tab</font>
																</font>
															</em>
														</font>
													</font>
												</span>
											</span>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 937px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 87px"></col>
							<col style="WIDTH: 138px"></col>
							<col style="WIDTH: 118px"></col>
							<col style="WIDTH: 285px"></col>
							<col style="WIDTH: 309px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="5" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>3. Examen physique/ </strong>
											<font color="#808080">
												<em>Physical exam     <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/physical_exam_results_duplicated_on_another_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1342" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/physical_exam/physical_exam_results_duplicated_on_another_form/value"/>
														</xsl:attribute>
														<xsl:if test="obs/physical_exam/physical_exam_results_duplicated_on_another_form/value=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</em>
											</font>
										</font>
										<font color="#ff0000">
											<font color="#000000">La m</font>
											<font face="Arial">
												<font color="#000000">ême que DDB/</font>
												<strong/>
												<font color="#808080">
													<em>Same as DDB</em>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 41px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>Signes vitaux/ </strong>
										</font>
									</div>
									<div>
										<font face="Arial">
											<em>
												<font color="#808080">Vital Signs</font>
											</em>
											<strong>:</strong>
										</font>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial">T/A:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/systolic_blood_pressure/value" xd:xctname="PlainText" xd:CtrlId="CTRL664" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 33px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/systolic_blood_pressure/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/systolic_blood_pressure/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/systolic_blood_pressure/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">/</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/diastolic_blood_pressure/value" xd:xctname="PlainText" xd:CtrlId="CTRL665" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 39px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/diastolic_blood_pressure/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/diastolic_blood_pressure/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/diastolic_blood_pressure/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid">
									<div align="left">
										<font face="Arial">Pouls/<em>
												<font color="#808080">Pulse</font>
											</em>:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/pulse/value" xd:xctname="PlainText" xd:CtrlId="CTRL666" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 37px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/pulse/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/pulse/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/pulse/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial"></font>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial">Poids/ <em>
												<font color="#808080">Weight</font>
											</em>:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/weight_kg/value" xd:xctname="PlainText" xd:CtrlId="CTRL667" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 49px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/weight_kg/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/weight_kg/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/weight_kg/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">kg</font>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">Taille/ <em>
												<font color="#808080">Height</font>
											</em>:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/height_cm/value" xd:xctname="PlainText" xd:CtrlId="CTRL668" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 54px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/height_cm/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/height_cm/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/height_cm/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">cm</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 24px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">Si indiqué/</font>
									</div>
									<div>
										<font face="Arial">
											<em>
												<font color="#808080">If indicated</font>
											</em> </font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid">
									<div>
										<font face="Arial">Temp: </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/temperature_c/value" xd:xctname="PlainText" xd:CtrlId="CTRL255" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 67px; FONT-FAMILY: Arial; HEIGHT: 18px">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/temperature_c/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/temperature_c/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/temperature_c/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">˚C</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid">
									<div>
										<font face="Arial">FR/<font color="#808080">
												<em> RR</em>
											</font>
											<font color="#000000">:</font>
										</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/respiratory_rate/value" xd:xctname="PlainText" xd:CtrlId="CTRL256" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 67px; FONT-FAMILY: Arial; HEIGHT: 19px">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/respiratory_rate/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/respiratory_rate/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/respiratory_rate/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">Sa02</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/physical_exam/vital_signs_construct/blood_oxygen_saturation/value" xd:xctname="PlainText" xd:CtrlId="CTRL257" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 80px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/physical_exam/vital_signs_construct/blood_oxygen_saturation/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/physical_exam/vital_signs_construct/blood_oxygen_saturation/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/physical_exam/vital_signs_construct/blood_oxygen_saturation/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">%</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 17px">
								<td colSpan="3" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div align="center">
										<font face="Arial">
											<strong>Normaux/ </strong>
											<em>
												<font color="#808080">Normal</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div align="center">
										<font face="Arial">
											<strong>Anormaux/ </strong>
											<em>
												<font color="#808080">Abnormal</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>E.G./ </strong>
											<font color="#808080">
												<em>General</em>
											</font>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing" xd:xctname="CheckBox" xd:CtrlId="CTRL598" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/well_appearing=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>bonne apparence/ </font>
										<font color="#808080" face="Arial">
											<em>well appearing</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/cachectic" xd:xctname="CheckBox" xd:CtrlId="CTRL599" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/cachectic"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/cachectic=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>cachectique/<font color="#808080">
												<em> cachectic </em>
											</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/obese" xd:xctname="CheckBox" xd:CtrlId="CTRL600" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/obese"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/obese=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>obèse/<font color="#808080">
												<em> obese</em>
											</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/tachypneic" xd:xctname="CheckBox" xd:CtrlId="CTRL601" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/tachypneic"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/tachypneic=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>tachypnéique/ <em>
												<font color="#808080">tachypneic</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/cyanosis" xd:xctname="CheckBox" xd:CtrlId="CTRL669" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/cyanosis"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/cyanosis=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>cyanotique/ <font color="#808080">
												<em>cyanotic</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial"></font>
										</strong> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/general_exam_construct/general_exam_findings/accessory_muscle_use" xd:xctname="CheckBox" xd:CtrlId="CTRL602" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/general_exam_construct/general_exam_findings/accessory_muscle_use"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/general_exam_construct/general_exam_findings/accessory_muscle_use=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>utilisation des muscles accessoires/ <font color="#808080">
												<em>use of accessory muscles</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">Tête a cou/</font>
										</strong>
									</div>
									<font color="#808080" face="Arial">
										<em/>
									</font>
									<div>
										<em>
											<font color="#808080" face="Arial">HEENT</font>
										</em>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/heent_exam_construct/heent_exam_findings/normal_jugular_venous_pressure" xd:xctname="CheckBox" xd:CtrlId="CTRL559" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/heent_exam_construct/heent_exam_findings/normal_jugular_venous_pressure"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/heent_exam_construct/heent_exam_findings/normal_jugular_venous_pressure=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> tension jugulaire normaux/<font color="#808080">
												<em> JVP normal</em>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/heent_exam_construct/heent_exam_findings/high_jugular_venous_pressure" xd:xctname="CheckBox" xd:CtrlId="CTRL560" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/heent_exam_construct/heent_exam_findings/high_jugular_venous_pressure"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/heent_exam_construct/heent_exam_findings/high_jugular_venous_pressure=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>tension jugulaire haute/ <font color="#808080">
												<em>JVP high</em>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/heent_exam_construct/heent_exam_findings/goiter" xd:xctname="CheckBox" xd:CtrlId="CTRL561" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/heent_exam_construct/heent_exam_findings/goiter"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/heent_exam_construct/heent_exam_findings/goiter=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>goitre/ <font color="#808080">
												<em>goiter</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 12px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">Poumons/</font>
										</strong>
									</div>
									<div>
										<font color="#808080" face="Arial">
											<em>Lungs</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lungs_examination_construct/lung_exam_findings/clear" xd:xctname="CheckBox" xd:CtrlId="CTRL603" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lungs_examination_construct/lung_exam_findings/clear"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lungs_examination_construct/lung_exam_findings/clear=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> clairs/ <font color="#808080">
												<em>clear</em>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lungs_examination_construct/lung_exam_findings/crackles" xd:xctname="CheckBox" xd:CtrlId="CTRL604" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lungs_examination_construct/lung_exam_findings/crackles"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lungs_examination_construct/lung_exam_findings/crackles=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>crépitations/ <font color="#808080">
												<em>crackles </em>
											</font>
											<font color="#000000">(Si oui, lieu/ <font color="#808080">
													<em>if yes, location: <span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/physical_exam/lungs_examination_construct/lung_location_non-coded/value" xd:xctname="PlainText" xd:CtrlId="CTRL1503" style="WIDTH: 50%">
															<xsl:value-of select="obs/physical_exam/lungs_examination_construct/lung_location_non-coded/value"/>
														</span>
													</em>
												</font>)</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lungs_examination_construct/lung_exam_findings/wheeze" xd:xctname="CheckBox" xd:CtrlId="CTRL605" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lungs_examination_construct/lung_exam_findings/wheeze"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lungs_examination_construct/lung_exam_findings/wheeze=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>wheezing</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>Cœur/ </strong>
											<font color="#808080">
												<em>Heart</em>
											</font>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/pmi_not_displaced" xd:xctname="CheckBox" xd:CtrlId="CTRL632" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/pmi_not_displaced"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/pmi_not_displaced=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>C.P. non-déplacé/<font color="#808080">
												<em>PMI non-displaced</em>
											</font>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/displaced_point_of_maximal_impulse" xd:xctname="CheckBox" xd:CtrlId="CTRL636" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/displaced_point_of_maximal_impulse"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/displaced_point_of_maximal_impulse=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>C.P. déplacé/ <font color="#808080">
												<em>PMI displaced</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/regular_rhythm" xd:xctname="CheckBox" xd:CtrlId="CTRL633" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/regular_rhythm"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/regular_rhythm=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>rythme régulier/ <font color="#808080">
												<em>regular rhythm</em>
											</font>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/tachycardia" xd:xctname="CheckBox" xd:CtrlId="CTRL635" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/tachycardia"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/tachycardia=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>tachycardie/<font color="#808080">
												<em> tachycardia</em>
											</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/atrial_fibrillation" xd:xctname="CheckBox" xd:CtrlId="CTRL637" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/atrial_fibrillation"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/atrial_fibrillation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>rythme irrégulier/ <font color="#808080">
												<em>irregular rhythms </em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/no_cardiac_murmurs" xd:xctname="CheckBox" xd:CtrlId="CTRL634" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/no_cardiac_murmurs"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_exam_findings/no_cardiac_murmurs=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas de souffles/ <font color="#808080">
												<em>no murmurs</em>
											</font>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/cardiac_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL639" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/cardiac_murmur"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/cardiac_murmur=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
										<font face="Arial">
											<strong>souffle/ </strong>
											<font color="#808080">
												<em>murmur </em>
											</font>
											<strong>1<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/systolic_ejection_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL642" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/systolic_ejection_murmur"/>
													</xsl:attribute>
													<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/systolic_ejection_murmur=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>systolique/<font color="#808080">
												<em> systolic</em>
											</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/diastolic_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL1315" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/diastolic_murmur"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/diastolic_murmur=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>diastolique/ <em>
												<font color="#808080">diastolic</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/i_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL670" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/i_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/i_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>I <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/ii_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL671" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/ii_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/ii_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>II <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iii_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL672" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iii_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iii_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>III <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iv_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL673" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iv_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/iv_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>IV <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/v_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL674" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/v_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/v_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>V <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/vi_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL675" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/vi_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/vi_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>VI</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/parasternal" xd:xctname="CheckBox" xd:CtrlId="CTRL679" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/parasternal"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/parasternal=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>parasternal<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/right_superior" xd:xctname="CheckBox" xd:CtrlId="CTRL676" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/right_superior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/right_superior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">droite super./<font color="#808080">
														<em> RUSB</em>
													</font>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_superior" xd:xctname="CheckBox" xd:CtrlId="CTRL677" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: x-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_superior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_superior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">gauche super./<font color="#808080">
														<em> LUSB</em>
													</font>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_inferior" xd:xctname="CheckBox" xd:CtrlId="CTRL678" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: x-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_inferior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/left_inferior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">gauche infer./<font color="#808080">
														<em> LLSB</em>
													</font>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/apical" xd:xctname="CheckBox" xd:CtrlId="CTRL680" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/apical"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_1/apical=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>apical</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/cardiac_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL643" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/cardiac_murmur"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/cardiac_murmur=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
										<font face="Arial">
											<strong>souffle/ </strong>
											<em>
												<font color="#808080">murmur </font>
											</em>
											<strong> 2<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/systolic_ejection_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL645" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/systolic_ejection_murmur"/>
													</xsl:attribute>
													<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/systolic_ejection_murmur=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>systolique/ <em>
												<font color="#808080">systolic</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/diastolic_murmur" xd:xctname="CheckBox" xd:CtrlId="CTRL1316" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/diastolic_murmur"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/diastolic_murmur=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>diastolique/ <em>
												<font color="#808080">diastolic</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/i_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL681" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/i_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/i_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>I <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/ii_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL682" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/ii_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/ii_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>II <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iii_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL683" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iii_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iii_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>III <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iv_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL684" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iv_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/iv_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>IV <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/v_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL685" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/v_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/v_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>V <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/vi_slash_vi" xd:xctname="CheckBox" xd:CtrlId="CTRL686" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/vi_slash_vi"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/vi_slash_vi=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>VI</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/parasternal" xd:xctname="CheckBox" xd:CtrlId="CTRL687" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/parasternal"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/parasternal=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>parasternal<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/right_superior" xd:xctname="CheckBox" xd:CtrlId="CTRL688" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/right_superior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/right_superior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">droite super./ <em>
														<font color="#808080">RUSB</font>
													</em>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_superior" xd:xctname="CheckBox" xd:CtrlId="CTRL689" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: x-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_superior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_superior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">gauche super./ <em>
														<font color="#808080">LUSB</font>
													</em>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_inferior" xd:xctname="CheckBox" xd:CtrlId="CTRL690" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: x-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_inferior"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/left_inferior=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<span>
												<font face="Arial">gauche infer./ <em>
														<font color="#808080">LLSB</font>
													</em>
												</font>
											</span><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/apical" xd:xctname="CheckBox" xd:CtrlId="CTRL691" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/apical"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/cardiac_exam_construct/cardiac_murmur_2/apical=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>apical</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>Abdomen </strong>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/soft_abdomen" xd:xctname="CheckBox" xd:CtrlId="CTRL1200" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/soft_abdomen"/>
													</xsl:attribute>
													<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/soft_abdomen=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>souple/ <em>
												<font color="#808080">soft</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_abdominal_tenderness" xd:xctname="CheckBox" xd:CtrlId="CTRL1201" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_abdominal_tenderness"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_abdominal_tenderness=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas sensible/ <em>
												<font color="#808080">non-tender</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/splenomegaly" xd:xctname="CheckBox" xd:CtrlId="CTRL1205" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/splenomegaly"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/splenomegaly=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>splenomégalie/ <em>
												<font color="#808080">splenomegaly</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/hepatomegaly" xd:xctname="CheckBox" xd:CtrlId="CTRL1206" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/hepatomegaly"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/hepatomegaly=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> hépatomégalie/ <em>
												<font color="#808080">hepatomegaly</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_hepatomegaly" xd:xctname="CheckBox" xd:CtrlId="CTRL1203" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_hepatomegaly"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_hepatomegaly=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas d'hépatomégalie/ <em>
												<font color="#808080">no hepatomegaly</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/pulsatile" xd:xctname="CheckBox" xd:CtrlId="CTRL1207" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/pulsatile"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/pulsatile=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>fois pulsatile/ <em>
												<font color="#808080">pulsatile liver</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_splenomegaly" xd:xctname="CheckBox" xd:CtrlId="CTRL1202" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_splenomegaly"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_splenomegaly=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas de splenomégalie/ <em>
												<font color="#808080">no splenomegaly</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM-STYLE: none; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/ascites" xd:xctname="CheckBox" xd:CtrlId="CTRL1208" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/ascites"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/ascites=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>ascites/ <em>
												<font color="#808080">ascites</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/abdominal_exam_construct/level_of_ascites/value)}" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL626" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value=&quot;1901^MILD^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>légère/<em>
												<font color="#808080"> mild</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/abdominal_exam_construct/level_of_ascites/value)}" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL625" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value=&quot;1900^MODERATE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>modérée/ <em>
												<font color="#808080">moderate</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/abdominal_exam_construct/level_of_ascites/value)}" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL624" xd:boundProp="xd:value" xd:onValue="3250^ABUNDANT^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value=&quot;3250^ABUNDANT^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>abondante/ <em>
												<font color="#808080">abundate</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/abdominal_exam_construct/level_of_ascites/value)}" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1299" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/level_of_ascites/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_ascites" xd:xctname="CheckBox" xd:CtrlId="CTRL1204" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_ascites"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/no_presence_of_ascites=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas d'ascite/ <em>
												<font color="#808080">no ascites</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP-STYLE: none; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/abdominal_tenderness" xd:xctname="CheckBox" xd:CtrlId="CTRL1209" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/abdominal_tenderness"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/abdominal_exam_findings/abdominal_tenderness=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>sensibilité/ <em>
												<font color="#808080">tenderness</font>
											</em>:<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_upper_quadrant" xd:xctname="CheckBox" xd:CtrlId="CTRL628" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_upper_quadrant"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_upper_quadrant=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>HCD/ <em>
												<font color="#808080">RUQ</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_upper_quadrant" xd:xctname="CheckBox" xd:CtrlId="CTRL629" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_upper_quadrant"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_upper_quadrant=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>HCG/ <em>
												<font color="#808080">LUQ</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_lower_quadrant" xd:xctname="CheckBox" xd:CtrlId="CTRL630" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_lower_quadrant"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/right_lower_quadrant=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>FID/ <em>
												<font color="#808080">RLQ</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_lower_quadrant" xd:xctname="CheckBox" xd:CtrlId="CTRL631" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_lower_quadrant"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/abdominal_exam_construct/location_of_abdominal_tenderness/left_lower_quadrant=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>FIG/ <em>
												<font color="#808080">LLQ</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td rowSpan="3" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>Extrémités/ </strong>
											<em>
												<font color="#808080">Extremities</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_edema" xd:xctname="CheckBox" xd:CtrlId="CTRL647" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_edema"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_edema=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas d'OMI/ <em>
												<font color="#808080">no peripheral edema</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" rowSpan="2" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/cold" xd:xctname="CheckBox" xd:CtrlId="CTRL649" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/cold"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/cold=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>froids/ <em>
												<font color="#808080">cold</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/edema_legs" xd:xctname="CheckBox" xd:CtrlId="CTRL650" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/edema_legs"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/edema_legs=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>œdème des membres inferieures/ <em>
												<font color="#808080">peripheral edema</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value)}" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL655" xd:boundProp="xd:value" xd:onValue="3258^ONE OR MORE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value=&quot;3258^ONE OR MORE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>1+ <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value)}" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL656" xd:boundProp="xd:value" xd:onValue="3259^TWO OR MORE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value=&quot;3259^TWO OR MORE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>2+ <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value)}" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL654" xd:boundProp="xd:value" xd:onValue="3260^THREE OR MORE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value=&quot;3260^THREE OR MORE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>3+ <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value)}" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1297" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/number_of_observed_edema_sites/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td colSpan="2" rowSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_pain_or_swelling" xd:xctname="CheckBox" xd:CtrlId="CTRL648" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_pain_or_swelling"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/no_pain_or_swelling=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>pas de douleur ou gonflement articulaire/<em>
												<font color="#808080"> no joint pain or swelling</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_pain" xd:xctname="CheckBox" xd:CtrlId="CTRL651" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_pain"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_pain=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>articulations douloureuses/ <em>
												<font color="#808080">painful joints</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_swelling" xd:xctname="CheckBox" xd:CtrlId="CTRL652" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_swelling"/>
												</xsl:attribute>
												<xsl:if test="obs/physical_exam/lower_extreminites_exam_construct/lower_extreminites_exam_findings/joint_swelling=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>articulations gonflées/ <em>
												<font color="#808080">swollen joints</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 26px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">Neuro</font>
										</strong>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value)}" tabIndex="0" xd:binding="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL986" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value"/>
											</xsl:attribute>
											<xsl:if test="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value=&quot;1115^NORMAL^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font face="Arial">pas d'abnormalitiés/ <em>
												<font color="#808080">no abnormalities</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<div>
											<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value)}" tabIndex="0" xd:binding="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL982" xd:boundProp="xd:value" xd:onValue="6005^FOCAL WEAKNESS^99DCT" style="FONT-FAMILY: Arial">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value"/>
													</xsl:attribute>
													<xsl:if test="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value=&quot;6005^FOCAL WEAKNESS^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>faiblesse focalisée/ <em>
													<font color="#808080">focal motor defecit</font>
												</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value)}" tabIndex="0" xd:binding="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1298" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value"/>
													</xsl:attribute>
													<xsl:if test="obs/physical_exam/neurologic_exam_construct/neurologic_exam_findings/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>N/A</font>
										</div>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 26px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>Autre/ </strong>
											<em>
												<font color="#808080">Other</font>
											</em>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/physical_exam/physical_system_comment_normal/value" xd:xctname="PlainText" xd:CtrlId="CTRL1341" style="WIDTH: 100%">
												<xsl:value-of select="obs/physical_exam/physical_system_comment_normal/value"/>
											</span>
										</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/physical_exam/physical_system_comment/value" xd:xctname="PlainText" xd:CtrlId="CTRL562" style="WIDTH: 100%; FONT-FAMILY: Arial">
												<xsl:value-of select="obs/physical_exam/physical_system_comment/value"/>
											</span>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 935px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 123px"></col>
							<col style="WIDTH: 812px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>4. Labos préalables (aujourd'hui y compris)/ </strong>
											<em>
												<font color="#808080">Previous labs (including today) </font>
											</em>
											<strong>     <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_labs_including_today/previous_laboratory_tests_duplicated_on_another_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1345" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/previous_labs_including_today/previous_laboratory_tests_duplicated_on_another_form/value"/>
													</xsl:attribute>
													<xsl:if test="obs/previous_labs_including_today/previous_laboratory_tests_duplicated_on_another_form/value=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</font>
										<font color="#ff0000">
											<font color="#000000">La m</font>
											<font face="Arial">
												<font color="#000000">ême que DDB/</font>
												<strong/>
												<font color="#808080">Same as DDB</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div align="center">
										<strong>
											<font face="Arial">Date</font>
										</strong>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div align="center">
										<font face="Arial">
											<strong>Résultats/ </strong>
											<em>
												<font color="#808080">Results</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<font face="Arial">1.</font>
											<div style="WIDTH: 99px; FONT-FAMILY: Arial; HEIGHT: 21px" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL411"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct/date_of_laboratory_test/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
													<img src="res://infopath.exe/calendar.gif"/>
												</button>
											</div>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/previous_labs_including_today/other_lab_test_construct/other_lab_test_result/value" xd:xctname="PlainText" xd:CtrlId="CTRL412" style="WIDTH: 100%; FONT-FAMILY: Arial">
												<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct/other_lab_test_result/value"/>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<font face="Arial">2.</font>
											<div style="WIDTH: 103px; FONT-FAMILY: Arial" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL413"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/other_lab_test_construct_1/date_of_laboratory_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct_1/date_of_laboratory_test/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/other_lab_test_construct_1/date_of_laboratory_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct_1/date_of_laboratory_test/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
													<img src="res://infopath.exe/calendar.gif"/>
												</button>
											</div>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/previous_labs_including_today/other_lab_test_construct_1/other_lab_test_result/value" xd:xctname="PlainText" xd:CtrlId="CTRL414" style="WIDTH: 100%; FONT-FAMILY: Arial">
												<xsl:value-of select="obs/previous_labs_including_today/other_lab_test_construct_1/other_lab_test_result/value"/>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">3. </font>
										<div style="WIDTH: 99px; FONT-FAMILY: Arial" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL564"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/date_of_laboratory_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/date_of_laboratory_test/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/date_of_laboratory_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/date_of_laboratory_test/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
												<img src="res://infopath.exe/calendar.gif"/>
											</button>
										</div>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>CHEM8+ </strong>au point d'intervention/ <em>
												<font color="#808080">point of care</font>
											</em>
										</font>
									</div>
									<div>
										<font face="Arial">Na:<span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_sodium/value" xd:xctname="PlainText" xd:CtrlId="CTRL1472" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_sodium/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_sodium/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_sodium/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">  K:<span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_potassium/value" xd:xctname="PlainText" xd:CtrlId="CTRL1473" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_potassium/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_potassium/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_potassium/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">  CI: <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_chloride/value" xd:xctname="PlainText" xd:CtrlId="CTRL1475" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 6%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_chloride/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_chloride/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_chloride/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">  iCa: <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_calcium/value" xd:xctname="PlainText" xd:CtrlId="CTRL1476" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 6%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_calcium/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_calcium/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_calcium/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial"> CO2: <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_carbon_dioxide/value" xd:xctname="PlainText" xd:CtrlId="CTRL1477" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 6%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_carbon_dioxide/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_carbon_dioxide/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_carbon_dioxide/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial"> Urée: </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/blood_urea_nitrogen/value" xd:xctname="PlainText" xd:CtrlId="CTRL420" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 28px; FONT-FAMILY: Arial; HEIGHT: 21px">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/blood_urea_nitrogen/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/blood_urea_nitrogen/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/blood_urea_nitrogen/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial"> Créat:  </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_creatinine/value" xd:xctname="PlainText" xd:CtrlId="CTRL421" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 37px; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_creatinine/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_creatinine/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_creatinine/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial"> Glyc: <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_glucose/value" xd:xctname="PlainText" xd:CtrlId="CTRL1474" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_glucose/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/serum_glucose/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/serum_glucose/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial"> Hgb: </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/istat_chem8_plus_construct/hemoglobin/value" xd:xctname="PlainText" xd:CtrlId="CTRL423" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 46px; FONT-FAMILY: Arial; HEIGHT: 21px">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/hemoglobin/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/istat_chem8_plus_construct/hemoglobin/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/previous_labs_including_today/istat_chem8_plus_construct/hemoglobin/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">4. 
<div style="WIDTH: 85%" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL1454"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/date_of_laboratory_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/date_of_laboratory_test/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/date_of_laboratory_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/date_of_laboratory_test/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
													<img src="res://infopath.exe/calendar.gif"/>
												</button>
											</div>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>iSTAT INR/PT</strong> au point d'intervention/ <em>
												<font color="#808080">point of care</font>
											</em>
										</font>
									</div>
									<div>
										<font face="Arial">INR:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/international_normalized_ratio/value" xd:xctname="PlainText" xd:CtrlId="CTRL1455" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 15%; FONT-FAMILY: Arial">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/international_normalized_ratio/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/international_normalized_ratio/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/international_normalized_ratio/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font face="Arial">   PT: <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/prothrombin_time_lab_result/value" xd:xctname="PlainText" xd:CtrlId="CTRL1456" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 15%">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/prothrombin_time_lab_result/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/prothrombin_time_lab_result/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_labs_including_today/international_normalized_ratio_and_prothrombin_time_lab_construct/prothrombin_time_lab_result/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 933px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 214px"></col>
							<col style="WIDTH: 145px"></col>
							<col style="WIDTH: 122px"></col>
							<col style="WIDTH: 452px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="4" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>5. Etudes préables/ </strong>
											<em>
												<font color="#808080">Previous studies     </font>
											</em>
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/previous_investigations_duplicated_on_another_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1344" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/previous_studies/previous_investigations_duplicated_on_another_form/value"/>
													</xsl:attribute>
													<xsl:if test="obs/previous_studies/previous_investigations_duplicated_on_another_form/value=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</font>
										<font color="#ff0000">
											<font color="#000000">La m</font>
											<font face="Arial">
												<font color="#000000">ême que DDB/</font>
												<strong/>
												<font color="#808080">Same as DDB</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div align="center">
										<em>
											<font face="Arial">Date</font>
										</em>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid">
									<div align="center">
										<em>
											<font face="Arial">Résultats/ <font color="#808080">Results</font>
											</font>
										</em>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 43px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">Cliché du thorax/<em>
												<font color="#808080">CXR</font>
											</em>
										</font>
										<div style="WIDTH: 83px; FONT-FAMILY: Arial; HEIGHT: 21px" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL425"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/date_of_general_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/date_of_general_test/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_studies/chest_xray_construct/date_of_general_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_studies/chest_xray_construct/date_of_general_test/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
												<img src="res://infopath.exe/calendar.gif"/>
											</button>
										</div>
									</div>
								</td>
								<td>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/x-ray_chest/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL694" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/x-ray_chest/normal"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/x-ray_chest/normal=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>normale/ <em>
												<font color="#808080">normal</font>
											</em>
										</font>
									</div>
								</td>
								<td>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value" xd:xctname="OptionButton" xd:CtrlId="CTRL579" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value=&quot;1901^MILD^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>légère/ <em>
												<font color="#808080">mild</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/x-ray_chest/infiltrate" xd:xctname="CheckBox" xd:CtrlId="CTRL571" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/x-ray_chest/infiltrate"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/x-ray_chest/infiltrate=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>infiltrats/ <em>
												<font color="#808080">infiltrates </font>
											</em>(localisation/ <em>
												<font color="#808080">location </font>
											</em>
										</font><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/infiltrates_location_comment/value" xd:xctname="PlainText" xd:CtrlId="CTRL573" style="WIDTH: 123px; FONT-FAMILY: Arial">
											<xsl:value-of select="obs/previous_studies/chest_xray_construct/infiltrates_location_comment/value"/>
										</span>
										<font face="Arial">)</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 24px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/x-ray_chest/evidence_of_cardiac_enlargement" xd:xctname="CheckBox" xd:CtrlId="CTRL570" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/x-ray_chest/evidence_of_cardiac_enlargement"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/x-ray_chest/evidence_of_cardiac_enlargement=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>cardiomégalie/ <em>
												<font color="#808080">cardiomegaly</font>
											</em>
										</font>
									</div>
								</td>
								<td>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value" xd:xctname="OptionButton" xd:CtrlId="CTRL581" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value=&quot;1900^MODERATE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>modérée/ <em>
												<font color="#808080">moderate</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/x-ray_chest/pulmonary_effusion" xd:xctname="CheckBox" xd:CtrlId="CTRL572" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/x-ray_chest/pulmonary_effusion"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/x-ray_chest/pulmonary_effusion=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>épanchement pleural/ <em>
												<font color="#808080">pleural effusions</font>
											</em>
										</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value" xd:xctname="OptionButton" xd:CtrlId="CTRL577" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT" style="FONT-FAMILY: Arial">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value"/>
											</xsl:attribute>
											<xsl:if test="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value=&quot;3398^SMALL^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font face="Arial">petit/<em>
												<font color="#808080"> small</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value" xd:xctname="OptionButton" xd:CtrlId="CTRL576" xd:boundProp="xd:value" xd:onValue="3399^LARGE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value=&quot;3399^LARGE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>grand/<em>
												<font color="#808080">big</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1295" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/size_of_pulmonary_effusion/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
									<div>
										<font face="Arial">(localisation/<em>
												<font color="#808080"> location</font>
											</em>
										</font><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/effusion_location/value" xd:xctname="PlainText" xd:CtrlId="CTRL574" style="WIDTH: 175px; FONT-FAMILY: Arial; HEIGHT: 19px">
											<xsl:value-of select="obs/previous_studies/chest_xray_construct/effusion_location/value"/>
										</span>
										<font face="Arial">)</font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td>
									<div>
										<font face="Arial"></font> </div>
								</td>
								<td>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value" xd:xctname="OptionButton" xd:CtrlId="CTRL580" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value=&quot;1903^SEVERE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>sévère/ <em>
												<font color="#808080">severe</font>
											</em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value)}" tabIndex="0" xd:binding="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1296" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/chest_xray_construct/severity_of_cardiomegaly/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">    </font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 24px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">EKG:   </font>
										<div style="WIDTH: 147px; FONT-FAMILY: Arial" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL449"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/date_of_general_test/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/date_of_general_test/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/previous_studies/electrocardiogram_construct/date_of_general_test/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/date_of_general_test/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
												<img src="res://infopath.exe/calendar.gif"/>
											</button>
										</div>
									</div>
								</td>
								<td colSpan="3" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL1228" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/normal"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/normal=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>normale/ <em>
												<font color="#808080">normal</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/sinus_rhythm" xd:xctname="CheckBox" xd:CtrlId="CTRL1227" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/sinus_rhythm"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/sinus_rhythm=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>sinus<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/left_ventricular_hypertrophy" xd:xctname="CheckBox" xd:CtrlId="CTRL1226" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/left_ventricular_hypertrophy"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/left_ventricular_hypertrophy=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>HVG/<em>
												<font color="#808080"> LVH</font>
											</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/atrial_fibrillation" xd:xctname="CheckBox" xd:CtrlId="CTRL1225" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/atrial_fibrillation"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/atrial_fibrillation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>fibrillation auriculaire/ <em>
												<font color="#808080">atrial fibrillation</font>
											</em>
										</font>
									</div>
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/infarction" xd:xctname="CheckBox" xd:CtrlId="CTRL1224" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/infarction"/>
												</xsl:attribute>
												<xsl:if test="obs/previous_studies/electrocardiogram_construct/electrocardiogram_diagnosis/infarction=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>infarction (localisation/ <em>
												<font color="#808080">location</font>
											</em>
										</font><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/previous_studies/electrocardiogram_construct/infarcation_location/value" xd:xctname="PlainText" xd:CtrlId="CTRL535" style="WIDTH: 95px; FONT-FAMILY: Arial">
											<xsl:value-of select="obs/previous_studies/electrocardiogram_construct/infarcation_location/value"/>
										</span>
										<font face="Arial">)</font>
										<font face="Arial"></font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 962px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 39px"></col>
							<col style="WIDTH: 4px"></col>
							<col style="WIDTH: 4px"></col>
							<col style="WIDTH: 5px"></col>
							<col style="WIDTH: 48px"></col>
							<col style="WIDTH: 4px"></col>
							<col style="WIDTH: 5px"></col>
							<col style="WIDTH: 22px"></col>
							<col style="WIDTH: 8px"></col>
							<col style="WIDTH: 106px"></col>
							<col style="WIDTH: 172px"></col>
							<col style="WIDTH: 79px"></col>
							<col style="WIDTH: 157px"></col>
							<col style="WIDTH: 108px"></col>
							<col style="WIDTH: 201px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="15" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>6. Echocardiographie/ </strong>
											<em>
												<font color="#808080">Echocardiography</font>
											</em>
										</font>
										<font face="Verdana">
											<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/echo_normal_for_consult_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1360" xd:boundProp="xd:value" xd:fixed="TRUE" xd:onValue="2257^TRUE^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/echo_normal_for_consult_form/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/echo_normal_for_consult_form/value=&quot;2257^TRUE^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font face="Arial">Normale/ <font color="#808080">Normal</font>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 25px">
								<td colSpan="15" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>A. Measurements:</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 24px">
								<td colSpan="8" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">LV Diast. Diamension</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_diastolic_dimension/value" xd:xctname="PlainText" xd:CtrlId="CTRL1331" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 80%">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_diastolic_dimension/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_diastolic_dimension/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_diastolic_dimension/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">cm</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">LV Syst. Diamension </font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_systolic_dimension/value" xd:xctname="PlainText" xd:CtrlId="CTRL698" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 55px; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_systolic_dimension/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_systolic_dimension/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_ventricular_systolic_dimension/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">cm</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Ejection Fraction</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/ejection_fraction/value" xd:xctname="PlainText" xd:CtrlId="CTRL699" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 59px; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/ejection_fraction/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/ejection_fraction/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/ejection_fraction/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>%</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 26px">
								<td colSpan="8" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Intervent Septal Wall Thickness</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/interventricular_septal_wall_thickness/value" xd:xctname="PlainText" xd:CtrlId="CTRL700" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 80%; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/interventricular_septal_wall_thickness/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/interventricular_septal_wall_thickness/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/interventricular_septal_wall_thickness/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">cm</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Inferolat Wall Thickness</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/inferolateral_wall_thickness/value" xd:xctname="PlainText" xd:CtrlId="CTRL701" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 55px; FONT-FAMILY: Arial; HEIGHT: 20px">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/inferolateral_wall_thickness/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/inferolateral_wall_thickness/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/inferolateral_wall_thickness/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font size="1" face="Arial">cm</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">LA PLA Dimension</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 0px">
									<div>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_pla_dimension/value" xd:xctname="PlainText" xd:CtrlId="CTRL702" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 59px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_pla_dimension/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/left_atrial_pla_dimension/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_pla_dimension/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<font size="1">cm</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 25px">
								<td colSpan="8" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">LA A4C Length</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_4ac_length/value" xd:xctname="PlainText" xd:CtrlId="CTRL704" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 80%; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_4ac_length/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/left_atrial_4ac_length/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/left_atrial_4ac_length/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">cm</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">RA A4C Length</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/right_atrial_a4c_length/value" xd:xctname="PlainText" xd:CtrlId="CTRL705" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 55px; FONT-FAMILY: Arial">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/right_atrial_a4c_length/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/right_atrial_a4c_length/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/right_atrial_a4c_length/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font size="1" face="Arial">cm</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Aortic Root Diameter</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/aortic_root_diameter/value" xd:xctname="PlainText" xd:CtrlId="CTRL706" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 59px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/aortic_root_diameter/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/aortic_root_diameter/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/aortic_root_diameter/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">cm</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 25px">
								<td colSpan="8" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Peak LVOT Velocity</font>
									</div>
								</td>
								<td colSpan="2" style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/peak_left_ventricular_outflow_tract_velocity/value" xd:xctname="PlainText" xd:CtrlId="CTRL707" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 80%; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_left_ventricular_outflow_tract_velocity/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/peak_left_ventricular_outflow_tract_velocity/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_left_ventricular_outflow_tract_velocity/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">m/s</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Pk. Aortic Valve Velocity</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/peak_aortic_valve_velocity/value" xd:xctname="PlainText" xd:CtrlId="CTRL708" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 55px; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_aortic_valve_velocity/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/peak_aortic_valve_velocity/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_aortic_valve_velocity/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">m/s</font>
												<font size="1"></font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #c0c0c0 2.25pt dotted; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Pk. Tricuspid Regurg. Gradient</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #c0c0c0 2.25pt dotted; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient/value" xd:xctname="PlainText" xd:CtrlId="CTRL709" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 58px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font size="1">mmHg</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #c0c0c0 2.25pt dotted; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 0px">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient_may_be_underestimated/value" xd:xctname="CheckBox" xd:CtrlId="CTRL710" xd:boundProp="xd:value" xd:fixed="TRUE" xd:onValue="2257^TRUE^99DCT" style="FONT-FAMILY: Arial">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient_may_be_underestimated/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/echocardiographic_measurements/peak_tricuspid_regurgitant_gradient_may_be_underestimated/value=&quot;2257^TRUE^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">May be underestimated</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 26px">
								<td colSpan="12" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">Mitral E </font>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_wave/value" xd:xctname="PlainText" xd:CtrlId="CTRL713" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 57px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_wave/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/mitral_e_wave/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_wave/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
											</font>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">
											<font size="1" face="Arial">m/s   Mitral A<font size="2" face="Verdana">
													<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave/value" xd:xctname="PlainText" xd:CtrlId="CTRL714" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 54px; FONT-FAMILY: Arial">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
													</font>
												</font>
												<font style="FONT-SIZE: 7pt" face="Arial">m/s  <font face="Arial">
														<font size="1"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave_is_absent/true" xd:xctname="CheckBox" xd:CtrlId="CTRL1300" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave_is_absent/true"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/echocardiographic_measurements/mitral_a_wave_is_absent/true=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>Absent      </font>
													</font>
												</font>
											</font>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">Mitral E'(lateral)</font>
										<font face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_prime_wave_lateral/value" xd:xctname="PlainText" xd:CtrlId="CTRL717" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 60px; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_prime_wave_lateral/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/mitral_e_prime_wave_lateral/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/mitral_e_prime_wave_lateral/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font style="FONT-SIZE: 7pt">m/s</font> </font>
										</font>
										<font face="Arial"></font>
									</div>
								</td>
								<td colSpan="3" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt; PADDING-BOTTOM: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BORDER-TOP: #c0c0c0 2.25pt dotted; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 0px">
									<div>
										<font size="1" face="Arial">
											<font style="FONT-SIZE: 7pt">
												<font face="Arial">
													<font style="FONT-SIZE: 7pt">Estimated RA Pressure</font>
												</font>
											</font>
										</font>
										<font size="2" face="Verdana">
											<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/estimated_right_atrial_pressure/value" xd:xctname="PlainText" xd:CtrlId="CTRL711" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 58px; FONT-FAMILY: Arial">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/estimated_right_atrial_pressure/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/estimated_right_atrial_pressure/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/estimated_right_atrial_pressure/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
											</font>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">mm/Hg                  Estimated PASP </font>
										<font face="Verdana">
											<font size="2">
												<font face="Arial"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiographic_measurements/estimated_pulmonary_artery_systolic_pressure/value" xd:xctname="PlainText" xd:CtrlId="CTRL712" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 66px; FONT-FAMILY: Arial">
														<xsl:attribute name="xd:num">
															<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/estimated_pulmonary_artery_systolic_pressure/value"/>
														</xsl:attribute>
														<xsl:choose>
															<xsl:when test="function-available('xdFormatting:formatString')">
																<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/echocardiographic_measurements/estimated_pulmonary_artery_systolic_pressure/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="obs/echocardiographic_result/echocardiographic_measurements/estimated_pulmonary_artery_systolic_pressure/value"/>
															</xsl:otherwise>
														</xsl:choose>
													</span>
												</font>
												<font style="FONT-SIZE: 7pt">mmHg</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="15" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font size="2" face="Arial">
											<strong>B. Chambers:</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="5" style="BORDER-BOTTOM: #969696 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font size="2" face="Arial">
											<strong>Left Ventricle: </strong>
										</font>
									</div>
								</td>
								<td colSpan="10" style="BORDER-BOTTOM: #969696 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font size="2" face="Verdana">
											<font size="2" face="Verdana">
												<strong>
													<u>
														<font face="Arial">Cavity Size: </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL718" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;1115^NORMAL^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
													</u>
												</strong>
												<font size="1" face="Arial">Normal</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL720" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;3398^SMALL^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1" face="Arial">Small </font>
											</font>
										</font>
										<u>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL722" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</u>
										<font size="1" face="Arial"> Mildly Dilated </font>
										<u>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL719" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</u>
										<font size="1" face="Arial">Moderately dilated</font>
										<u>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL721" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</u>
										<font size="1" face="Arial">Severely Dilated <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1260" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/cavity_size/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td colSpan="15" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #969696 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font size="2">
											<strong>
												<u>
													<font size="2" face="Arial">
														<strong>
															<u>Wall Thickness:</u>
														</strong>
													</font>
												</u>
											</strong>
										</font>
										<strong>
											<u><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL736" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value=&quot;1115^NORMAL^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</u>
										</strong>
										<font size="1" face="Arial">Normal</font>
										<strong>
											<u><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL737" xd:boundProp="xd:value" xd:onValue="3842^MILDLY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3842^MILDLY INCREASED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</u>
										</strong>
										<font size="1">
											<font face="Arial">Mildly Incr</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL735" xd:boundProp="xd:value" xd:onValue="3843^MODERATELY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3843^MODERATELY INCREASED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">
												<font face="Arial">Mod Incr</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL734" xd:boundProp="xd:value" xd:onValue="3844^SEVERELY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3844^SEVERELY INCREASED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1" face="Arial">Severely Incr</font>
											</font>
										</font>
										<font face="Arial"> <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1262" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small; FONT-WEIGHT: normal">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/wall_thickness/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">N/A </font>
										</font>
										<font face="Verdana">
											<font face="Verdana">
												<font face="Verdana">
													<strong>
														<u>
															<font face="Arial">Syst Fxn:</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL726" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;1115^NORMAL^99DCT&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
														</u>
													</strong>
													<font size="1" face="Arial"> Norm</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL724" xd:boundProp="xd:value" xd:onValue="3846^HYPERDYNAMIC^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;3846^HYPERDYNAMIC^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Hyperdynamic</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL725" xd:boundProp="xd:value" xd:onValue="3847^MILDLY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;3847^MILDLY DECREASED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Mildly Decreased</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL723" xd:boundProp="xd:value" xd:onValue="3848^MODERARELY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;3848^MODERARELY DECREASED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</font>
											</font>
										</font>
										<font size="1" face="Arial">Mod Decreased</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL727" xd:boundProp="xd:value" xd:onValue="3849^SEVERELY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;3849^SEVERELY DECREASED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Severely Decreased <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1261" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/systolic_function/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td colSpan="15" style="BORDER-BOTTOM: #969696 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<font face="Verdana">
												<font face="Verdana">
													<font face="Arial">
														<strong>
															<em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis" xd:xctname="CheckBox" xd:CtrlId="CTRL1161" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>Endomyocardial Fibrosis </em>
														</strong>
														<font size="1"></font>
													</font>
													<em>
														<strong/>
													</em>
													<font face="Arial">
														<em>
															<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/thrombus" xd:xctname="CheckBox" xd:CtrlId="CTRL1160" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/thrombus"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/thrombus=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>Thrombus <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/ventricular_septal_defect" xd:xctname="CheckBox" xd:CtrlId="CTRL1162" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/ventricular_septal_defect"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/ventricular_septal_defect=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>Ventricular Septal Defect</strong>
														</em>
													</font>
													<em>
														<strong/>
													</em>
												</font>
											</font>
										</font>
										<em>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1098" xd:boundProp="xd:value" xd:onValue="1065^YES^99DCT" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: 7pt; FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value=&quot;1065^YES^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</em>
										<font style="FONT-SIZE: 7pt" face="Arial">restrictive</font>
										<font style="BACKGROUND-COLOR: #ffff00">
											<font style="BACKGROUND-COLOR: #ffffff" face="Arial">
												<em>
													<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1097" xd:boundProp="xd:value" xd:onValue="1066^NO^99DCT" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: 7pt; FONT-WEIGHT: normal">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value=&quot;1066^NO^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
													</strong>
												</em>
												<font style="FONT-SIZE: 7pt">non-restictive <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1263" xd:boundProp="xd:value" style="FONT-STYLE: normal; FONT-FAMILY: Arial; FONT-SIZE: 7pt; FONT-WEIGHT: normal">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/vsd_restrictive/value=&quot;&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>N/A </font>
											</font>
										</font>
										<font face="Verdana">
											<font face="Verdana">
												<font face="Verdana">
													<em>
														<strong>
															<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction" xd:xctname="CheckBox" xd:CtrlId="CTRL1163" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/left_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input> Dynamic Outflow Tract Obstruction</font>
														</strong>
													</em>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 22px">
								<td colSpan="6" style="BORDER-BOTTOM: #969696 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #969696 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">Right Ventricle:</font>
										</strong>
									</div>
								</td>
								<td colSpan="9" style="BORDER-BOTTOM: #969696 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #969696 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<strong>
												<u>
													<font face="Arial">Cavity Size: </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL740" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</u>
											</strong>
										</font>
										<font size="1" face="Arial"> Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL744" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Mildly Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL741" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Moderately Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL743" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Severely Dilated <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1264" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/cavity_size/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="15" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #969696 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<strong>
												<u>
													<font face="Arial">Wall Thickness: </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL747" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</u>
											</strong>
										</font>
										<font size="1" face="Arial">Normal</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL748" xd:boundProp="xd:value" xd:onValue="3842^MILDLY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3842^MILDLY INCREASED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Mildly Incr</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL746" xd:boundProp="xd:value" xd:onValue="3843^MODERATELY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3843^MODERATELY INCREASED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Mod Incr</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL745" xd:boundProp="xd:value" xd:onValue="3844^SEVERELY INCREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value=&quot;3844^SEVERELY INCREASED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Severely Incr <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1265" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/wall_thickness/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A </font>
										<font face="Verdana">
											<strong>
												<u>
													<font face="Arial">Syst Fxn:</font>
												</u>
											</strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL752" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;1115^NORMAL^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1" face="Arial">Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL750" xd:boundProp="xd:value" xd:onValue="3846^HYPERDYNAMIC^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;3846^HYPERDYNAMIC^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1" face="Arial">Hyperdyn </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL751" xd:boundProp="xd:value" xd:onValue="3847^MILDLY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;3847^MILDLY DECREASED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1" face="Arial">Mildly Decreased </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL749" xd:boundProp="xd:value" xd:onValue="3848^MODERARELY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;3848^MODERARELY DECREASED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
										<font size="1" face="Arial"> Mod Decreased </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL753" xd:boundProp="xd:value" xd:onValue="3849^SEVERELY DECREASED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;3849^SEVERELY DECREASED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Sev.Decreased <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1266" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/systolic_function/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="15" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis" xd:xctname="CheckBox" xd:CtrlId="CTRL1164" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/endomyocardial_fibrosis=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<strong>
											<em>
												<font face="Arial">Endomyocardial Fibrosis <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/thrombus" xd:xctname="CheckBox" xd:CtrlId="CTRL1130" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/thrombus"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/thrombus=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>Thrombus<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/interventricular_septal_flattening" xd:xctname="CheckBox" xd:CtrlId="CTRL1165" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/interventricular_septal_flattening"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/interventricular_septal_flattening=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>Interventricular Septal Flattening</font>
												<strong>
													<em>
														<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/infundibular_hypertrophy" xd:xctname="CheckBox" xd:CtrlId="CTRL1166" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/infundibular_hypertrophy"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/infundibular_hypertrophy=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>Infundibular Hypertrophy</font>
														<strong>
															<em>
																<strong>
																	<em>
																		<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction" xd:xctname="CheckBox" xd:CtrlId="CTRL1167" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/right_ventricle_echocardiographic_findings/ventricular_findings/dynamic_outflow_tract_obstruction=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>Dynamic Outflow Tract Obstruction</font>
																	</em>
																</strong>
															</em>
														</strong>
													</em>
												</strong>
											</em>
										</strong>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 27px">
								<td colSpan="7" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">Left Atrium:</font>
										</strong>
									</div>
								</td>
								<td colSpan="8" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<strong>
												<u>
													<font face="Arial">Size:</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL761" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</u>
											</strong>
											<font style="FONT-SIZE: 7pt" face="Arial">Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL763" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;3398^SMALL^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">Small </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL765" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Mildly Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL762" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Mod Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL764" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Severely Dilated  <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1267" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/cavity_size/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A </font>
										<strong>
											<em>
												<font face="Arial">ASD:</font>
											</em>
										</strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value" xd:xctname="OptionButton" xd:CtrlId="CTRL863" xd:boundProp="xd:value" xd:onValue="3867^SECUNDUM^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value=&quot;3867^SECUNDUM^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Secundum </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value" xd:xctname="OptionButton" xd:CtrlId="CTRL864" xd:boundProp="xd:value" xd:onValue="3868^PRIMUM^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value=&quot;3868^PRIMUM^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Primum </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value" xd:xctname="OptionButton" xd:CtrlId="CTRL862" xd:boundProp="xd:value" xd:onValue="3869^SINUS VENOUS^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value=&quot;3869^SINUS VENOUS^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Sinus Venous <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL993" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 29px">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect_size/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect_size/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Verdana"> <font size="2">
												<font style="FONT-SIZE: 6pt" face="Arial">cm <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1268" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_septal_defect/value=&quot;&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>N/A<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_findings/thrombus" xd:xctname="CheckBox" xd:CtrlId="CTRL1248" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_findings/thrombus"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/left_atrium_echocardiographic_findings/atrial_findings/thrombus=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</font>
											</font>
										</font>
										<font face="Arial">
											<strong>
												<em>Thrombus</em>
											</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 27px">
								<td colSpan="7" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<em>
												<font face="Arial">Right Atrium:</font>
											</em>
										</strong>
									</div>
								</td>
								<td colSpan="8" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<strong>
												<u>
													<font face="Arial">Size: </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL771" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</u>
											</strong>
											<font style="FONT-SIZE: 7pt" face="Arial">Normal</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL773" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;3398^SMALL^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">Small</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL775" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Mildly Dilated</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL772" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Mod Dilated</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL774" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font face="Arial">
											<font style="FONT-SIZE: 7pt">Severely Dilated</font>
											<font size="1">     <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1269" xd:boundProp="xd:value" style="FONT-FAMILY: Arial">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/cavity_size/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>N/A<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/right_atrium_echocardiographic_findings/atrial_findings/thrombus" xd:xctname="CheckBox" xd:CtrlId="CTRL1134" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/right_atrium_echocardiographic_findings/atrial_findings/thrombus"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/right_atrium_echocardiographic_findings/atrial_findings/thrombus=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</font>
											<font size="2" face="Arial">
												<strong>
													<em>Thrombus</em>
												</strong>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 22px">
								<td colSpan="15" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<u>
												<font face="Arial">C. Valves</font>
											</u>
										</strong>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 35px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<u>
												<font face="Arial"></font>
											</u>
										</strong> </div>
									<div>
										<strong>
											<u>
												<font face="Arial">MV</font>
											</u>
										</strong>
									</div>
								</td>
								<td colSpan="14" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<font size="1">
												<strong>Anterior Leaflet: <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1501" xd:boundProp="xd:value" xd:onValue="3858^NOT VISUALIZED^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;3858^NOT VISUALIZED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>Not Well Visualized<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1212" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1211" xd:boundProp="xd:value" xd:onValue="3859^MILDLY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value=&quot;3859^MILDLY THICKENED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">
												<strong/>Mildly Thickened </font>
										</font>
										<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1213" xd:boundProp="xd:value" xd:onValue="3860^MODERATELY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value=&quot;3860^MODERATELY THICKENED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1" face="Arial"></font>
										</strong>
										<font size="1" face="Arial">Mod.Thickened </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1210" xd:boundProp="xd:value" xd:onValue="3861^SEVERELY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value=&quot;3861^SEVERELY THICKENED^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font face="Arial">
											<font size="1">
												<strong/>Severely Thickened <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1270" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_thickness/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>N/A</font>
										</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/elbow_deformity" xd:xctname="CheckBox" xd:CtrlId="CTRL1214" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/elbow_deformity"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/elbow_deformity=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Elbow Deformity</font>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/prolapse" xd:xctname="CheckBox" xd:CtrlId="CTRL1199" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/prolapse"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/prolapse=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Prolapse</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/cleft" xd:xctname="CheckBox" xd:CtrlId="CTRL1215" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/cleft"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/cleft=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Cleft</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/vegetation" xd:xctname="CheckBox" xd:CtrlId="CTRL1216" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/vegetation"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_structure/vegetation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Vegetation </font>
										</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_vegetation_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL1048" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 17px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:num">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_vegetation_size/value"/>
											</xsl:attribute>
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_vegetation_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_anterior_leaflet_vegetation_size/value"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font size="1" face="Arial"> cm</font>
										<font size="1" face="Arial"></font>
									</div>
									<div>
										<font face="Arial">
											<font size="1">
												<strong>Posterior Leaflet <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1495" xd:boundProp="xd:value" xd:onValue="3858^NOT VISUALIZED^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;3858^NOT VISUALIZED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>Not Well Visualized</font>
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1218" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;1115^NORMAL^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1"></font>
											</strong>
											<font size="1">Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1220" xd:boundProp="xd:value" xd:onValue="3859^MILDLY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;3859^MILDLY THICKENED^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">
												<strong/>Mildly Thickened </font>
										</font>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1217" xd:boundProp="xd:value" xd:onValue="3860^MODERATELY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;3860^MODERATELY THICKENED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1"></font>
											</strong>
											<font size="1">Mod. Thickened</font>
										</font>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1219" xd:boundProp="xd:value" xd:onValue="3861^SEVERELY THICKENED^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;3861^SEVERELY THICKENED^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font size="1"></font>
											</strong>
											<font size="1">Severely Thickened <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1271" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_thickness/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>N/A</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/tethering" xd:xctname="CheckBox" xd:CtrlId="CTRL1221" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/tethering"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/tethering=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Tethering          </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/prolapse" xd:xctname="CheckBox" xd:CtrlId="CTRL1222" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/prolapse"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/prolapse=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Prolapse</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/vegetation" xd:xctname="CheckBox" xd:CtrlId="CTRL1223" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/vegetation"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_structure/vegetation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font size="1">Vegetation  <span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_vegetation_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL1467" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_vegetation_size/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_vegetation_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_posterior_leaflet_vegetation_size/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
											</font>
										</font>
										<font face="Arial"></font>
										<font style="FONT-SIZE: 6pt" face="Arial">cm</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Post op</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>
												<em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1320" xd:boundProp="xd:value" xd:onValue="3872^MECHANICAL VALVE^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value=&quot;3872^MECHANICAL VALVE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>Mechanical<input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1321" xd:boundProp="xd:value" xd:onValue="3873^BIOPROSTHETIC VALVE^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value=&quot;3873^BIOPROSTHETIC VALVE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</em>
											</strong>
										</font>
										<font face="Arial">
											<strong>
												<em>Bioprosthetic</em>
											</strong>
										</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/well_seated" xd:xctname="CheckBox" xd:CtrlId="CTRL1303" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/well_seated"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/well_seated=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt" face="Arial">Well Seated</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/perivalvular_leak" xd:xctname="CheckBox" xd:CtrlId="CTRL1302" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/perivalvular_leak"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/perivalvular_leak=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font style="FONT-SIZE: 7pt">
											<font face="Arial">Perivalvular Leak</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/valve_dehiscence" xd:xctname="CheckBox" xd:CtrlId="CTRL1301" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/valve_dehiscence"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_appearance/valve_dehiscence=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">Dehiscence<input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1322" xd:boundProp="xd:value" xd:onValue="3896^VALVE REPAIR^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value=&quot;3896^VALVE REPAIR^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</font>
										</font>
										<font face="Arial">
											<strong>
												<em>Repair</em>
											</strong>
										</font>
										<font face="Verdana">
											<font style="FONT-SIZE: 7pt" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/commissurotomy" xd:xctname="CheckBox" xd:CtrlId="CTRL1305" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/commissurotomy"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/commissurotomy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Commissurotomy</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/anuloplasty_ring" xd:xctname="CheckBox" xd:CtrlId="CTRL1304" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/anuloplasty_ring"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/valve_repair_type/anuloplasty_ring=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">Annuloplasty Ring <font style="FONT-SIZE: 7pt"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1323" xd:boundProp="xd:value">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/post_operative_valve_type/value=&quot;&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</font>
												<strong>
													<em>
														<font size="2">N/A</font>
													</em>
												</strong>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Stenosis</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL824" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/stenosis/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/stenosis/value=&quot;1901^MILD^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Mild  </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL827" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/stenosis/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/stenosis/value=&quot;1900^MODERATE^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">Moderate </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL826" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/stenosis/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/stenosis/value=&quot;1903^SEVERE^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Severe  <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1275" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/stenosis/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/stenosis/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A   Area by Planimetry: </font>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_area_by_planimetry/value" xd:xctname="PlainText" xd:CtrlId="CTRL841" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 40px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_area_by_planimetry/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_area_by_planimetry/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_area_by_planimetry/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">
											<font size="1"> </font>
											<font style="FONT-SIZE: 6pt">cm</font>
											<font size="1">  Pres. Half Time:</font>
										</font>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_pressure_half_time/value" xd:xctname="PlainText" xd:CtrlId="CTRL842" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 31px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_pressure_half_time/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_pressure_half_time/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_pressure_half_time/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">
											<font style="FONT-SIZE: 6pt"> ms    </font>
											<font size="1">Pk Grad:</font>
										</font>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/peak_gradient_across_mitral_valve/value" xd:xctname="PlainText" xd:CtrlId="CTRL843" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 28px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/peak_gradient_across_mitral_valve/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/peak_gradient_across_mitral_valve/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/peak_gradient_across_mitral_valve/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
										<font face="Arial">
											<font size="1"> </font>
											<font style="FONT-SIZE: 6pt">mmHg</font>
											<font size="1">    Mean Grad: </font>
										</font>
										<font face="Verdana"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_mean_gradient/value" xd:xctname="PlainText" xd:CtrlId="CTRL844" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 26px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_mean_gradient/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/mitral_valve_mean_gradient/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/mitral_valve_mean_gradient/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span> </font>
										<font style="FONT-SIZE: 6pt" face="Arial">mmHg</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<font size="1" face="Arial">
												<strong>Valvuloplasty </strong>
											</font>
										</font>
									</div>
									<div>
										<font face="Verdana">
											<font size="1" face="Arial">
												<strong>Score:</strong>
											</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/valvuloplasty_score/value" xd:xctname="PlainText" xd:CtrlId="CTRL845" xd:datafmt="&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 31px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/valvuloplasty_score/value"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/mitral_valve_findings/valvuloplasty_score/value,&quot;number&quot;,&quot;numDigits:0;negativeOrder:1;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/valvuloplasty_score/value"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</font>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<font style="FONT-SIZE: 7pt">Subvalvular Thickening </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL848" xd:boundProp="xd:value" xd:onValue="3885^1^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value=&quot;3885^1^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">1 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL847" xd:boundProp="xd:value" xd:onValue="3886^2^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value=&quot;3886^2^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">2 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL846" xd:boundProp="xd:value" xd:onValue="3887^3^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value=&quot;3887^3^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">3 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL849" xd:boundProp="xd:value" xd:onValue="3888^4^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value=&quot;3888^4^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">4 <input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1276" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/subvalvular_thickening/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>N/A                   </font>
										</font>
										<font face="Arial">
											<font style="FONT-SIZE: 7pt">Leaflet Mobility </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value" xd:xctname="OptionButton" xd:CtrlId="CTRL860" xd:boundProp="xd:value" xd:onValue="3885^1^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value=&quot;3885^1^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">1 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value" xd:xctname="OptionButton" xd:CtrlId="CTRL861" xd:boundProp="xd:value" xd:onValue="3886^2^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value=&quot;3886^2^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">2 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value" xd:xctname="OptionButton" xd:CtrlId="CTRL858" xd:boundProp="xd:value" xd:onValue="3887^3^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value=&quot;3887^3^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font style="FONT-SIZE: 7pt" face="Arial">3 </font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value" xd:xctname="OptionButton" xd:CtrlId="CTRL859" xd:boundProp="xd:value" xd:onValue="3888^4^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value=&quot;3888^4^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font face="Arial">
												<font style="FONT-SIZE: 7pt">4  <input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1277" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_mobility/value=&quot;&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>N/A </font>
											</font>
										</font>
										<font face="Arial">
											<font face="Arial">
												<font style="FONT-SIZE: 7pt"></font>
											</font>
										</font>
									</div>
									<div>
										<font face="Arial">
											<font face="Arial">
												<font style="FONT-SIZE: 7pt" face="Arial">Leaflet Thickening</font>
												<font face="Verdana">
													<font face="Verdana"><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL855" xd:boundProp="xd:value" xd:onValue="3885^1^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value=&quot;3885^1^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font style="FONT-SIZE: 7pt" face="Arial">1</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL856" xd:boundProp="xd:value" xd:onValue="3886^2^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value=&quot;3886^2^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font style="FONT-SIZE: 7pt" face="Arial">2</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL857" xd:boundProp="xd:value" xd:onValue="3887^3^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value=&quot;3887^3^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font style="FONT-SIZE: 7pt" face="Arial">3</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL854" xd:boundProp="xd:value" xd:onValue="3888^4^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value=&quot;3888^4^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
													</font>
												</font>
												<font face="Arial">
													<font style="FONT-SIZE: 7pt">4 <input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1279" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_thickening/value=&quot;&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>N/A                              </font>
													<font style="FONT-SIZE: 7pt" face="Arial">Leaflet Calcification</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value" xd:xctname="OptionButton" xd:CtrlId="CTRL852" xd:boundProp="xd:value" xd:onValue="3885^1^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value=&quot;3885^1^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font style="FONT-SIZE: 7pt" face="Arial">1</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value" xd:xctname="OptionButton" xd:CtrlId="CTRL853" xd:boundProp="xd:value" xd:onValue="3886^2^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value=&quot;3886^2^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font style="FONT-SIZE: 7pt" face="Arial">2</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value" xd:xctname="OptionButton" xd:CtrlId="CTRL850" xd:boundProp="xd:value" xd:onValue="3887^3^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value=&quot;3887^3^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font style="FONT-SIZE: 7pt" face="Arial">3</font><input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value" xd:xctname="OptionButton" xd:CtrlId="CTRL851" xd:boundProp="xd:value" xd:onValue="3888^4^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value=&quot;3888^4^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</font>
											</font>
										</font>
										<font style="FONT-SIZE: 7pt" face="Arial">4 <input class="xdBehavior_Boolean" title="" value="on" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1280" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: 7pt">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/leaflet_calcification/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Regurg</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL829" xd:boundProp="xd:value" xd:onValue="3898^TRIVIAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;3898^TRIVIAL^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> Trivial </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL830" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;1901^MILD^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> 1+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL828" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;1900^MODERATE^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> 2+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL832" xd:boundProp="xd:value" xd:onValue="3894^MODERATE TO SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;3894^MODERATE TO SEVERE^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial">3+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL831" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
											</xsl:attribute>
											<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;1903^SEVERE^99DCT&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font size="1" face="Arial"> 4+ <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/mitral_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1281" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitation/value=&quot;&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>N/A </font>
										<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/central_jet" xd:xctname="CheckBox" xd:CtrlId="CTRL1169" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/central_jet"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/central_jet=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Central Jet </font>
										<font size="1" face="Arial"> <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/posteriorly_directed_jet" xd:xctname="CheckBox" xd:CtrlId="CTRL1170" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/posteriorly_directed_jet"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/posteriorly_directed_jet=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Post. Directed Jet</font>
										<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/flow_reversal_in_the_pulmonary_veins" xd:xctname="CheckBox" xd:CtrlId="CTRL1171" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/flow_reversal_in_the_pulmonary_veins"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/flow_reversal_in_the_pulmonary_veins=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Flow Reversal in the Pulm. Veins</font>
										<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/anteriorly_directed_jet" xd:xctname="CheckBox" xd:CtrlId="CTRL1172" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/anteriorly_directed_jet"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/mitral_valve_findings/regurgitant_valve_findings/anteriorly_directed_jet=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Ant. Directed Jet</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 15px">
								<td colSpan="2" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<u>
												<font face="Arial">AV:</font>
											</u>
										</strong>
									</div>
								</td>
								<td colSpan="13" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<div>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/not_visualized" xd:xctname="CheckBox" xd:CtrlId="CTRL1237" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/not_visualized"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/not_visualized=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Not Well Visualized</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL1236" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/normal"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/normal=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Normal</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/trileaflet" xd:xctname="CheckBox" xd:CtrlId="CTRL1235" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/trileaflet"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/trileaflet=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Trileaflet</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/bicuspid" xd:xctname="CheckBox" xd:CtrlId="CTRL1234" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/bicuspid"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/bicuspid=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Bicuspid</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/mildly_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1233" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/mildly_thickened"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/mildly_thickened=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Mildly Thickened</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/moderately_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1232" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/moderately_thickened"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/moderately_thickened=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Moderately Thickened</font>
											<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/severely_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1231" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/severely_thickened"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/severely_thickened=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Severely Thickened</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/vegetation" xd:xctname="CheckBox" xd:CtrlId="CTRL1230" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/vegetation"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_structure/vegetation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font face="Arial">
												<font size="1">Vegetation </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_vegetation_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL994" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 42px">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_vegetation_size/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/aortic_valve_vegetation_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_vegetation_size/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font style="FONT-SIZE: 6pt">cm</font>
											</font>
										</div>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Post op</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<font face="Verdana"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1328" xd:boundProp="xd:value" xd:onValue="3872^MECHANICAL VALVE^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value=&quot;3872^MECHANICAL VALVE^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font face="Arial">
																	<strong>
																		<em>Mechanical<input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1327" xd:boundProp="xd:value" xd:onValue="3873^BIOPROSTHETIC VALVE^99DCT">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value=&quot;3873^BIOPROSTHETIC VALVE^99DCT&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>
																		</em>
																	</strong>
																</font>
																<font face="Arial">
																	<strong>
																		<em>Bioprosthetic </em>
																	</strong>
																</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/well_seated" xd:xctname="CheckBox" xd:CtrlId="CTRL1308" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/well_seated"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/well_seated=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font style="FONT-SIZE: 7pt">
																	<font face="Arial">Well Seated</font>
																	<font style="FONT-SIZE: 7pt">
																		<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/perivalvular_leak" xd:xctname="CheckBox" xd:CtrlId="CTRL1307" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/perivalvular_leak"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/perivalvular_leak=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>Perivalvular Leak</font>
																		<font style="FONT-SIZE: 7pt" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/valve_dehiscence" xd:xctname="CheckBox" xd:CtrlId="CTRL1306" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/valve_dehiscence"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_appearance/valve_dehiscence=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>Dehiscence<input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1324" xd:boundProp="xd:value" xd:onValue="3896^VALVE REPAIR^99DCT">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value=&quot;3896^VALVE REPAIR^99DCT&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>
																		</font>
																	</font>
																</font>
																<font face="Verdana"></font>
																<font face="Arial">
																	<strong>
																		<em>Repair <font style="FONT-SIZE: 7pt"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1329" xd:boundProp="xd:value">
																					<xsl:attribute name="xd:value">
																						<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value"/>
																					</xsl:attribute>
																					<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/post_operative_valve_type/value=&quot;&quot;">
																						<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																					</xsl:if>
																				</input>
																			</font>N/A</em>
																	</strong>
																</font>
															</font>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Stenosis</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL878" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/stenosis/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/stenosis/value=&quot;1901^MILD^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Mild</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL881" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/stenosis/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/stenosis/value=&quot;1900^MODERATE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Moderate</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL879" xd:boundProp="xd:value" xd:onValue="3894^MODERATE TO SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/stenosis/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/stenosis/value=&quot;3894^MODERATE TO SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Mod-Severe</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL880" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/stenosis/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/stenosis/value=&quot;1903^SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Severe <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1283" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/stenosis/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/stenosis/value=&quot;&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>N/A    </font>
														<font size="1" face="Arial">Calculated Valve Area</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aotric_calculated_valve_area/value" xd:xctname="PlainText" xd:CtrlId="CTRL891" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 27px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aotric_calculated_valve_area/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/aotric_calculated_valve_area/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aotric_calculated_valve_area/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
														<font face="Arial">
															<font size="1"> </font>
															<font style="FONT-SIZE: 6pt">cm</font>
															<font size="1"> Pk. Gradient</font>
														</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/peak_gradient_across_aortic_valve/value" xd:xctname="PlainText" xd:CtrlId="CTRL893" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 32px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/peak_gradient_across_aortic_valve/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/peak_gradient_across_aortic_valve/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/peak_gradient_across_aortic_valve/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
														<font face="Arial">
															<font size="1"> </font>
															<font style="FONT-SIZE: 6pt">mmHg</font>
															<font size="1"> Mean Grad.</font>
														</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_mean_gradient/value" xd:xctname="PlainText" xd:CtrlId="CTRL894" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 32px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_mean_gradient/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/aortic_valve_mean_gradient/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_mean_gradient/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
														<font face="Arial">
															<font size="1"> </font>
															<font style="FONT-SIZE: 6pt">mmHg</font>
															<font size="1"> LVOT Diameter:</font>
														</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/left_ventricular_outflow_tract_diameter/value" xd:xctname="PlainText" xd:CtrlId="CTRL895" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 29px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/left_ventricular_outflow_tract_diameter/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/left_ventricular_outflow_tract_diameter/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/left_ventricular_outflow_tract_diameter/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
														<font style="FONT-SIZE: 6pt" face="Arial">cm</font>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Regurg</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL868" xd:boundProp="xd:value" xd:onValue="3898^TRIVIAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;3898^TRIVIAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial"> Trivial </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL869" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;1901^MILD^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">1+</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL867" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;1900^MODERATE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">2+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL871" xd:boundProp="xd:value" xd:onValue="3894^MODERATE TO SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;3894^MODERATE TO SEVERE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial"> 3+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL870" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;1903^SEVERE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial"> 4+   <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aortic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1284" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitation/value=&quot;&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>N/A                Pressure Half Time:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_pressure_half_time/value" xd:xctname="PlainText" xd:CtrlId="CTRL904" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 33px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:num">
															<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_pressure_half_time/value"/>
														</xsl:attribute>
														<xsl:choose>
															<xsl:when test="function-available('xdFormatting:formatString')">
																<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aortic_valve_findings/aortic_valve_pressure_half_time/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/aortic_valve_pressure_half_time/value"/>
															</xsl:otherwise>
														</xsl:choose>
													</span>
													<font face="Verdana">
														<font style="FONT-SIZE: 6pt" face="Arial">ms</font>
													</font>
													<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/aortic_valve_findings/regurgitant_valve_findings/diastolic_flow_reversal_in_the_descending_aorta" xd:xctname="CheckBox" xd:CtrlId="CTRL1178" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aortic_valve_findings/regurgitant_valve_findings/diastolic_flow_reversal_in_the_descending_aorta"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aortic_valve_findings/regurgitant_valve_findings/diastolic_flow_reversal_in_the_descending_aorta=&quot;true&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input> Diastolic Flow Reversal In The Descending Aorta</font>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Aortic Root</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<div>
												<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL995" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;1115^NORMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1"> Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL999" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1"> Mildly Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL997" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1"> Moderately Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL998" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1"> Severely Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL996" xd:boundProp="xd:value" xd:onValue="3907^ANEURYSMAL^99DCT" style="FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;3907^ANEURYSMAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1"> Aneurysmal</font>
													<font style="FONT-SIZE: 6pt"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1285" xd:boundProp="xd:value" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/aortic_root_dilation/value=&quot;&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>N/A</font>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Ascending Aorta</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<div>
												<div>
													<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1001" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value=&quot;1115^NORMAL^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1">Normal  </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1004" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1">Mildly Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1002" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1">Moderately Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1005" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1">Severely Dilated</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1003" xd:boundProp="xd:value" xd:onValue="3907^ANEURYSMAL^99DCT" style="FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/aorta_findings/ascending_aorta_structure/value=&quot;3907^ANEURYSMAL^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1">Aneurysmal </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/aortic_aneurysm_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL1006" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 37px">
															<xsl:attribute name="xd:num">
																<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_aneurysm_size/value"/>
															</xsl:attribute>
															<xsl:choose>
																<xsl:when test="function-available('xdFormatting:formatString')">
																	<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aorta_findings/aortic_aneurysm_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																</xsl:when>
																<xsl:otherwise>
																	<xsl:value-of select="obs/echocardiographic_result/aorta_findings/aortic_aneurysm_size/value"/>
																</xsl:otherwise>
															</xsl:choose>
														</span>
														<font style="FONT-SIZE: 6pt">cm</font>
														<font size="1">  </font>
														<font style="FONT-SIZE: 6pt"></font>
														<font face="Arial">
															<font size="1"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/coarctation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/coarctation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1009" xd:boundProp="xd:value" xd:onValue="1065^YES^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/aorta_findings/coarctation/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/aorta_findings/coarctation/value=&quot;1065^YES^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>Coarctation  <font size="1">Pk. Grad</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/peak_gradient_across_coarctation/value" xd:xctname="PlainText" xd:CtrlId="CTRL1007" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 32px">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="obs/echocardiographic_result/aorta_findings/peak_gradient_across_coarctation/value"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/aorta_findings/peak_gradient_across_coarctation/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="obs/echocardiographic_result/aorta_findings/peak_gradient_across_coarctation/value"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font style="FONT-SIZE: 6pt">mmHg</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/aorta_findings/coarctation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/aorta_findings/coarctation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1286" xd:boundProp="xd:value">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/aorta_findings/coarctation/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/aorta_findings/coarctation/value=&quot;&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>N/A</font>
														</font>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="3" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<u>
												<font face="Arial">TV:</font>
											</u>
										</strong>
									</div>
								</td>
								<td colSpan="12" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div/>
									<div>
										<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/not_visualized" xd:xctname="CheckBox" xd:CtrlId="CTRL1365" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/not_visualized"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/not_visualized=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font face="Arial">
												<font size="1">Not Well Visualized  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL1366" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/normal"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/normal=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</font>
												<font face="Arial">
													<font size="1">Normal  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/mildly_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1367" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/mildly_thickened"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/mildly_thickened=&quot;true&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
													</font>
													<font face="Arial">
														<font size="1">Mildly Thickened   <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/moderately_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1368" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/moderately_thickened"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/moderately_thickened=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
														</font>
														<font size="1" face="Arial">Moderately Thickened  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/severely_thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1369" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/severely_thickened"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/severely_thickened=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
														</font>
													</font>
												</font>
											</font>
											<font size="1" face="Arial">Severely Thickened    <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/vegetation" xd:xctname="CheckBox" xd:CtrlId="CTRL1364" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/vegetation"/>
													</xsl:attribute>
													<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_structure/vegetation=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Vegetation (</font>
											<font face="Arial">
												<font size="1"></font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_vegetation_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL1363" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_vegetation_size/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_vegetation_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_vegetation_size/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<font style="FONT-SIZE: 6pt">cm)</font>
											</font>
										</div>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 6pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Post op</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<font face="Verdana">
																<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1377" xd:boundProp="xd:value" xd:onValue="3872^MECHANICAL VALVE^99DCT">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value=&quot;3872^MECHANICAL VALVE^99DCT&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>
																	<strong>
																		<em>Mechanical </em>
																	</strong>
																</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1378" xd:boundProp="xd:value" xd:onValue="3873^BIOPROSTHETIC VALVE^99DCT" style="FONT-STYLE: italic; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value=&quot;3873^BIOPROSTHETIC VALVE^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font face="Arial">
																	<strong>
																		<em>Bioprosthetic</em>
																	</strong>
																</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/well_seated" xd:xctname="CheckBox" xd:CtrlId="CTRL1385" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/well_seated"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/well_seated=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Well-Seated </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/perivalvular_leak" xd:xctname="CheckBox" xd:CtrlId="CTRL1386" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/perivalvular_leak"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/perivalvular_leak=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Perivalvular Leak </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/valve_dehiscence" xd:xctname="CheckBox" xd:CtrlId="CTRL1387" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/valve_dehiscence"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_appearance/valve_dehiscence=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Dehiscence</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1376" xd:boundProp="xd:value" xd:onValue="3896^VALVE REPAIR^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value=&quot;3896^VALVE REPAIR^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font face="Arial">
																	<em>
																		<strong>Repair <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/commissurotomy" xd:xctname="CheckBox" xd:CtrlId="CTRL1388" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/commissurotomy"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/commissurotomy=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>
																		</strong>
																	</em>
																	<font style="FONT-SIZE: 7pt">Commissurotomy</font>
																	<em>
																		<strong>
																			<font style="FONT-SIZE: 7pt"></font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/anuloplasty_ring" xd:xctname="CheckBox" xd:CtrlId="CTRL1389" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-SIZE: 7pt">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/anuloplasty_ring"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/valve_repair_type/anuloplasty_ring=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>
																		</strong>
																	</em>
																	<font style="FONT-SIZE: 7pt">Anuloplasty Ring</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1379" xd:boundProp="xd:value" style="FONT-STYLE: italic; FONT-SIZE: x-small; FONT-WEIGHT: bold">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/post_operative_valve_type/value=&quot;&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>
																	<strong>
																		<em>N/A</em>
																	</strong>
																</font>
															</font>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 1pt; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 6pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Regurg</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 1pt; BORDER-LEFT: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL928" xd:boundProp="xd:value" xd:onValue="3898^TRIVIAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value=&quot;3898^TRIVIAL^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Trivial</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL929" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value=&quot;1901^MILD^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">1+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL927" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value=&quot;1900^MODERATE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">2+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL931" xd:boundProp="xd:value" xd:onValue="3894^MODERATE TO SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value=&quot;3894^MODERATE TO SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">3+ </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL930" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitation/value=&quot;1903^SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">4+ </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/central_jet" xd:xctname="CheckBox" xd:CtrlId="CTRL1391" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/central_jet"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/central_jet=&quot;true&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Central Jet</font>
														<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/septally_directed_jet" xd:xctname="CheckBox" xd:CtrlId="CTRL1392" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/septally_directed_jet"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/septally_directed_jet=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>Septally Directed Jet</font>
														<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/flow_reversal_in_hepatic_veins" xd:xctname="CheckBox" xd:CtrlId="CTRL1393" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/flow_reversal_in_hepatic_veins"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/flow_reversal_in_hepatic_veins=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>Flow Reversal in the Hepatic Veins</font>
														<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/failure_of_coaptation" xd:xctname="CheckBox" xd:CtrlId="CTRL1394" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/failure_of_coaptation"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/regurgitant_valve_findings/failure_of_coaptation=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>Failure of Coaptation</font>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Stenosis</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 1pt; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font color="#ff0000" face="Verdana">
											<div>
												<div>
													<div>
														<font color="#ff0000">
															<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1395" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: xx-small">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value=&quot;1901^MILD^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font color="#000000">
																	<font size="1" face="Arial">Mild </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1398" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: xx-small">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value=&quot;1900^MODERATE^99DCT&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>
																	<font size="1" face="Arial">Moderate</font>
																	<font size="1" face="Arial"></font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1397" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: xx-small">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value=&quot;1903^SEVERE^99DCT&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>
																</font>
																<font color="#ff0000" size="1" face="Arial">
																	<font color="#000000">Severe  </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1399" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: xx-small">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/tricuspid_valve_findings/stenosis/value=&quot;&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>
																	<font color="#000000">N/A   <font face="Arial">
																			<font size="1">Pres. Half Time:</font>
																		</font>
																		<font face="Arial">
																			<font style="FONT-SIZE: 6pt"><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_pressure_half_time/value" xd:xctname="PlainText" xd:CtrlId="CTRL1403" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
																					<xsl:attribute name="xd:num">
																						<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_pressure_half_time/value"/>
																					</xsl:attribute>
																					<xsl:choose>
																						<xsl:when test="function-available('xdFormatting:formatString')">
																							<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_pressure_half_time/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																						</xsl:when>
																						<xsl:otherwise>
																							<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_pressure_half_time/value"/>
																						</xsl:otherwise>
																					</xsl:choose>
																				</span>ms    </font>
																			<font size="1">Pk Grad:<span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/peak_gradient_across_tricuspid_valve/value" xd:xctname="PlainText" xd:CtrlId="CTRL1404" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
																					<xsl:attribute name="xd:num">
																						<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/peak_gradient_across_tricuspid_valve/value"/>
																					</xsl:attribute>
																					<xsl:choose>
																						<xsl:when test="function-available('xdFormatting:formatString')">
																							<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/tricuspid_valve_findings/peak_gradient_across_tricuspid_valve/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																						</xsl:when>
																						<xsl:otherwise>
																							<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/peak_gradient_across_tricuspid_valve/value"/>
																						</xsl:otherwise>
																					</xsl:choose>
																				</span>
																			</font>
																		</font>
																		<font face="Arial">
																			<font style="FONT-SIZE: 6pt">mmHg</font>
																			<font size="1">    Mean Grad:<span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_mean_gradient/value" xd:xctname="PlainText" xd:CtrlId="CTRL1405" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 5%">
																					<xsl:attribute name="xd:num">
																						<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_mean_gradient/value"/>
																					</xsl:attribute>
																					<xsl:choose>
																						<xsl:when test="function-available('xdFormatting:formatString')">
																							<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_mean_gradient/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																						</xsl:when>
																						<xsl:otherwise>
																							<xsl:value-of select="obs/echocardiographic_result/tricuspid_valve_findings/tricuspid_valve_mean_gradient/value"/>
																						</xsl:otherwise>
																					</xsl:choose>
																				</span> </font>
																		</font>
																		<font face="Verdana"> </font>
																		<font style="FONT-SIZE: 6pt" face="Arial">mmHg</font>
																	</font>
																</font>
															</div>
														</font>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="4" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #dbdbdb; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<u>
												<font face="Arial">PV</font>
											</u>
										</strong>
									</div>
								</td>
								<td colSpan="11" style="BORDER-BOTTOM: #808080 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL1179" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/normal"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/normal=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Normal</font>
										<font size="1" face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1180" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/thickened"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/thickened=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Thickened<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/systolic_doming" xd:xctname="CheckBox" xd:CtrlId="CTRL1181" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/systolic_doming"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/systolic_doming=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Systolic Doming<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/dysplastic" xd:xctname="CheckBox" xd:CtrlId="CTRL1182" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/dysplastic"/>
												</xsl:attribute>
												<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/pulmonic_valve_structure/dysplastic=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input> Dysplastic</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: transparent; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">
												<em>Regurg</em>
											</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #808080 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL933" xd:boundProp="xd:value" xd:onValue="3898^TRIVIAL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value=&quot;3898^TRIVIAL^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Trivial </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL934" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value=&quot;1901^MILD^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Mild </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL932" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value=&quot;1900^MODERATE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Moderate </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL935" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value=&quot;1903^SEVERE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Severe <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1288" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/regurgitation/value=&quot;&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>N/A   </font>
													<strong>
														<font face="Arial">
															<em>
																<u>Stenosis</u>
															</em>
														</font>
													</strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL937" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value=&quot;1901^MILD^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Mild</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL940" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value=&quot;1900^MODERATE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Moderate</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL939" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value"/>
														</xsl:attribute>
														<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value=&quot;1903^SEVERE^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
													<font size="1" face="Arial">Severe <font style="FONT-SIZE: 6pt"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1289" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/pulmonic_valve_findings/stenosis/value=&quot;&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
														</font>
														<font size="1">N/A </font>     Pk. Gradient</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonic_valve_findings/peak_gradient_across_pulmonic_valve/value" xd:xctname="PlainText" xd:CtrlId="CTRL945" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 48px; FONT-FAMILY: Arial; FONT-SIZE: 6pt">
														<xsl:attribute name="xd:num">
															<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/peak_gradient_across_pulmonic_valve/value"/>
														</xsl:attribute>
														<xsl:choose>
															<xsl:when test="function-available('xdFormatting:formatString')">
																<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/pulmonic_valve_findings/peak_gradient_across_pulmonic_valve/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="obs/echocardiographic_result/pulmonic_valve_findings/peak_gradient_across_pulmonic_valve/value"/>
															</xsl:otherwise>
														</xsl:choose>
													</span>
													<font style="FONT-SIZE: 6pt" face="Arial">mmHg </font>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">D. Main PA</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<font face="Verdana"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1244" xd:boundProp="xd:value" xd:onValue="1115^NORMAL^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;1115^NORMAL^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Normal </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1245" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;3398^SMALL^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Small </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1247" xd:boundProp="xd:value" xd:onValue="3830^MILDLY DILATED^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;3830^MILDLY DILATED^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Mildly Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1246" xd:boundProp="xd:value" xd:onValue="3831^MODERATELY DILATED^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;3831^MODERATELY DILATED^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Moderately Dilated </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1243" xd:boundProp="xd:value" xd:onValue="3832^SEVERELY DILATED^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;3832^SEVERELY DILATED^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Severely Dilated </font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_size/value" xd:xctname="PlainText" xd:CtrlId="CTRL952" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 28px; FONT-FAMILY: Arial; FONT-SIZE: 6pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_size/value"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/main_pulmonary_artery_size/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_size/value"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font style="FONT-SIZE: 6pt" face="Arial">cm    <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/main_pulmonary_artery_findings/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/main_pulmonary_artery_findings/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1291" xd:boundProp="xd:value">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/main_pulmonary_artery_findings/value"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/main_pulmonary_artery_findings/value=&quot;&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>N/A</font>
															</font>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">E. PASP:</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL954" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;1901^MILD^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Mild </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL956" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;1900^MODERATE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Moderate </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL955" xd:boundProp="xd:value" xd:onValue="3894^MODERATE TO SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;3894^MODERATE TO SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Moderate to Severe </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL953" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;1903^SEVERE^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Severe </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL957" xd:boundProp="xd:value" xd:onValue="3914^CAN'T ESTIMATE SECONDARY TO INCOMPLETE REGURGITANT JET^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
															</xsl:attribute>
															<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;3914^CAN'T ESTIMATE SECONDARY TO INCOMPLETE REGURGITANT JET^99DCT&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font size="1" face="Arial">Can't Estimate Secondary to Incomplete Regurgitant Jet <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1292" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/pulmonary_artery_systolic_pressure/value=&quot;&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>N/A</font>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">F. IVC:</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/inferior_vena_cava_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/inferior_vena_cava_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL961" xd:boundProp="xd:value" xd:onValue="3398^SMALL^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/inferior_vena_cava_size/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/inferior_vena_cava_size/value=&quot;3398^SMALL^99DCT&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font size="1" face="Arial">Small </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/inferior_vena_cava_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/inferior_vena_cava_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL959" xd:boundProp="xd:value" xd:onValue="3915^LESS THAN 1.8 CM, COLLAPSES MORE THAN 50 PERCENT^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/inferior_vena_cava_size/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/inferior_vena_cava_size/value=&quot;3915^LESS THAN 1.8 CM, COLLAPSES MORE THAN 50 PERCENT^99DCT&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font size="1" face="Arial"> &lt; 1.8 cm, collapses &lt; 50% </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/inferior_vena_cava_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/inferior_vena_cava_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL958" xd:boundProp="xd:value" xd:onValue="3916^GREATER 1.8 CM OR COLLAPSES LESS THAN 50 PERCENT^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/inferior_vena_cava_size/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/inferior_vena_cava_size/value=&quot;3916^GREATER 1.8 CM OR COLLAPSES LESS THAN 50 PERCENT^99DCT&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font size="1" face="Arial"> &gt; 1.8 cm or collapses &lt; 50% </font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/inferior_vena_cava_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/inferior_vena_cava_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL960" xd:boundProp="xd:value" xd:onValue="3917^GREATER THAN 1.8 CM AND COLLAPSES MORE THAN 50 PERCENT^99DCT" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/inferior_vena_cava_size/value"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/inferior_vena_cava_size/value=&quot;3917^GREATER THAN 1.8 CM AND COLLAPSES MORE THAN 50 PERCENT^99DCT&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font size="1" face="Arial"> &gt; 1.8 cm and collapses &gt; 50% <input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/echocardiographic_result/inferior_vena_cava_size/value)}" tabIndex="0" xd:binding="obs/echocardiographic_result/inferior_vena_cava_size/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1290" xd:boundProp="xd:value" style="FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/inferior_vena_cava_size/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/inferior_vena_cava_size/value=&quot;&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>N/A</font>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">G. Pericardium:</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardium_findings/normal" xd:xctname="CheckBox" xd:CtrlId="CTRL1251" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/pericardium_findings/normal"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/pericardium_findings/normal=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font face="Arial">
																<font size="1">Normal</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardium_findings/thickened" xd:xctname="CheckBox" xd:CtrlId="CTRL1250" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardium_findings/thickened"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardium_findings/thickened=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">Thick</font>
															</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardium_findings/restricted_motion" xd:xctname="CheckBox" xd:CtrlId="CTRL1249" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																<xsl:attribute name="xd:value">
																	<xsl:value-of select="obs/echocardiographic_result/pericardium_findings/restricted_motion"/>
																</xsl:attribute>
																<xsl:if test="obs/echocardiographic_result/pericardium_findings/restricted_motion=&quot;true&quot;">
																	<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																</xsl:if>
															</input>
															<font face="Arial">
																<font size="1">Restricted Motion </font>
																<em>
																	<strong>Effu</strong>
																</em>
															</font>
															<font face="Arial">
																<em>
																	<strong>ssion</strong>
																</em><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/trivial" xd:xctname="CheckBox" xd:CtrlId="CTRL1252" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/trivial"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/trivial=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Trivial</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/small" xd:xctname="CheckBox" xd:CtrlId="CTRL1253" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/small"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/small=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Small</font>
																<font size="1"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/moderate" xd:xctname="CheckBox" xd:CtrlId="CTRL1254" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/moderate"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/pericardial_effusion/moderate=&quot;true&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>Mod.</font>
																<font size="1"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/severe" xd:xctname="CheckBox" xd:CtrlId="CTRL1255" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/severe"/>
																		</xsl:attribute>
																		<xsl:if test="obs/echocardiographic_result/pericardial_effusion/severe=&quot;true&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input>Lrg.</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/free_flowing" xd:xctname="CheckBox" xd:CtrlId="CTRL1256" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/free_flowing"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/free_flowing=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Free Flowing</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/loculated" xd:xctname="CheckBox" xd:CtrlId="CTRL1257" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/loculated"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/loculated=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Loculated</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/tamponade_physiology" xd:xctname="CheckBox" xd:CtrlId="CTRL1258" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/tamponade_physiology"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/tamponade_physiology=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Tamponade</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/pericardial_effusion/constrictive_physiology" xd:xctname="CheckBox" xd:CtrlId="CTRL1259" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/pericardial_effusion/constrictive_physiology"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/pericardial_effusion/constrictive_physiology=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1">Constrictive Physiology</font>
															</font>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">H. Congenital:</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/tetrology_of_fallot" xd:xctname="CheckBox" xd:CtrlId="CTRL1185" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/tetrology_of_fallot"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/tetrology_of_fallot=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<strong>
																	<em>
																		<font face="Arial">TOF</font>
																	</em>
																</strong>
																<strong>
																	<em>
																		<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/single_ventricle" xd:xctname="CheckBox" xd:CtrlId="CTRL1184" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/single_ventricle"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/single_ventricle=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>Single Vent</font>
																	</em>
																</strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/patent_ductus_arteriosum" xd:xctname="CheckBox" xd:CtrlId="CTRL1186" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/patent_ductus_arteriosum"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/patent_ductus_arteriosum=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font face="Arial">
																	<strong>
																		<em>PDA  </em>
																	</strong>
																	<font size="1">Pk. Grad.</font>
																</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/pda_peak_gradient/value" xd:xctname="PlainText" xd:CtrlId="CTRL974" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 26px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="obs/echocardiographic_result/pda_peak_gradient/value"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/pda_peak_gradient/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="obs/echocardiographic_result/pda_peak_gradient/value"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font style="FONT-SIZE: 6pt" face="Arial">mmHg </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/complete_atrioventricular_canal" xd:xctname="CheckBox" xd:CtrlId="CTRL1187" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/complete_atrioventricular_canal"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/complete_atrioventricular_canal=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<strong>
																	<em>
																		<font face="Arial">Comp AV Canal</font>
																	</em>
																</strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/ebstein_apos_s_anomaly" xd:xctname="CheckBox" xd:CtrlId="CTRL1188" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/ebstein_apos_s_anomaly"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/ebstein_apos_s_anomaly=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<strong>
																	<em>
																		<font face="Arial">Ebstein's</font>
																	</em>
																</strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/truncus_arteriosus" xd:xctname="CheckBox" xd:CtrlId="CTRL1189" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/truncus_arteriosus"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/truncus_arteriosus=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<strong>
																	<em>
																		<font face="Arial">Truncus <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/l_transposition_of_the_great_arteries" xd:xctname="CheckBox" xd:CtrlId="CTRL1020" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/l_transposition_of_the_great_arteries"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/l_transposition_of_the_great_arteries=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>L-TGA<input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/d_transposition_of_the_great_arteries" xd:xctname="CheckBox" xd:CtrlId="CTRL1019" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																				<xsl:attribute name="xd:value">
																					<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/d_transposition_of_the_great_arteries"/>
																				</xsl:attribute>
																				<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/d_transposition_of_the_great_arteries=&quot;true&quot;">
																					<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																				</xsl:if>
																			</input>D-TGA</font>
																	</em>
																</strong>
															</div>
															<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/congenital_heart_disease_type/subaortic_membrane" xd:xctname="CheckBox" xd:CtrlId="CTRL1190" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/congenital_heart_disease_type/subaortic_membrane"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/congenital_heart_disease_type/subaortic_membrane=&quot;true&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<strong>
																	<em>
																		<font face="Arial">Subaortic Memb.</font>
																	</em>
																</strong>
															</div>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">I. Carotid</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<div>
																<font size="1" face="Arial">Left carotid intimal-medial thickness:</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/left_carotid_intimal_thickness/value" xd:xctname="PlainText" xd:CtrlId="CTRL977" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 53px; FONT-FAMILY: Arial; FONT-SIZE: 6pt">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="obs/echocardiographic_result/left_carotid_intimal_thickness/value"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/left_carotid_intimal_thickness/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="obs/echocardiographic_result/left_carotid_intimal_thickness/value"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font face="Arial">
																	<font style="FONT-SIZE: 6pt"> mm </font>
																	<font size="1">    Right carotid intimal-medial thickness: </font>
																</font><span hideFocus="1" class="xdTextBox xdBehavior_Formatting" title="" contentEditable="true" tabIndex="0" xd:binding="obs/echocardiographic_result/right_carotid_intimal_thickness/value" xd:xctname="PlainText" xd:CtrlId="CTRL978" xd:datafmt="&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;" xd:boundProp="xd:num" style="WIDTH: 69px; FONT-FAMILY: Arial; FONT-SIZE: xx-small">
																	<xsl:attribute name="xd:num">
																		<xsl:value-of select="obs/echocardiographic_result/right_carotid_intimal_thickness/value"/>
																	</xsl:attribute>
																	<xsl:choose>
																		<xsl:when test="function-available('xdFormatting:formatString')">
																			<xsl:value-of select="xdFormatting:formatString(obs/echocardiographic_result/right_carotid_intimal_thickness/value,&quot;number&quot;,&quot;numDigits:auto;negativeOrder:1;&quot;)"/>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:value-of select="obs/echocardiographic_result/right_carotid_intimal_thickness/value"/>
																		</xsl:otherwise>
																	</xsl:choose>
																</span>
																<font style="FONT-SIZE: 6pt" face="Arial">mm    </font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/echocardiographic_result/carotid_findings/plaque/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1406" xd:boundProp="xd:value" xd:fixed="TRUE" xd:offValue="2258^FALSE^99DCT" xd:onValue="2257^TRUE^99DCT">
																	<xsl:attribute name="xd:value">
																		<xsl:value-of select="obs/echocardiographic_result/carotid_findings/plaque/value"/>
																	</xsl:attribute>
																	<xsl:if test="obs/echocardiographic_result/carotid_findings/plaque/value=&quot;2257^TRUE^99DCT&quot;">
																		<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																	</xsl:if>
																</input>
																<font size="1" face="Arial">plaque </font>
															</div>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td colSpan="9" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #969696; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial">J. Misc:</font>
										</strong>
									</div>
								</td>
								<td colSpan="6" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Verdana">
											<div>
												<div>
													<div>
														<div>
															<div>
																<font color="#ff0000" size="1" face="Arial"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/echocardiographic_result/echocardiogram_comment/value" xd:xctname="PlainText" xd:CtrlId="CTRL1460" style="WIDTH: 100%">
																		<xsl:value-of select="obs/echocardiographic_result/echocardiogram_comment/value"/>
																	</span>
																</font>
															</div>
														</div>
													</div>
												</div>
											</div>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 963px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 605px"></col>
							<col style="WIDTH: 358px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>7. Diagnostic/ </strong>
											<em>
												<font color="#808080">Diagnosis</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/cardiomyopathy" xd:xctname="CheckBox" xd:CtrlId="CTRL1434" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/cardiomyopathy"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/cardiomyopathy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Cardiomyopathie/</strong>
											<em>
												<font color="#808080">CMP</font>
											</em>
											<strong/>
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/peripartum_cardiomyopathy" xd:xctname="CheckBox" xd:CtrlId="CTRL1442" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/peripartum_cardiomyopathy"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/peripartum_cardiomyopathy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</font>
										<font face="Arial">peripartum</font>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/idiopathic_cardiomyopathy" xd:xctname="CheckBox" xd:CtrlId="CTRL1428" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/idiopathic_cardiomyopathy"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/idiopathic_cardiomyopathy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>idiopathique/<em>
												<font color="#808080">idiopathic</font>
											</em>
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/hiv_cardiomyopathy" xd:xctname="CheckBox" xd:CtrlId="CTRL1444" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/hiv_cardiomyopathy"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/hiv_cardiomyopathy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>VIH/<em>
												<font color="#808080">HIV</font>
											</em>
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/alcoholic_cardiomyopathy" xd:xctname="CheckBox" xd:CtrlId="CTRL1435" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-WEIGHT: normal">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/alcoholic_cardiomyopathy"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/alcoholic_cardiomyopathy=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>ETOH</font>
									</div>
								</td>
								<td style="BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<div>
											<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/hypertensive_heart_disease" xd:xctname="CheckBox" xd:CtrlId="CTRL1430" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/hypertensive_heart_disease"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/hypertensive_heart_disease=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<strong>Maladie hypertensive du cœur/</strong>
												<font color="#808080">
													<em>Hypertensive Heart Dis.</em>
												</font>
											</font>
										</div>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<font face="Arial">
										<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/acute_rheumatic_fever" xd:xctname="CheckBox" xd:CtrlId="CTRL1432" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/acute_rheumatic_fever"/>
												</xsl:attribute>
												<xsl:if test="obs/diagnostic/heart_failure_diagnosis/acute_rheumatic_fever=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>Fièvre rheumatismale aigu<font face="Arial">ë</font>/ </strong>
										<font color="#808080">
											<em>Acute Rheumatic Fever</em>
										</font>
									</font>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/congenital_heart_disease" xd:xctname="CheckBox" xd:CtrlId="CTRL1431" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/congenital_heart_disease"/>
												</xsl:attribute>
												<xsl:if test="obs/diagnostic/heart_failure_diagnosis/congenital_heart_disease=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<strong>Maladie congénitale du cœur/</strong>
											<font color="#808080">
												<em>Congenital Heart Dis.</em>
											</font>  </font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/rheumatic_heart_disease" xd:xctname="CheckBox" xd:CtrlId="CTRL1445" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/rheumatic_heart_disease"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/rheumatic_heart_disease=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Maladie rheumatismale des valves/ </strong>
											<em>
												<font color="#808080">Rheumatic valvular disease</font>
											</em>
											<strong/>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/endomyocardial_fibrosis" xd:xctname="CheckBox" xd:CtrlId="CTRL1427" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
										<xsl:attribute name="xd:value">
											<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/endomyocardial_fibrosis"/>
										</xsl:attribute>
										<xsl:if test="obs/diagnostic/heart_failure_diagnosis/endomyocardial_fibrosis=&quot;true&quot;">
											<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
										</xsl:if>
									</input>
									<strong>
										<font face="Arial">Fibrose endomyocardial/</font>
									</strong>
									<font face="Arial">
										<font color="#808080">
											<em>Endomyocardial Fibrosis</em>
										</font>
									</font>
									<!--EndFragment-->
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div>
										<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/non-rheumatic_valvular_disease" xd:xctname="CheckBox" xd:CtrlId="CTRL1441" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/non-rheumatic_valvular_disease"/>
												</xsl:attribute>
												<xsl:if test="obs/diagnostic/heart_failure_diagnosis/non-rheumatic_valvular_disease=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font face="Arial">
												<strong>M<font face="Arial">
														<strong/>
													</font>aladie des valves pas rheumatismale/ </strong>
												<em>
													<font color="#808080">Non-rheumatic valvular disease<strong>  </strong>
													</font>
												</em>
											</font>
										</div>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/pericardial_disease" xd:xctname="CheckBox" xd:CtrlId="CTRL1433" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
										<xsl:attribute name="xd:value">
											<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/pericardial_disease"/>
										</xsl:attribute>
										<xsl:if test="obs/diagnostic/heart_failure_diagnosis/pericardial_disease=&quot;true&quot;">
											<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
										</xsl:if>
									</input>
									<font face="Arial">
										<strong>Maladie péricardique/ </strong>
										<font color="#808080">
											<em>Pericardial Disease<!--EndFragment-->
											</em>
										</font>
									</font>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 23px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/pulmonary_hypertension" xd:xctname="CheckBox" xd:CtrlId="CTRL1443" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/pulmonary_hypertension"/>
											</xsl:attribute>
											<xsl:if test="obs/diagnostic/heart_failure_diagnosis/pulmonary_hypertension=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<font face="Arial">
											<strong>Hypertension pulmonaire/ </strong>
											<font color="#808080">
												<em>Pulmonary Hypertension </em>
												<font color="#ff0000">
													<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/cor_pulmonale" xd:xctname="CheckBox" xd:CtrlId="CTRL1436" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/cor_pulmonale"/>
															</xsl:attribute>
															<xsl:if test="obs/diagnostic/heart_failure_diagnosis/cor_pulmonale=&quot;true&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
														<font color="#000000">Cor pulmonale</font>
													</strong>
												</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/aortic_aneurysm" xd:xctname="CheckBox" xd:CtrlId="CTRL1437" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/aortic_aneurysm"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/aortic_aneurysm=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Aneurisme aortique/ </strong>
											<font color="#808080">
												<em>Aortic Aneurysm</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 22px">
								<td style="BORDER-LEFT: #000000 1pt solid">
									<div><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/hypertension" xd:xctname="CheckBox" xd:CtrlId="CTRL1429" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
											<xsl:attribute name="xd:value">
												<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/hypertension"/>
											</xsl:attribute>
											<xsl:if test="obs/diagnostic/heart_failure_diagnosis/hypertension=&quot;true&quot;">
												<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
											</xsl:if>
										</input>
										<strong>
											<font face="Arial">HTA/ </font>
										</strong>
										<font color="#808080">
											<em>
												<font face="Arial">Hypertension</font>
											</em>
										</font>
										<font color="#808080">
											<em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/diagnostic/hypertension_severity/value)}" tabIndex="0" xd:binding="obs/diagnostic/hypertension_severity/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1370" xd:boundProp="xd:value" xd:onValue="1903^SEVERE^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/hypertension_severity/value"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/hypertension_severity/value=&quot;1903^SEVERE^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</em>
											<font color="#000000" face="Arial">s<font face="Arial">évè</font>re/<em>
													<font color="#808080">severe</font>
												</em>
											</font>
											<em><input class="xdBehavior_Boolean" title="" size="21" type="radio" name="{generate-id(obs/diagnostic/hypertension_severity/value)}" tabIndex="0" xd:binding="obs/diagnostic/hypertension_severity/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1372" xd:boundProp="xd:value" xd:onValue="1900^MODERATE^99DCT" style="FONT-STYLE: normal; WIDTH: 21px; FONT-FAMILY: Arial; COLOR: #000000">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/hypertension_severity/value"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/hypertension_severity/value=&quot;1900^MODERATE^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</em>
											<font color="#000000" face="Arial">modèr<font face="Arial">é/<em>
														<font color="#808080">moderate</font>
													</em>
												</font>
											</font>
											<em><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/diagnostic/hypertension_severity/value)}" tabIndex="0" xd:binding="obs/diagnostic/hypertension_severity/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1371" xd:boundProp="xd:value" xd:onValue="1901^MILD^99DCT" style="FONT-STYLE: normal; FONT-FAMILY: Arial; COLOR: #000000">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/hypertension_severity/value"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/hypertension_severity/value=&quot;1901^MILD^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</em>l<font color="#000000" face="Arial">égère/<em>
													<font color="#808080">mild</font>
												</em>
											</font>
											<em><input class="xdBehavior_Boolean" title="" size="21" type="radio" name="{generate-id(obs/diagnostic/hypertension_severity/value)}" tabIndex="0" xd:binding="obs/diagnostic/hypertension_severity/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1373" xd:boundProp="xd:value" style="FONT-STYLE: normal; WIDTH: 21px; FONT-FAMILY: Arial; COLOR: #000000">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/hypertension_severity/value"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/hypertension_severity/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</em>
											<font color="#000000" face="Arial">non spécifié/<em>
													<font color="#808080">not specified</font>
												</em>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/endocarditis" xd:xctname="CheckBox" xd:CtrlId="CTRL1439" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/endocarditis"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/endocarditis=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Endocardite/ </strong>
											<em>
												<font color="#808080">Endocarditis</font>
											</em>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/atrial_fibrillation" xd:xctname="CheckBox" xd:CtrlId="CTRL1426" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/atrial_fibrillation"/>
												</xsl:attribute>
												<xsl:if test="obs/diagnostic/heart_failure_diagnosis/atrial_fibrillation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<strong>Fibrillation auriculaire/ </strong>
											<em>
												<font color="#808080">Atrial Fibrillation</font>
											</em>
											<strong> </strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/chronic_care_diagnosis/renal_failure" xd:xctname="CheckBox" xd:CtrlId="CTRL1468" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/diagnostic/chronic_care_diagnosis/renal_failure"/>
												</xsl:attribute>
												<xsl:if test="obs/diagnostic/chronic_care_diagnosis/renal_failure=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<strong>L'insuffisance rénale/ </strong>
											<em>
												<font color="#808080">Renal Failure</font>
											</em>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/diagnostic/heart_failure_diagnosis/non-cardiac" xd:xctname="CheckBox" xd:CtrlId="CTRL1446" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/diagnostic/heart_failure_diagnosis/non-cardiac"/>
													</xsl:attribute>
													<xsl:if test="obs/diagnostic/heart_failure_diagnosis/non-cardiac=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>Non-cardiaque/ </strong>
											<font color="#808080">
												<em>Non-cardiac   <span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/diagnostic/non-cardiac_diagnosis_comment/value" xd:xctname="PlainText" xd:CtrlId="CTRL1461" style="WIDTH: 35%">
														<xsl:value-of select="obs/diagnostic/non-cardiac_diagnosis_comment/value"/>
													</span>
												</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 965px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext" width="undefined">
						<colgroup>
							<col style="WIDTH: 965px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>8. </strong>
											<font face="Arial">
												<strong>Résumé/ </strong>
												<em>
													<font color="#808080">Summary</font>
												</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 19px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<strong>
											<font face="Arial"><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/summary/assessment_comments/value" xd:xctname="PlainText" xd:CtrlId="CTRL1355" style="WIDTH: 100%; HEIGHT: 109px">
													<xsl:value-of select="obs/summary/assessment_comments/value"/>
												</span>
											</font>
										</strong>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 940px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext">
						<colgroup>
							<col style="WIDTH: 130px"></col>
							<col style="WIDTH: 810px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BACKGROUND-COLOR: #c0c0c0; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<font size="1" face="Arial"></font>
									<div>
										<font face="Arial">
											<strong>9. Plan Final/ </strong>
											<font color="#808080">
												<em>Final plan   </em>
											</font>
											<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/final_plan_duplicated_on_another_form/value" xd:xctname="CheckBox" xd:CtrlId="CTRL1343" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/final_plan/final_plan_duplicated_on_another_form/value"/>
													</xsl:attribute>
													<xsl:if test="obs/final_plan/final_plan_duplicated_on_another_form/value=&quot;true&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>
										</font>
										<font color="#ff0000">
											<font color="#000000">La m</font>
											<font face="Arial">
												<font color="#000000">ême que DDB/</font>
												<strong/>
												<font color="#808080">Same as DDB</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>A. Labo, </strong>
											<font face="Arial">
												<strong>études/ </strong>
												<em>
													<font color="#808080">Labs, studies</font>
												</em>
												<strong>:  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/tests_ordered/erythrocyte_sedimentation_rate" xd:xctname="CheckBox" xd:CtrlId="CTRL1478" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/final_plan/tests_ordered/erythrocyte_sedimentation_rate"/>
														</xsl:attribute>
														<xsl:if test="obs/final_plan/tests_ordered/erythrocyte_sedimentation_rate=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>VS  <strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/tests_ordered/hiv_rapid_test_qualitative" xd:xctname="CheckBox" xd:CtrlId="CTRL1448" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-WEIGHT: normal">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/final_plan/tests_ordered/hiv_rapid_test_qualitative"/>
														</xsl:attribute>
														<xsl:if test="obs/final_plan/tests_ordered/hiv_rapid_test_qualitative=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>VIH/<em>
													<font color="#808080"> HIV</font>
												</em>
												<strong><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/tests_ordered/afb_sputum_smear" xd:xctname="CheckBox" xd:CtrlId="CTRL1449" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/final_plan/tests_ordered/afb_sputum_smear"/>
														</xsl:attribute>
														<xsl:if test="obs/final_plan/tests_ordered/afb_sputum_smear=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>
												<font color="#000000">Crachat x 3/</font>
												<font color="#969696">
													<em>sputum x 3  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/tests_ordered/x-ray_chest" xd:xctname="CheckBox" xd:CtrlId="CTRL1450" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
															<xsl:attribute name="xd:value">
																<xsl:value-of select="obs/final_plan/tests_ordered/x-ray_chest"/>
															</xsl:attribute>
															<xsl:if test="obs/final_plan/tests_ordered/x-ray_chest=&quot;true&quot;">
																<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
															</xsl:if>
														</input>
													</em>
													<font color="#969696">
														<font color="#000000">Cliché du thorax/<font color="#969696">
																<em>Chest X-ray  <input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/tests_ordered/other_non-coded" xd:xctname="CheckBox" xd:CtrlId="CTRL1451" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
																		<xsl:attribute name="xd:value">
																			<xsl:value-of select="obs/final_plan/tests_ordered/other_non-coded"/>
																		</xsl:attribute>
																		<xsl:if test="obs/final_plan/tests_ordered/other_non-coded=&quot;true&quot;">
																			<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
																		</xsl:if>
																	</input><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/final_plan/other_lab_test_name/value" xd:xctname="PlainText" xd:CtrlId="CTRL1452" style="WIDTH: 12%">
																		<xsl:value-of select="obs/final_plan/other_lab_test_name/value"/>
																	</span>
																</em>
															</font>
														</font>
													</font>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>B. M<font face="Arial">é</font>dicaments/</strong>
											<em>
												<font color="#808080">Medications:</font>
											</em>
										</font>
									</div>
									<div>
										<strong>
											<font face="Arial">    Assurez que les medicaments cardiaques sont correctes pour ce patient ONLINE</font>
										</strong>
									</div>
									<div>
										<font color="#ff0000">
											<span>
												<span>
													<font color="#000000">
														<font color="#000000">
															<em>
																<font face="Arial">
																	<strong>    </strong>
																	<font color="#808080">Assure that the cardiac medications are correct on the patient's dashboard and regimen tab</font>
																</font>
															</em>
														</font>
													</font>
												</span>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr>
								<td colSpan="2" style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>C. Autres m<font face="Arial">é</font>dicaments/</strong>
											<em>
												<font color="#808080">Other medications</font>
											</em>
										</font>
									</div>
									<div>
										<strong>
											<font face="Arial">    Assurez que les medicaments cardiaques sont correctes pour ce patient ONLINE</font>
										</strong>
									</div>
									<div>
										<font color="#ff0000">
											<span>
												<span>
													<font color="#000000">
														<font color="#000000">
															<em>
																<font face="Arial">
																	<strong>    </strong>
																	<font color="#808080">Assure that the cardiac medications are correct on the patient's dashboard and regimen tab</font>
																</font>
															</em>
														</font>
													</font>
												</span>
											</span>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>D. Disposition</strong>:  </font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"></font>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/disposition/admit_to_hospital" xd:xctname="CheckBox" xd:CtrlId="CTRL1347" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/final_plan/disposition/admit_to_hospital"/>
												</xsl:attribute>
												<xsl:if test="obs/final_plan/disposition/admit_to_hospital=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>Admis <font face="Arial">à</font> l'h<font face="Arial">ô</font>pital/ <font color="#808080">
												<em>Admit to hospital    </em>
											</font><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/disposition/patient_referred_for_pediatric_cardiac_evaluation" xd:xctname="CheckBox" xd:CtrlId="CTRL1348" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/final_plan/disposition/patient_referred_for_pediatric_cardiac_evaluation"/>
												</xsl:attribute>
												<xsl:if test="obs/final_plan/disposition/patient_referred_for_pediatric_cardiac_evaluation=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>Réfère a KFH pour évaluation pédiatrique/ <font color="#808080">
												<em>Refer to KFH for pediatric evaluation</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong/>
										</font> </div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="checkbox" tabIndex="0" xd:binding="obs/final_plan/disposition/chronic_care_clinic_follow_up" xd:xctname="CheckBox" xd:CtrlId="CTRL1349" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/final_plan/disposition/chronic_care_clinic_follow_up"/>
												</xsl:attribute>
												<xsl:if test="obs/final_plan/disposition/chronic_care_clinic_follow_up=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>CCC RDV:  
<div style="WIDTH: 15%" class="xdDTPicker" title="" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL1350"><span hideFocus="1" class="xdDTText xdBehavior_FormattingNoBUI" contentEditable="true" tabIndex="0" xd:binding="obs/final_plan/return_visit_date/value" xd:xctname="DTPicker_DTText" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:boundProp="xd:num" xd:innerCtrl="_DTText">
													<xsl:attribute name="xd:num">
														<xsl:value-of select="obs/final_plan/return_visit_date/value"/>
													</xsl:attribute>
													<xsl:choose>
														<xsl:when test="function-available('xdFormatting:formatString')">
															<xsl:value-of select="xdFormatting:formatString(obs/final_plan/return_visit_date/value,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="obs/final_plan/return_visit_date/value"/>
														</xsl:otherwise>
													</xsl:choose>
												</span>
												<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="-1">
													<img src="res://infopath.exe/calendar.gif"/>
												</button>
											</div>       Lieu/<font color="#808080">
												<em>Location</em>
												<font color="#000000">:</font>
												<em/>
											</font><span hideFocus="1" class="xdTextBox" title="" tabIndex="0" xd:binding="obs/final_plan/chronic_care_clinic_location/value" xd:xctname="PlainText" xd:CtrlId="CTRL1465" style="WIDTH: 20%">
												<xsl:value-of select="obs/final_plan/chronic_care_clinic_location/value"/>
											</span>
											<strong>
												<font color="#ff0000"></font>
											</strong>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<font face="Arial">
												<strong>E. Chirugie/</strong>
												<font color="#808080">
													<em>Surgery</em>
												</font>
												<font color="#000000">:<strong/>
												</font>
											</font>
										</font>
									</div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial"><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/final_plan/cardiac_surgical_candidate/value)}" tabIndex="0" xd:binding="obs/final_plan/cardiac_surgical_candidate/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1353" xd:boundProp="xd:value" xd:onValue="1066^NO^99DCT">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="obs/final_plan/cardiac_surgical_candidate/value"/>
												</xsl:attribute>
												<xsl:if test="obs/final_plan/cardiac_surgical_candidate/value=&quot;1066^NO^99DCT&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>Pas candidat pour chirurgie/ <font color="#808080">
												<em>Not a surgical candidate</em>
											</font>        <strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/final_plan/cardiac_surgical_candidate/value)}" tabIndex="0" xd:binding="obs/final_plan/cardiac_surgical_candidate/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1352" xd:boundProp="xd:value" xd:onValue="1065^YES^99DCT">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/final_plan/cardiac_surgical_candidate/value"/>
													</xsl:attribute>
													<xsl:if test="obs/final_plan/cardiac_surgical_candidate/value=&quot;1065^YES^99DCT&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
											</strong>Candidat pour chirurgie cette année/ <font color="#808080">
												<em>Candidate for surgery within one year</em>
											</font>
										</font>
									</div>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<strong>
												<font face="Arial">
													<strong/>
												</font>
											</strong>
										</font> </div>
								</td>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid">
									<div>
										<font face="Arial">
											<font face="Arial">
												<strong><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/final_plan/cardiac_surgical_candidate/value)}" tabIndex="0" xd:binding="obs/final_plan/cardiac_surgical_candidate/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1351" xd:boundProp="xd:value" xd:onValue="4004^IN THE FUTURE ^99DCT">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="obs/final_plan/cardiac_surgical_candidate/value"/>
														</xsl:attribute>
														<xsl:if test="obs/final_plan/cardiac_surgical_candidate/value=&quot;4004^IN THE FUTURE ^99DCT&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input>
												</strong>Candidat pour chirurgie dans le futur (suivi pour maintenant)/<font color="#808080">
													<em>Surgical candidate in the future (follow for now)</em>
												</font><input class="xdBehavior_Boolean" title="" type="radio" name="{generate-id(obs/final_plan/cardiac_surgical_candidate/value)}" tabIndex="0" xd:binding="obs/final_plan/cardiac_surgical_candidate/value" xd:xctname="OptionButton" xd:CtrlId="CTRL1466" xd:boundProp="xd:value">
													<xsl:attribute name="xd:value">
														<xsl:value-of select="obs/final_plan/cardiac_surgical_candidate/value"/>
													</xsl:attribute>
													<xsl:if test="obs/final_plan/cardiac_surgical_candidate/value=&quot;&quot;">
														<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
													</xsl:if>
												</input>
												<font color="#000000" face="Arial">non spécifié/<em>
														<font color="#808080">not specified</font>
													</em>
												</font>
											</font>
										</font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="left">
					<table style="BORDER-BOTTOM: medium none; BORDER-LEFT: medium none; WIDTH: 939px; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word; TABLE-LAYOUT: fixed; BORDER-TOP: medium none; BORDER-RIGHT: medium none" class="xdLayout" border="1" borderColor="buttontext" width="undefined">
						<colgroup>
							<col style="WIDTH: 939px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td style="BORDER-BOTTOM: #000000 1pt solid; BORDER-LEFT: #000000 1pt solid; PADDING-BOTTOM: 5px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px; VERTICAL-ALIGN: middle; BORDER-TOP: #000000 1pt solid; BORDER-RIGHT: #000000 1pt solid; PADDING-TOP: 5px">
									<div>
										<font size="2">
											<font face="Arial">Form completed today by: </font><span class="xdExpressionBox xdDataBindingUI" title="" tabIndex="-1" xd:disableEditing="yes" xd:binding="substring-after(encounter/encounter.provider_id, &quot;^&quot;)" xd:xctname="ExpressionBox" xd:CtrlId="CTRL120" style="WIDTH: 369px; FONT-FAMILY: Arial; FONT-SIZE: medium; FONT-WEIGHT: bold">
												<xsl:value-of select="substring-after(encounter/encounter.provider_id, &quot;^&quot;)"/>
											</span>
											<font face="Arial">  </font>
											<font face="Arial"><span class="xdExpressionBox xdDataBindingUI" title="" tabIndex="-1" xd:disableEditing="yes" xd:xctname="ExpressionBox" xd:CtrlId="CTRL121">
													<xsl:attribute name="style">WIDTH: 172px; FONT-FAMILY: Arial; COLOR: #ffffff; FONT-SIZE: medium; FONT-WEIGHT: bold;<xsl:choose>
															<xsl:when test="encounter/encounter.provider_id = &quot;&quot;">COLOR: #ff0000</xsl:when>
														</xsl:choose>
													</xsl:attribute>
													<xsl:value-of select="&quot;*&quot;"/>
												</span>
											</font><input style="FONT-FAMILY: Arial" class="langFont" title="" value="&lt;- Select Provider" type="button" xd:xctname="Button" xd:CtrlId="SelectProvider" tabIndex="0"/>
										</font>
										<font size="2" face="Arial"></font>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="left">
					<font face="Arial"></font> </div>
				<div align="right"><input style="WIDTH: 129px; FONT-FAMILY: Arial; FONT-SIZE: medium" class="langFont" title="" value="Submit" size="1" type="button" xd:xctname="Button" xd:CtrlId="SubmitButton" tabIndex="0"/>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
