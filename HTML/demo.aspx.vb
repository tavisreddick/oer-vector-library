
Partial Class svg_component_custom_demo
	Inherits System.Web.UI.Page

	' Set base image paths
	Dim strSvgMachinePath As String = "svgmachine.aspx"
	Dim strImage1Path As String = "scene1.svg"
	Dim strImage2Path As String = "interview.svg"
	Dim strReplacementSetUrl As String
	Dim strAlcohol As String
	Dim strMeat As String

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		' Update image URLs
		UpdateImageUrls()
		
	End Sub
	
	Sub UpdateImageUrls() '(sender As Object, e As EventArgs)
		strReplacementSetUrl = mnuGraphicSet.SelectedItem.Value
		If chkAlcohol.Checked Then
			strAlcohol = "true"
		Else
			strAlcohol = "false"
		End If
		' Build query string parameters, of the form:
		' ?graphic=scene1.svg&set=rollergirls.svg&alcohol=false
		 imgVillageCricket.ImageUrl = strSvgMachinePath + "?graphic=" + strImage1Path + "&alcohol=" + strAlcohol
		 imgInterview.ImageUrl = strSvgMachinePath + "?graphic=" + strImage2Path + "&set=" + strReplacementSetUrl + "&alcohol=" + strAlcohol
		 ' If a graphic set is chosen, add it to the image url 
		 If Not(strReplacementSetUrl = "") Then
		 	imgVillageCricket.ImageUrl += "&set=" + strReplacementSetUrl
		 	imgInterview.ImageUrl += "&set=" + strReplacementSetUrl
		 End If
	End Sub

End Class
