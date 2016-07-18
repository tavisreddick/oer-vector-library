<%@ Page Language="VB" MasterPageFile="~/SDaspdotnet.master" AutoEventWireup="false" CodeFile="demo.aspx.vb" Inherits="svg_component_custom_demo" title="SVG customisation/personalisation demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
	<link rel="canonical" href="http://www.sleepingdog.org.uk/svg/component/custom/demo.aspx"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphDeveloperContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" Runat="Server">
    <h1><abbr title="Scaleable Vector Graphics">SVG</abbr> customisation/personalisation demo</h1>
    <h2>Personalisation: create your avatar</h2>
    <p>Controls go here.</p>
    <h2>Customisation: choose your graphic set and options</h2>
    <label>Replacement graphic set (if wanted): 
  <asp:DropDownList id="mnuGraphicSet"
        AutoPostBack="True"
        OnSelectedIndexChanged="UpdateImageUrls"
        runat="server">
    <asp:ListItem Selected="True" Value="">None</asp:ListItem>
    <asp:ListItem Value="cricketers.svg">Cricketers</asp:ListItem>
    <asp:ListItem Value="rollergirls.svg">Rollergirls</asp:ListItem>
   </asp:DropDownList>
   </label>
   <asp:CheckBox id="chkAlcohol" runat="server"
                    AutoPostBack="True"
                    Text="Include alcohol?"
                    Checked="true"
                    OnCheckedChanged="UpdateImageUrls"/>
    <h2>Sample graphics: see the effects</h2>
    <p>Introduction goes here.</p>
      <asp:Image id="imgInterview" runat="server"
           AlternateText="A job interview drawn in vector graphics." /> 
      <asp:Image id="imgVillageCricket" runat="server"
           AlternateText="A village cricket scene drawn in vector graphics." /> 
    <p>Last updated: <time>2016-07-18</time>.</p>
</asp:Content>

