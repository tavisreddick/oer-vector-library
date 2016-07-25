
Partial Class svg_component_custom_demo
	Inherits System.Web.UI.Page

	' Set base image paths
	Dim strSvgMachinePath As String = "svgmachine.aspx"
	Dim strImage1Path As String = "scene1.svg"
	Dim strImage2Path As String = "interview.svg"
	Dim strReplacementSetUrl As String
	Dim strAlcohol As String
	Dim strMeat As String
	Dim strPersonMeStyles As String = ".personmeflesh{fill:#E2CCCC;stroke:#B49999;stroke-miterlimit:10;}" & vbCrlf & _
		".personmehair{fill:#2A0018;stroke:#6A4058;}" & vbCrlf & _
		".personmehat{fill:#333333;stroke:#66666B;stroke-miterlimit:10;}" & vbCrlf & _
		".personmeclothes{fill:#FFFFF0;stroke:#CCC0C0;stroke-miterlimit:10;}"
	'Dim meStyleSet As StyleSet()
	Dim sppPersonMeFlesh As StylePropertySet = New StylePropertySet("#E2CCCC", "#B49999", 10)
	Dim sppPersonMeHair As StylePropertySet = New StylePropertySet("#778899", "#6A4058", 10)
	Dim sppPersonMeHat As StylePropertySet = New StylePropertySet("#FFF5EE", "#66666B", 10)
	Dim sppPersonMeClothes As StylePropertySet = New StylePropertySet("#F5DEB3", "#CCC0C0", 10)
	Dim intPersonMeHead As Integer = 0
	Dim meStyleSet As New StyleSet(sppPersonMeFlesh, sppPersonMeHair, sppPersonMeHat, sppPersonMeClothes, intPersonMeHead)

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		' Update image URLs
		UpdateImageUrls()
		PopulateStyleSheet()
	End Sub
	
	' Do we really need this class of styles?
	Public Class StyleSet
		Public personmeflesh As StylePropertySet()
		Public personmehair As StylePropertySet()
		Public personmehat As StylePropertySet()
		Public personmeclothes As StylePropertySet()
		Public personmehead As Integer
		Public Sub New( _
			ByVal PersonMeFlesh As StylePropertySet, _
			ByVal PersonMeHair As StylePropertySet, _
			ByVal PersonMeHat As StylePropertySet, _
			ByVal PersonMeClothes As StylePropertySet, _
			ByVal PersonMeHead As Integer)
			personmeflesh = PersonMeFlesh
			personmehair = PersonMeHair
			personmehat = PersonMeHat
			personmeclothes = PersonMeClothes
			personmehead = PersonMeHead
		End Sub
	End Class
	
	Public Class StylePropertySet
		Public fill As String
		Public stroke As String
		Public strokehyphenmiterlimit As Integer
		Public Sub New( _
			ByVal Fill As String, _
			ByVal Stroke As String, _
			ByVal StrokeHyphenMiterlimit As Integer)
			fill = Fill
			stroke = Stroke
			strokehyphenmiterlimit = StrokeHyphenMiterlimit
		End Sub
	End Class
	
	Sub PopulateStyleSheet()
		'PersonMeStyleChange()
		strPersonMeStyles = ".personmeflesh{fill:" & sppPersonMeFlesh.fill & ";stroke:#B49999;stroke-miterlimit:10;}" & vbCrlf & _
		".personmehair{fill:" & sppPersonMeHair.fill & ";stroke:#6A4058;}" & vbCrlf & _
		".personmehat{fill:" & sppPersonMeHat.fill & ";stroke:#66666B;stroke-miterlimit:10;}" & vbCrlf & _
		".personmeclothes{fill:" & sppPersonMeClothes.fill & ";stroke:#CCC0C0;stroke-miterlimit:10;}"
		For head = 1 to 4
			If head = intPersonMeHead Then 'make selected head style visible
				strPersonMeStyles &= "/* head style " & CStr(intPersonMeHead) & " */"
			Else 'hide non-selected head styles
				strPersonMeStyles &= "#person-me-front-head-option-" & CStr(head) & ", #person-me-back-head-option-" & CStr(head) & ", #person-me-right-head-option-" & CStr(head) & _
					" {display: none;}" & vbCrlf
			End If
		Next head
		styPersonMe.InnerText = strPersonMeStyles
	End Sub

	Sub UpdateImageUrls() '(sender As Object, e As EventArgs)
		strReplacementSetUrl = mnuGraphicSet.SelectedItem.Value
		PersonMeStyleChange() ' otherwise personalisation does not stick?
		If chkAlcohol.Checked Then
			strAlcohol = "true"
		Else
			strAlcohol = "false"
		End If
		' Build query string parameters, of the form:
		' ?graphic=scene1.svg&set=rollergirls.svg&alcohol=false&flesh=#E2CCCC&hair=#778899&hat=#FFF5EE&clothes=#F5DEB3&head=1
		imgVillageCricket.ImageUrl = strSvgMachinePath + "?graphic=" + strImage1Path + "&alcohol=" + strAlcohol + _
			"&flesh=" & Server.UrlEncode(sppPersonMeFlesh.fill) & "&hair=" & Server.UrlEncode(sppPersonMeHair.fill) & "&hat=" & Server.UrlEncode(sppPersonMeHat.fill) & _
			"&clothes=" & Server.UrlEncode(sppPersonMeClothes.fill) & "&head=" & CStr(intPersonMeHead)
		imgInterview.ImageUrl = strSvgMachinePath + "?graphic=" + strImage2Path + "&alcohol=" + strAlcohol + _
			"&flesh=" & Server.UrlEncode(sppPersonMeFlesh.fill) & "&hair=" & Server.UrlEncode(sppPersonMeHair.fill) & "&hat=" & Server.UrlEncode(sppPersonMeHat.fill) & _
			"&clothes=" & Server.UrlEncode(sppPersonMeClothes.fill) & "&head=" & CStr(intPersonMeHead)
		' If a graphic set is chosen, add it to the image url 
		If Not(strReplacementSetUrl = "") Then
			imgVillageCricket.ImageUrl += "&set=" + strReplacementSetUrl
			imgInterview.ImageUrl += "&set=" + strReplacementSetUrl
		End If
	End Sub

	Sub PersonMeStyleChange()
		sppPersonMeFlesh.fill = mnuPersonMeFlesh.SelectedItem.Value
		sppPersonMeHair.fill = mnuPersonMeHair.SelectedItem.Value
		sppPersonMeHat.fill = mnuPersonMeHat.SelectedItem.Value
		sppPersonMeClothes.fill = mnuPersonMeClothes.SelectedItem.Value
		intPersonMeHead = mnuPersonMeHead.SelectedItem.Value
		'meStyleSet.personmeflesh = sppPersonMeFlesh()
		PopulateStyleSheet()
	End Sub

End Class
