<%@ Page Language="VB" MasterPageFile="~/SDaspdotnet.master" AutoEventWireup="false" CodeFile="demo.aspx.vb" Inherits="svg_component_custom_demo" title="SVG customisation/personalisation demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
	<link rel="canonical" href="http://www.sleepingdog.org.uk/svg/component/custom/demo.aspx"/>
	<link href="main.css" rel="stylesheet" type="text/css"/>
  <!--<link href="me.css" rel="stylesheet" type="text/css" />-->
  <style id="styPersonMe" type="text/css" title="me" runat="server"></style>
	<script type="text/javascript" src="application.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphDeveloperContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" Runat="Server">
    <h1><abbr title="Scaleable Vector Graphics">SVG</abbr> customisation/personalisation demo</h1>
  <p>In practice, the personalisation and customisation controls would be separated into <abbr title="virtual learning environment">VLE</abbr> preferences sections or similar. Some options below will only have an effect if the appropriate object is visible (not all head styles have both hair and headwear, for example).</p>
  <p>The sample graphics would be part of learning objects viewed from the <abbr title="virtual learning environment">VLE</abbr>.</p>
  <h2>Personalisation: create your avatar</h2>
  <label>Skin tone:
    <asp:DropDownList ID="mnuPersonMeFlesh"
        AutoPostBack="True"
        OnSelectedIndexChanged="PersonMeStyleChange"
        runat="server">
    <asp:ListItem Value="#FFEBCD">BlanchedAlmond</asp:ListItem>
    <asp:ListItem Value="#DEB887">BurlyWood</asp:ListItem>
    <asp:ListItem Value="#CD853F">Peru</asp:ListItem>
    <asp:ListItem Value="#A0522D">Sienna</asp:ListItem>
   </asp:DropDownList>
  </label>
  <label>Head style:
    <asp:DropDownList ID="mnuPersonMeHead"
        AutoPostBack="True"
        OnSelectedIndexChanged="PersonMeStyleChange"
        runat="server">
    <asp:ListItem Value="1">RockerQuiff</asp:ListItem>
    <asp:ListItem Value="2">PonyTail</asp:ListItem>
    <asp:ListItem Value="3">TurbanBeard</asp:ListItem>
    <asp:ListItem Value="4">HeadScarf</asp:ListItem>
   </asp:DropDownList>
  </label>
  <label>Hair colour:
    <asp:DropDownList ID="mnuPersonMeHair"
        AutoPostBack="True"
        OnSelectedIndexChanged="PersonMeStyleChange"
        runat="server">
    <asp:ListItem Value="#FFF8DC">CornSilk</asp:ListItem>
    <asp:ListItem Value="#778899">LightSlateGrey</asp:ListItem>
    <asp:ListItem Value="#8B0000">DarkRed</asp:ListItem>
    <asp:ListItem Value="#000000">Black</asp:ListItem>
   </asp:DropDownList>
  </label>
  <label>Headwear colour:
    <asp:DropDownList ID="mnuPersonMeHat"
        AutoPostBack="True"
        OnSelectedIndexChanged="PersonMeStyleChange"
        runat="server">
    <asp:ListItem Value="#FFF5EE">SeaShell</asp:ListItem>
    <asp:ListItem Value="#BA55D3">MediumOrchid</asp:ListItem>
    <asp:ListItem Value="#808000">Olive</asp:ListItem>
    <asp:ListItem Value="#191970">MidnightBlue</asp:ListItem>
   </asp:DropDownList>
  </label>
  <label>Clothing colour:
    <asp:DropDownList ID="mnuPersonMeClothes"
        AutoPostBack="True"
        OnSelectedIndexChanged="PersonMeStyleChange"
        runat="server">
    <asp:ListItem Value="#F5DEB3">Wheat</asp:ListItem>
    <asp:ListItem Value="#D8BFD8">Thistle</asp:ListItem>
    <asp:ListItem Value="#87CEEB">SkyBlue</asp:ListItem>
    <asp:ListItem Value="#2E8B57">SeaGreen</asp:ListItem>
   </asp:DropDownList>
  </label>
  <figure>
<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 600 200" style="enable-background:new 0 0 600 200;" xml:space="preserve">
<style type="text/css">
	.sprue{fill:none;stroke:#FF0000;stroke-width:2;stroke-miterlimit:10;}
	.st0{fill:#333333;}
	.st1{fill:none;stroke:#66666B;stroke-miterlimit:10;}
	.st2{fill:none;}
	.st3{font-family:'Verdana-Bold';}
	.st4{font-size:14px;}
	.st5{font-size:12px;}
</style>
<g id="Background">
	<g>
		<line class="sprue" x1="203" y1="58" x2="196" y2="58"/>
		<line class="sprue" x1="403" y1="58" x2="396" y2="58"/>
		<rect class="sprue" width="600" height="200"/>
		<line class="sprue" x1="199.5" y1="0" x2="199.5" y2="200"/>
		<line class="sprue" x1="399.5" y1="0" x2="399.5" y2="200"/>
		<line class="sprue" x1="100" y1="0" x2="100" y2="6"/>
		<line class="sprue" x1="300" y1="0" x2="300" y2="6"/>
		<line class="sprue" x1="500" y1="0" x2="500" y2="6"/>
		<line class="sprue" x1="100" y1="194" x2="100" y2="200"/>
		<line class="sprue" x1="300" y1="194" x2="300" y2="200"/>
		<line class="sprue" x1="500" y1="194" x2="500" y2="200"/>
	</g>
	<g>
		<line class="sprue" x1="203" y1="58" x2="196" y2="58"/>
		<line class="sprue" x1="403" y1="58" x2="396" y2="58"/>
		<rect class="sprue" width="600" height="200"/>
		<line class="sprue" x1="199.5" y1="0" x2="199.5" y2="200"/>
		<line class="sprue" x1="399.5" y1="0" x2="399.5" y2="200"/>
		<line class="sprue" x1="100" y1="0" x2="100" y2="6"/>
		<line class="sprue" x1="300" y1="0" x2="300" y2="6"/>
		<line class="sprue" x1="500" y1="0" x2="500" y2="6"/>
		<line class="sprue" x1="100" y1="194" x2="100" y2="200"/>
		<line class="sprue" x1="300" y1="194" x2="300" y2="200"/>
		<line class="sprue" x1="500" y1="194" x2="500" y2="200"/>
	</g>
</g>
<g id="person-me">
	<g id="person-me-right">
		<g id="person-me-right-body">
			<g id="person-me-right-headneck">
				<g id="person-me-right-neck-group" transform="translate(0, 11.5) rotate(0, 749.5, 368.5)">
					<g id="person-me-right-neck">
						<path id="person-me-right-neck-shape" class="personmeflesh" d="M504.5,37.5c0-2.8-2.2-5-5-5l0,0c-2.8,0-5,2.2-5,5v6
							c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V37.5z"/>
					</g>
					<g id="person-me-right-head-group" transform="translate(0, 11.5) rotate(0, 749.5, 351)">
						<g id="person-me-right-head">
							<path id="person-me-right-head-shape" class="personmeflesh" d="M513.5,17.9l-2-3.6v-2.7c0-3.6-2.8-6.1-6.9-6.1h-4.2
								c-4.1,0-7.9,2.5-7.9,6.1v8.8c0,3.6,3.8,7.1,7.9,7.1h4.2c4.1,0,6.9-3.5,6.9-7.1v-2.1L513.5,17.9z"/>
							<g id="person-me-right-head-option-4">
								<g>
									<path class="st0" d="M512.5,28.5c-3.5-3.2-7-15.5-1.2-17c3.1-0.8-3.5-11-11.2-11c-6,0-5.8-0.8-10.8,5s2.5,20.8,1.2,23.5
										s-1,0.8-3,4c-2.2,3.5-3.5,6-2,18.2s15,9.5,24,8.2S516,31.8,512.5,28.5z"/>
								</g>
								<g>
									<path class="personmehat" d="M512.5,28.5c-3.5-3.2-7-15.5-1.2-17c3.1-0.8-3.5-11-11.2-11c-6,0-5.8-0.8-10.8,5
										s2.5,20.8,1.2,23.5s-1,0.8-3,4c-2.2,3.5-3.5,6-2,18.2s15,9.5,24,8.2S516,31.8,512.5,28.5z"/>
								</g>
								<g>
									<path class="st1" d="M512.5,28.5c-3.5-3.2-7-15.5-1.2-17c3.1-0.8-3.5-11-11.2-11c-6,0-5.8-0.8-10.8,5s2.5,20.8,1.2,23.5
										s-1,0.8-3,4c-2.2,3.5-3.5,6-2,18.2s15,9.5,24,8.2S516,31.8,512.5,28.5z"/>
								</g>
							</g>
							<g id="person-me-right-head-option-3">
								<path class="personmehat" d="M511.4,8c2.1-6.5-3.4-8.5-11.4-8.5S486.5,4.6,486.5,11c0,5.2,3.3,8.1,5.5,9.6L511.4,8z"/>
								<path class="personmehair" d="M512.6,29.8c0,3.3-8-5.8-8-7c0-2.2,3.2,2.7,4.5,2.7c1.3,0,1.9-2.7,1.9-2.7L512.6,29.8z"/>
							</g>
							<g id="person-me-right-head-option-2">
								<path class="personmehair" d="M500,14.8c-1.3-4.8,2.9-6.3,11.2-6.8c-1.5-4-5.3-6.7-9.2-6.7c-4.8,0-9.7,4.3-9.8,10.2
									c-0.1,6.2,4.5,10.8,9,11.3C500.9,20.1,500.7,17.3,500,14.8z"/>
								<path class="personmehair" d="M492.9,21.2c1.6-8.4,2.7-15.6,0-16.1s-6.2,5.9-7.8,14.3s-0.7,15.6,2,16.1
									C489.8,36,491.3,29.6,492.9,21.2z"/>
								<path class="personmehat" d="M494.2,11c1.1,0,1.9-2.8-0.9-3.9c-2-0.8-2.9-1.9-3.9,0C488.6,8.8,492.6,11,494.2,11z"/>
							</g>
							<g id="person-me-right-head-option-1">
								<path class="personmehair" d="M502.5,2c3.6,0,5.8,0.3,5.2-2.5c-0.7-2.8,5,0.8,5.8,4s-9,8-9,8l1,9c0,0-1.8-4.5-3-4
									s-3,4.5-3,4.5l-7,0.4c-1.8,4.6-8.2-10.7-5-13.9S496.3,2,502.5,2z"/>
							</g>
						</g>
						<circle id="person-me-right-head-ball" class="ball" cx="499.5" cy="26" r="5"/>
					</g>
					<g id="person-me-right-neck-socket">
						<circle class="socket" cx="499.5" cy="37.5" r="5"/>
					</g>
					<circle id="person-me-right-headneck-ball" class="ball" cx="499.5" cy="43.5" r="5"/>
				</g>
			</g>
			<g id="person-me-right-pelvis-group">
				<g id="person-me-right-pelvis-socket-legs-left">
					<circle class="socket" cx="500.5" cy="99" r="5"/>
				</g>
				<g id="person-me-right-pelvis">
					<path id="person-me-right-pelvis-shape" class="personmeclothes" d="M512.5,99.5c0-6.1-2.9-11-6.5-11h-12
						c-3.6,0-6.5,4.9-6.5,11l0,0c0,6.1,2.9,11,6.5,11h12C509.6,110.5,512.5,105.6,512.5,99.5L512.5,99.5z"/>
				</g>
				<g id="person-me-right-pelvis-socket-legs-right">
					<circle class="socket" cx="500.5" cy="99" r="5"/>
				</g>
			</g>
			<g id="person-me-right-torso-group">
				<g id="person-me-right-torso-socket-arms-left">
					<circle class="socket" cx="499" cy="58" r="4"/>
				</g>
				<g id="person-me-right-torso">
					<path id="person-me-right-torso-shape" class="personmeclothes" d="M512.5,66.5c0-6.6-5.2-12-11.5-12h-2
						c-6.4,0-11.5,5.4-11.5,12v10c0,6.6,5.2,12,11.5,12h1.9c6.4,0,11.5-5.4,11.5-12L512.5,66.5L512.5,66.5z"/>
				</g>
				<g id="person-me-right-headneck-socket">
					<circle class="socket" cx="499.5" cy="55" r="4.5"/>
				</g>
				<g id="person-me-right-torso-socket-arms-right">
					<circle class="socket" cx="499" cy="58" r="4"/>
				</g>
			</g>
			<g id="person-me-right-legs-right">
				<g id="person-me-right-legs-right-upper-group" transform="translate(0, -22.5) rotate(0, 750.5, 446.5)">
					<g id="person-me-right-legs-right-lower-group" transform="translate(0, -13) rotate(0, 750.5, 497.5)">
						<g id="person-me-right-legs-right-foot-group" transform="translate(0, -17) rotate(0, 750.5, 556.5)">
							<g id="person-me-right-legs-right-foot">
								<path id="person-me-right-legs-right-foot-shape" class="personmeflesh" d="M520,236.5l-14.9-6.9c-0.7-1.8-2.5-3.1-4.6-3.1
									c-2.8,0-5,2.2-5,5v3c0,2.8,2.2,2,5,2c1.5,0,2.8,0.2,3.7,0H520z"/>
							</g>
							<circle id="person-me-right-legs-right-foot-ball" class="ball" cx="500.5" cy="231.5" r="5"/>
						</g>
						<g id="person-me-right-legs-right-lower">
							<path id="person-me-right-legs-right-lower-shape" class="personmeclothes" d="M505.5,172.5c0-2.8-2.2-5-5-5l0,0
								c-2.8,0-5,2.2-5,5v42c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V172.5z"/>
						</g>
						<circle id="person-me-right-legs-right-lower-ball" class="ball" cx="500.5" cy="172.5" r="5"/>
						<g id="person-me-right-legs-right-lower-socket">
							<circle class="socket" cx="500.5" cy="214.5" r="5"/>
						</g>
					</g>
					<g id="person-me-right-legs-right-upper">
						<path id="person-me-right-legs-right-upper-shape" class="personmeclothes" d="M505.5,121.5c0-2.8-2.2-5-5-5l0,0
							c-2.8,0-5,2.2-5,5v38c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V121.5z"/>
					</g>
					<circle id="person-me-right-legs-upper-right-ball" class="ball" cx="500.5" cy="121.5" r="5"/>
					<g id="person-me-right-legs-right-upper-socket">
						<circle class="socket" cx="500.5" cy="159.5" r="5"/>
					</g>
				</g>
			</g>
			<g id="person-me-right-arms-right" transform="translate(33, 0) rotate(0, 716, 383)">
				<g id="person-me-right-arms-right-lower-group" transform="translate(0, -11) rotate(0, 716, 422)">
					<g id="person-me-right-arms-right-hand-group" transform="translate(0, -11) rotate(0, 716, 466)">
						<g id="person-me-right-arms-right-hand">
							<path id="person-me-right-arms-right-hand-shape" class="personmeflesh" d="M466,151.5c1.9,0,3.5-1.6,3.5-3.5v-7
								c0-1.9-1.6-3.5-3.5-3.5l0,0c-1.9,0-3.5,1.6-3.5,3.5v7C462.5,149.9,464.1,151.5,466,151.5L466,151.5z"/>
						</g>
						<circle id="person-me-right-arms-right-hand-ball" class="ball" cx="466" cy="141" r="4"/>
					</g>
					<g id="person-me-right-arms-right-lower">
						<path id="person-me-right-arms-right-lower-shape" class="personmeclothes" d="M466.1,133.5c1.9,0,3.4-1.4,3.4-3.1V96.6
							c0-1.7-1.5-3.1-3.4-3.1h-0.3c-1.9,0-3.4,1.4-3.4,3.1v33.8c0,1.7,1.5,3.1,3.4,3.1H466.1z"/>
					</g>
					<circle id="person-me-right-arms-right-lower-ball" class="ball" cx="466" cy="97" r="4"/>
					<g id="person-me-right-arms-right-lower-socket">
						<circle class="socket" cx="466" cy="130" r="4"/>
					</g>
				</g>
				<g id="person-me-right-arms-right-upper">
					<path id="person-me-right-arms-right-upper-shape" class="personmeclothes" d="M466.1,89.5c1.9,0,3.4-1.2,3.4-2.7V57.2
						c0-1.5-1.5-2.7-3.4-2.7h-0.3c-1.9,0-3.4,1.2-3.4,2.7v29.6c0,1.5,1.5,2.7,3.4,2.7H466.1z"/>
				</g>
				<circle id="person-me-right-arms-right-upper-ball" class="ball" cx="466" cy="58" r="4"/>
				<g id="person-me-right-arms-right-upper-socket">
					<circle class="socket" cx="466" cy="86" r="4"/>
				</g>
			</g>
		</g>
	</g>
	<g id="person-me-back">
		<g id="person-me-back-body">
			<g id="person-me-back-legs">
				<g id="person-me-back-legs-left">
					<g id="person-me-back-legs-left-upper-group" transform="translate(-0.5, -22) rotate(0, 465.5, 146.5)">
						<g id="person-me-back-legs-left-lower-group" transform="translate(0, -13) rotate(0, 465.5, 197.5)">
							<g id="person-me-back-legs-left-foot-group" transform="translate(0, -17) rotate(0, 465.5, 256.5)">
								<g id="person-me-back-legs-left-foot">
									<path id="person-me-back-legs-left-foot-shape" class="personmeflesh" d="M280.5,234.5c0,2.8,2.2,2,5,2l0,0
										c2.8,0,5,0.8,5-2v-3c0-2.8-2.2-5-5-5l0,0c-2.8,0-5,2.2-5,5V234.5z"/>
								</g>
								<circle id="person-me-back-legs-left-foot-ball" class="ball" cx="285.5" cy="231.5" r="5"/>
							</g>
							<g id="person-me-back-legs-left-lower">
								<path id="person-me-back-legs-left-lower-shape" class="personmeclothes" d="M290.5,214.5c0,2.8-2.2,5-5,5l0,0
									c-2.8,0-5-2.2-5-5v-42c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V214.5z"/>
							</g>
							<circle id="person-me-back-legs-left-lower-ball" class="ball" cx="285.5" cy="172.5" r="5"/>
							<g id="person-me-back-legs-left-lower-socket">
								<circle class="socket" cx="285.5" cy="214.5" r="5"/>
							</g>
						</g>
						<g id="person-me-back-legs-left-upper">
							<path id="person-me-back-legs-left-upper-shape" class="personmeclothes" d="M290.5,159.5c0,2.8-2.2,5-5,5l0,0
								c-2.8,0-5-2.2-5-5v-38c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V159.5z"/>
						</g>
						<circle id="person-me-back-legs-left-upper-right-ball" class="ball" cx="285.5" cy="121.5" r="5"/>
						<g id="person-me-back-legs-left-upper-socket">
							<circle class="socket" cx="285.5" cy="159.5" r="5"/>
						</g>
					</g>
				</g>
				<g id="person-me-back-legs-right">
					<g id="person-me-back-legs-right-upper-group" transform="translate(-0.5, -22) rotate(0, 465.5, 146.5)">
						<g id="person-me-back-legs-right-lower-group" transform="translate(0, -13) rotate(0, 465.5, 197.5)">
							<g id="person-me-back-legs-right-foot-group" transform="translate(0, -17) rotate(0, 465.5, 256.5)">
								<g id="person-me-back-legs-right-foot">
									<path id="person-me-back-legs-right-foot-shape" class="personmeflesh" d="M310.5,234.5c0,2.8,2.2,2,5,2l0,0
										c2.8,0,5,0.8,5-2v-3c0-2.8-2.2-5-5-5l0,0c-2.8,0-5,2.2-5,5V234.5z"/>
								</g>
								<circle id="person-me-back-legs-right-foot-ball" class="ball" cx="315.5" cy="231.5" r="5"/>
							</g>
							<g id="person-me-back-legs-right-lower">
								<path id="person-me-back-legs-right-lower-shape" class="personmeclothes" d="M320.5,214.5c0,2.8-2.2,5-5,5l0,0
									c-2.8,0-5-2.2-5-5v-42c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V214.5z"/>
							</g>
							<circle id="person-me-back-legs-right-lower-ball" class="ball" cx="315.5" cy="172.5" r="5"/>
							<g id="person-me-back-legs-right-lower-socket">
								<circle class="socket" cx="315.5" cy="214.5" r="5"/>
							</g>
						</g>
						<g id="person-me-back-legs-right-upper">
							<path id="person-me-back-legs-right-upper-shape" class="personmeclothes" d="M320.5,159.5c0,2.8-2.2,5-5,5l0,0
								c-2.8,0-5-2.2-5-5v-38c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V159.5z"/>
						</g>
						<circle id="person-me-back-legs-right-upper-right-ball" class="ball" cx="315.5" cy="121.5" r="5"/>
						<g id="person-me-back-legs-right-upper-socket">
							<circle class="socket" cx="315.5" cy="159.5" r="5"/>
						</g>
					</g>
				</g>
			</g>
			<g id="person-me-back-arms">
				<g id="person-me-back-arms-left" transform="translate(-26, 0) rotate(0, 496, 83)">
					<g id="person-me-back-arms-left-lower-group" transform="translate(-11, 0) rotate(0, 535, 83)">
						<g id="person-me-back-arms-left-hand-group" transform="translate(-11, 0) rotate(0, 579, 83)">
							<g id="person-me-back-arms-left-hand">
								<path id="person-me-back-arms-left-hand-shape" class="personmeflesh" d="M257,58c0-1.9,1.6-3.5,3.5-3.5h7
									c1.9,0,3.5,1.6,3.5,3.5l0,0c0,1.9-1.6,3.5-3.5,3.5h-7C258.6,61.5,257,59.9,257,58L257,58z"/>
							</g>
							<circle id="person-me-back-arms-left-hand-ball" class="ball" cx="267.5" cy="58" r="4"/>
						</g>
						<g id="person-me-back-arms-left-lower">
							<path id="person-me-back-arms-left-lower-shape" class="personmeclothes" d="M253,57.8c0-1.9,1.4-3.4,3.1-3.4h33.8
								c1.7,0,3.1,1.5,3.1,3.4v0.3c0,1.9-1.4,3.4-3.1,3.4h-33.8c-1.7,0-3.1-1.5-3.1-3.4V57.8z"/>
						</g>
						<g id="person-me-back-arms-left-lower-socket">
							<circle class="socket" cx="256.5" cy="58" r="4"/>
						</g>
						<circle id="person-me-back-arms-left-lower-ball" class="ball" cx="289.5" cy="58" r="4"/>
					</g>
					<g id="person-me-back-arms-left-upper">
						<path id="person-me-back-arms-left-upper-shape" class="personmeclothes" d="M275,57.8c0-1.9,1.2-3.4,2.7-3.4h29.6
							c1.5,0,2.7,1.5,2.7,3.4v0.3c0,1.9-1.2,3.4-2.7,3.4h-29.6c-1.5,0-2.7-1.5-2.7-3.4V57.8z"/>
					</g>
					<g id="person-me-back-arms-left-upper-socket">
						<circle class="socket" cx="278.5" cy="58" r="4"/>
					</g>
					<circle id="person-me-back-arms-left-upper-ball" class="ball" cx="306.5" cy="58" r="4"/>
				</g>
				<g id="person-me-back-arms-right" transform="translate(-26, 0) rotate(0, 496, 83)">
					<g id="person-me-back-arms-right-lower-group" transform="translate(-11, 0) rotate(0, 535, 83)">
						<g id="person-me-back-arms-right-hand-group" transform="translate(-11, 0) rotate(0, 579, 83)">
							<g id="person-me-back-arms-right-hand">
								<path id="person-me-back-arms-right-hand-shape" class="personmeflesh" d="M439.5,58c0,1.9-1.6,3.5-3.5,3.5h-7
									c-1.9,0-3.5-1.6-3.5-3.5l0,0c0-1.9,1.6-3.5,3.5-3.5h7C437.9,54.5,439.5,56.1,439.5,58L439.5,58z"/>
							</g>
							<circle id="person-me-back-arms-right-hand-ball" class="ball" cx="429" cy="58" r="4"/>
						</g>
						<g id="person-me-back-arms-right-lower">
							<path id="person-me-back-arms-right-lower-shape" class="personmeclothes" d="M421.5,58.1c0,1.9-1.4,3.4-3.1,3.4h-33.8
								c-1.7,0-3.1-1.5-3.1-3.4v-0.3c0-1.9,1.4-3.4,3.1-3.4h33.8c1.7,0,3.1,1.5,3.1,3.4V58.1z"/>
						</g>
						<g id="person-me-back-arms-right-lower-socket">
							<circle class="socket" cx="418" cy="58" r="4"/>
						</g>
						<circle id="person-me-back-arms-right-lower-ball" class="ball" cx="385" cy="58" r="4"/>
					</g>
					<g id="person-me-back-arms-right-upper">
						<path id="person-me-back-arms-right-upper-shape" class="personmeclothes" d="M377.5,58.1c0,1.9-1.2,3.4-2.7,3.4h-29.6
							c-1.5,0-2.7-1.5-2.7-3.4v-0.3c0-1.9,1.2-3.4,2.7-3.4h29.6c1.5,0,2.7,1.5,2.7,3.4V58.1z"/>
					</g>
					<g id="person-me-back-arms-right-upper-socket">
						<circle class="socket" cx="374" cy="58" r="4"/>
					</g>
					<circle id="person-me-back-arms-right-upper-ball" class="ball" cx="346" cy="58" r="4"/>
				</g>
			</g>
			<g id="person-me-back-pelvis-group">
				<g id="person-me-back-pelvis">
					<path id="person-me-back-pelvis-shape" class="personmeclothes" d="M320,99.5c0,6.1-4.9,11-11,11h-18c-6.1,0-11-4.9-11-11l0,0
						c0-6.1,4.9-11,11-11h18C315.1,88.5,320,93.4,320,99.5L320,99.5z"/>
				</g>
				<g id="person-me-back-pelvis-socket-legs-left">
					<circle class="socket" cx="285" cy="99.5" r="5"/>
				</g>
				<g id="person-me-back-pelvis-socket-legs-right">
					<circle class="socket" cx="315" cy="99.5" r="5"/>
				</g>
			</g>
			<g id="person-me-back-torso-group">
				<g id="person-me-back-torso">
					<path id="person-me-back-torso-shape" class="personmeclothes" d="M279.5,61.8c-1,0-3-1.8-3-3.6v-0.3c0-1.9,2.3-3.4,4-3.4h7.1
						h3.2h20.5h3.2h7.1c1.7,0,2,1.5,2,3.4v0.3c0,1.9-1,3.6-3,3.6V67v9.5c0,6.6-3.6,12-9.2,12h-20.5c-5.7,0-11.2-5.4-11.2-12V67v-5.2
						H279.5z"/>
				</g>
				<g id="person-me-back-torso-socket-arms-left">
					<circle class="socket" cx="280" cy="58" r="4"/>
				</g>
				<g id="person-me-back-torso-socket-arms-right">
					<circle class="socket" cx="320" cy="58" r="4"/>
				</g>
				<g id="person-me-back-headneck-socket">
					<circle class="socket" cx="300" cy="54.5" r="5"/>
				</g>
			</g>
			<g id="person-me-back-headneck">
				<g id="person-me-back-neck-group" transform="translate(0, 11.5) rotate(0, 450, 68)">
					<g id="person-me-back-neck">
						<path id="person-me-back-neck-shape" class="personmeflesh" d="M295,37c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5v6
							c0,2.8-2.2,5-5,5l0,0c-2.8,0-5-2.2-5-5V37z"/>
					</g>
					<g id="person-me-back-head-group" transform="translate(0, 11.5) rotate(0, 450, 50.5)">
						<g id="person-me-back-head">
							<path id="person-me-back-head-shape" class="personmeflesh" d="M291.5,11.6c0-3.6,3-6.6,6.6-6.6h3.8c3.6,0,6.6,3,6.6,6.6v8.8
								c0,3.6-3,6.6-6.6,6.6h-3.8c-3.6,0-6.6-3-6.6-6.6V11.6z"/>
							<g id="person-me-back-head-option-4">
								<path class="personmehat" d="M305,59.6c9.1,0,8.5-4.6,10-16.9s2.1-9.5,5.1-11.8s-6.8-1.8-8-4.5s3.5-12.2-1.5-18
									s-4.5-8-10.5-8c-5.2,0-11.2,7.8-11.2,11s2.1,13.6-1.2,17C281.4,34.7,284.5,59.6,305,59.6z"/>
							</g>
							<g id="person-me-back-head-option-3">
								<path class="personmehat" d="M313.5,11c0-6.4-5.5-11.5-13.5-11.5S286.5,4.6,286.5,11c0,11.5,5.5,11.5,13.5,11.5
									S313.5,22.5,313.5,11z"/>
							</g>
							<g id="person-me-back-head-option-2">
								<path class="personmehair" d="M300,1.2c-4.8,0-9.7,4.3-9.8,10.2c-0.1,6.5,5,11.3,9.8,11.3s9.8-4.8,9.8-11.3
									C309.7,5.5,304.8,1.2,300,1.2z"/>
								<ellipse class="personmehair" cx="300" cy="20.2" rx="5" ry="15.5"/>
								<path class="personmehat" d="M300.1,8.9c1.5,0,2.9,0.5,3.8,1.2c0,0,0,0,0,0c0-2.1-1.7-3.9-3.9-3.9s-3.9,1.7-3.9,3.9
									c0,0,0,0.1,0,0.1C297,9.4,298.4,8.9,300.1,8.9z"/>
							</g>
							<g id="person-me-back-head-option-1">
								<path class="personmehair" d="M300.6,2c-3.6,0-6.8,0.3-6.2-2.5c0.7-2.8-5,0.8-5.8,4c-0.8,3.2,2,8.1,2,8.1l1,8.8
									c0,0,1,0.3,5.5,1c1.3,0.2,7,0,7,0l3.5,0c1-1,6.2-10.7,3-13.9C307.5,4.3,306.8,2,300.6,2z"/>
							</g>
						</g>
						<circle id="person-me-back-head-ball" class="ball" cx="300" cy="25.5" r="5"/>
					</g>
					<circle id="person-me-back-headneck-ball" class="ball" cx="300" cy="43" r="5"/>
					<g id="person-me-back-neck-socket">
						<circle class="socket" cx="300" cy="37" r="5"/>
					</g>
				</g>
			</g>
		</g>
	</g>
	<g id="person-me-front">
		<g id="person-me-front-body">
			<g id="person-me-front-legs">
				<g id="person-me-front-legs-left">
					<g id="person-me-front-legs-left-upper-group" transform="translate(0, -22) rotate(0, 134.5, 146.5)">
						<g id="person-me-front-legs-left-lower-group" transform="translate(0, -12.5) rotate(0, 134.5, 197.5)">
							<g id="person-me-front-legs-left-lower">
								<path id="person-me-front-legs-left-lower-shape" class="personmeclothes" d="M119.5,172.5c0-2.8-2.2-5-5-5l0,0
									c-2.8,0-5,2.2-5,5v42c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V172.5z"/>
							</g>
							<g id="person-me-front-legs-left-foot-group" transform="translate(0, -17) rotate(0, 134.5, 256.5)">
								<g id="person-me-front-legs-left-foot">
									<path id="person-me-front-legs-left-foot-shape" class="personmeflesh" d="M119.5,234.5c0,2.8-2.2,2-5,2l0,0
										c-2.8,0-5,0.8-5-2v-3c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V234.5z"/>
								</g>
								<circle id="person-me-front-legs-left-foot-ball" class="ball" cx="114.5" cy="231.5" r="5"/>
							</g>
							<g id="person-me-front-legs-left-lower-socket">
								<circle class="socket" cx="114.5" cy="214.5" r="5"/>
							</g>
							<circle id="person-me-front-legs-left-lower-ball" class="ball" cx="114.5" cy="172.5" r="5"/>
						</g>
						<g id="person-me-front-legs-left-upper">
							<path id="person-me-front-legs-left-upper-shape" class="personmeclothes" d="M119.5,121.5c0-2.8-2.2-5-5-5l0,0
								c-2.8,0-5,2.2-5,5v38c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V121.5z"/>
						</g>
						<g id="person-me-front-legs-left-upper-socket">
							<circle class="socket" cx="114.5" cy="160" r="5"/>
						</g>
						<circle id="person-me-front-legs-left-upper-right-ball" class="ball" cx="114.5" cy="121.5" r="5"/>
					</g>
				</g>
				<g id="person-me-front-legs-right">
					<g id="person-me-front-legs-right-upper-group" transform="translate(0, -22) rotate(0, 134.5, 146.5)">
						<g id="person-me-front-legs-right-lower-group" transform="translate(0, -12.5) rotate(0, 134.5, 197.5)">
							<g id="person-me-front-legs-right-lower">
								<path id="person-me-front-legs-right-lower-shape" class="personmeclothes" d="M89.5,172.5c0-2.8-2.2-5-5-5l0,0
									c-2.8,0-5,2.2-5,5v42c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V172.5z"/>
							</g>
							<g id="person-me-front-legs-right-foot-group" transform="translate(0, -17) rotate(0, 134.5, 256.5)">
								<g id="person-me-front-legs-right-foot">
									<path id="person-me-front-legs-right-foot-shape" class="personmeflesh" d="M89.5,234.5c0,2.8-2.2,2-5,2l0,0
										c-2.8,0-5,0.8-5-2v-3c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5V234.5z"/>
								</g>
								<circle id="person-me-front-legs-right-foot-ball" class="ball" cx="84.5" cy="231.5" r="5"/>
							</g>
							<g id="person-me-front-legs-right-lower-socket">
								<circle class="socket" cx="84.5" cy="214.5" r="5"/>
							</g>
							<circle id="person-me-front-legs-right-lower-ball" class="ball" cx="84.5" cy="172.5" r="5"/>
						</g>
						<g id="person-me-front-legs-right-upper">
							<path id="person-me-front-legs-right-upper-shape" class="personmeclothes" d="M89.5,121.5c0-2.8-2.2-5-5-5l0,0
								c-2.8,0-5,2.2-5,5v38c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V121.5z"/>
						</g>
						<g id="person-me-front-legs-right-upper-socket">
							<circle class="socket" cx="84.5" cy="160" r="5"/>
						</g>
						<circle id="person-me-front-legs-right-upper-right-ball" class="ball" cx="84.5" cy="121.5" r="5"/>
					</g>
				</g>
			</g>
			<g id="person-me-front-pelvis-group">
				<g id="person-me-front-pelvis">
					<path id="person-me-front-pelvis-shape" class="personmeclothes" d="M119.5,99.5c0-6.1-4.9-11-11-11h-18c-6.1,0-11,4.9-11,11
						l0,0c0,6.1,4.9,11,11,11h18C114.6,110.5,119.5,105.6,119.5,99.5L119.5,99.5z"/>
				</g>
				<g id="person-me-front-pelvis-socket-legs-right">
					<circle class="socket" cx="84.5" cy="99.5" r="5"/>
				</g>
				<g id="person-me-front-pelvis-socket-legs-left">
					<circle class="socket" cx="114.5" cy="99.5" r="5"/>
				</g>
			</g>
			<g id="person-me-front-arms">
				<g id="person-me-front-arms-right" transform="translate(26, 0) rotate(0, 104, 83)">
					<g id="person-me-front-arms-right-lower-group" transform="translate(11, 0) rotate(0, 65, 83)">
						<g id="person-me-front-arms-right-hand-group" transform="translate(11, 0) rotate(0, 21, 83)">
							<g id="person-me-front-arms-right-hand">
								<path id="person-me-front-arms-right-hand-shape" class="personmeflesh" d="M-39.5,58c0,1.9,1.6,3.5,3.5,3.5h7
									c1.9,0,3.5-1.6,3.5-3.5l0,0c0-1.9-1.6-3.5-3.5-3.5h-7C-37.9,54.5-39.5,56.1-39.5,58L-39.5,58z"/>
							</g>
							<circle id="person-me-front-arms-right-hand-ball" class="ball" cx="-29" cy="58" r="4"/>
						</g>
						<g id="person-me-front-arms-right-lower">
							<path id="person-me-front-arms-right-lower-shape" class="personmeclothes" d="M-21.5,58.1c0,1.9,1.4,3.4,3.1,3.4h33.8
								c1.7,0,3.1-1.5,3.1-3.4v-0.3c0-1.9-1.4-3.4-3.1-3.4h-33.8c-1.7,0-3.1,1.5-3.1,3.4V58.1z"/>
						</g>
						<g id="person-me-front-arms-right-lower-socket">
							<circle class="socket" cx="-18" cy="58" r="4"/>
						</g>
						<circle id="person-me-front-arms-right-lower-ball" class="ball" cx="15" cy="58" r="4"/>
					</g>
					<g id="person-me-front-arms-right-upper">
						<path id="person-me-front-arms-right-upper-shape" class="personmeclothes" d="M22.5,58.1c0,1.9,1.2,3.4,2.7,3.4h29.6
							c1.5,0,2.7-1.5,2.7-3.4v-0.3c0-1.9-1.2-3.4-2.7-3.4H25.2c-1.5,0-2.7,1.5-2.7,3.4V58.1z"/>
					</g>
					<circle id="person-me-front-arms-right-upper-ball" class="ball" cx="54" cy="58" r="4"/>
					<g id="person-me-front-arms-right-upper-socket">
						<circle class="socket" cx="26" cy="58" r="4"/>
					</g>
				</g>
				<g id="person-me-front-arms-left" transform="translate(-26, 0) rotate(0, 196, 83)">
					<g id="person-me-front-arms-left-lower-group" transform="translate(-11, 0) rotate(0, 235, 83)">
						<g id="person-me-front-arms-left-hand-group" transform="translate(-11, 0) rotate(0, 279, 83)">
							<g id="person-me-front-arms-left-hand">
								<path id="person-me-front-arms-left-hand-shape" class="personmeflesh" d="M238.5,58c0-1.9-1.6-3.5-3.5-3.5h-7
									c-1.9,0-3.5,1.6-3.5,3.5l0,0c0,1.9,1.6,3.5,3.5,3.5h7C236.9,61.5,238.5,59.9,238.5,58L238.5,58z"/>
							</g>
							<circle id="person-me-front-arms-left-hand-ball" class="ball" cx="229" cy="58" r="4"/>
						</g>
						<g id="person-me-front-arms-left-lower">
							<path id="person-me-front-arms-left-lower-shape" class="personmeclothes" d="M220.5,57.9c0-1.9-0.4-3.4-2.1-3.4h-33.8
								c-1.7,0-4.1,1.5-4.1,3.4v0.3c0,1.9,2.4,3.4,4.1,3.4h33.8c1.7,0,2.1-1.5,2.1-3.4V57.9z"/>
						</g>
						<g id="person-me-front-arms-left-lower-socket">
							<circle class="socket" cx="218" cy="58" r="4"/>
						</g>
						<circle id="person-me-front-arms-left-lower-ball" class="ball" cx="185" cy="58" r="4"/>
					</g>
					<g id="person-me-front-arms-left-upper">
						<path id="person-me-front-arms-left-upper-shape" class="personmeclothes" d="M176.5,57.9c0-1.9-0.2-3.4-1.7-3.4h-29.6
							c-1.5,0-3.7,1.5-3.7,3.4v0.3c0,1.9,2.2,3.4,3.7,3.4h29.6c1.5,0,1.7-1.5,1.7-3.4V57.9z"/>
					</g>
					<circle id="person-me-front-arms-left-upper-ball" class="ball" cx="146" cy="58" r="4"/>
					<g id="person-me-front-arms-left-upper-socket">
						<circle class="socket" cx="174" cy="58" r="4"/>
					</g>
				</g>
			</g>
			<g id="person-me-front-torso-group">
				<g id="person-me-front-torso">
					<path id="person-me-front-torso-shape" class="personmeclothes" d="M120.5,61.8c1.7,0,3-1.8,3-3.6v-0.3c0-1.9-1.3-3.4-3-3.4
						h-7.1h-3.2H89.7h-3.2h-7.1c-1.7,0-3,1.5-3,3.4v0.3c0,1.9,1.3,3.6,3,3.6V67v9.5c0,6.6,4.6,12,10.2,12h20.5
						c5.7,0,10.2-5.4,10.2-12V67v-5.2H120.5z"/>
				</g>
				<g id="person-me-front-torso-socket-arms-right">
					<circle class="socket" cx="80" cy="58" r="4"/>
				</g>
				<g id="person-me-front-torso-socket-arms-left">
					<circle class="socket" cx="120" cy="58" r="4"/>
				</g>
				<g id="person-me-front-headneck-socket">
					<circle class="socket" cx="100" cy="54.5" r="5"/>
				</g>
				<g id="person-me-front-headneck">
					<g id="person-me-front-neck-group" transform="translate(0, 11.5) rotate(0, 150, 68)">
						<g id="person-me-front-neck">
							<path id="person-me-front-neck-shape" class="personmeflesh" d="M105,37c0-2.8-2.2-5-5-5l0,0c-2.8,0-5,2.2-5,5v6
								c0,2.8,2.2,5,5,5l0,0c2.8,0,5-2.2,5-5V37z"/>
						</g>
						<g id="person-me-front-head-group" transform="translate(0, 11.5) rotate(0, 150, 50.5)">
							<g id="person-me-front-head">
								<path id="person-me-front-head-shape" class="personmeflesh" d="M108.5,11.6c0-3.6-3-6.6-6.6-6.6h-3.8c-3.6,0-6.6,3-6.6,6.6
									v8.8c0,3.6,3,6.6,6.6,6.6h3.8c3.6,0,6.6-3,6.6-6.6V11.6z"/>
								<g id="person-me-front-head-option-4">
									<path class="personmehat" d="M112.5,28.5c-3.5-3.2-1.2-13.8-1.2-17s-6-11-11.2-11c-6,0-5.5,2.2-10.5,8s-0.2,15.2-1.5,18
										s-11,2.2-8,4.5s4.5-4.8,6,7.5s14.5,22.2,23.5,21S116,31.8,112.5,28.5z M101.9,27c-9.7,0-10.2-3.7-10.4-6.6
										c-0.2-2.9,1-12.1,8-12.9c0,0,9,4.1,9,8.5C108.5,20.4,108.5,27,101.9,27z"/>
								</g>
								<g id="person-me-front-head-option-3">
									<path class="personmehair" d="M99.6,29.8c0,3.3-6-5.8-6-7c0-2.2,3.2,2.7,4.5,2.7c1.3,0,1.9-2.7,1.9-2.7s0.6,2.7,1.9,2.7
										c1.3,0,4.5-4.9,4.5-2.7c0,1.2-6,10.3-6,7"/>
									<path class="personmehat" d="M100-0.5c-8,0-13.5,5.1-13.5,11.5c0,5.2,2.3,8.1,4.5,9.6l7.5-10.6h2.9l7.5,10.6
										c2.2-1.6,4.5-4.4,4.5-9.6C113.5,4.6,108-0.5,100-0.5z"/>
								</g>
								<g id="person-me-front-head-option-2">
									<path class="personmehair" d="M91.7,14.3c0-5.2,3.2-6.3,8.3-6.3s8.3,1.2,8.3,6.3c0,0.2,1,1.4,1,1.6
										c0.3-1.1,0.5-3.3,0.5-4.5c0-5.9-5-10.2-9.8-10.2s-9.7,4.3-9.8,10.2c0,1.2,0.2,3.4,0.5,4.5C90.7,15.7,91.7,14.5,91.7,14.3z"
										/>
								</g>
								<g id="person-me-front-head-option-1">
									<path class="personmehair" d="M99.5,2c3.6,0,6.8,0.3,6.2-2.5c-0.7-2.8,5,0.8,5.8,4s-2,8.1-2,8.1l-1,8.8
										c0,0-2.3-8.6-3.5-8.1s-11-0.7-11-0.7l-1.5,9.7c-1-1-6.2-10.7-3-13.9S93.3,2,99.5,2z"/>
								</g>
							</g>
							<circle id="person-me-front-head-ball" class="ball" cx="100" cy="25.5" r="5"/>
						</g>
						<circle id="person-me-front-headneck-ball" class="ball" cx="100" cy="43" r="5"/>
						<g id="person-me-front-neck-socket">
							<circle class="socket" cx="100" cy="37" r="5"/>
						</g>
					</g>
				</g>
			</g>
		</g>
	</g>
</g>
<g id="Labels">
	<rect x="10" y="6" class="st2" width="123" height="33"/>
	<text transform="matrix(1 0 0 1 10 16.6401)"><tspan x="0" y="0" class="st3 st4">Me</tspan><tspan x="0" y="14.4" class="st3 st5">Front</tspan></text>
	<rect x="210" y="6" class="st2" width="123" height="33"/>
	<text transform="matrix(1 0 0 1 210 16.6401)"><tspan x="0" y="0" class="st3 st4">Me</tspan><tspan x="0" y="14.4" class="st3 st5">Back</tspan></text>
	<rect x="410" y="6" class="st2" width="123" height="33"/>
	<text transform="matrix(1 0 0 1 410 16.6401)"><tspan x="0" y="0" class="st3 st4">Me</tspan><tspan x="0" y="14.4" class="st3 st5">Right</tspan></text>
</g>
</svg>
</figure>
    <h2>Customisation: choose your graphic set and options</h2>
    <label>Replacement graphic set: 
  <asp:DropDownList ID="mnuGraphicSet"
        AutoPostBack="True"
        OnSelectedIndexChanged="UpdateImageUrls"
        runat="server">
    <asp:ListItem Selected="True" Value="">None</asp:ListItem>
    <asp:ListItem Value="cricketers.svg">Cricketers</asp:ListItem>
    <asp:ListItem Value="rollergirls.svg">Rollergirls</asp:ListItem>
   </asp:DropDownList>
   </label>
   <asp:CheckBox ID="chkAlcohol" runat="server"
                    AutoPostBack="True"
                    Text="Include alcohol?"
                    Checked="true"
                    OnCheckedChanged="UpdateImageUrls"/>
    <h2>Sample graphics: see the effects</h2>
    <p>Introduction goes here.</p>
    <figure>
      <asp:Image ID="imgInterview" runat="server"
           AlternateText="A job interview drawn in vector graphics." />
      <figcaption>A job interview will often see the applicant seated across a table from a panel of three interviewers.</figcaption>
    </figure>
    <figure>
      <asp:Image ID="imgVillageCricket" runat="server"
           AlternateText="A village cricket scene drawn in vector graphics." /> 
      <figcaption>Village cricket as played around the world is seldom merely a sporting event.</figcaption>
    </figure>
    <h2>Notes</h2>
    <ol>
    	<li>This demo uses just enough crude coding to get it working. Production code would be somewhat differently architected, more effective and scalable.</li>
    	<li>The SVG images should be basically responsive, and scale somewhat to different window sizes (with limits).</li>
    	<li>The choices are limited to give an indication of working with enough visual distinction, and should not be taken as suggestions or blueprints.</li>
    	<li>SVG is capable of providing more complex fills like patterns. These are not currently represented here.</li>
      <li>For convenience of building the demonstration, only one basic body geometry is supported here (for example, no gender/age/height/width/limb differences). To integrate different body geometries with graphic environments and objects, a system of alignments (baseline to ground, to chairs, hands to held objects) would probably need to be devised.</li>
      <li>Colour names are taken from standard web colours.</li>
      <li>Faces, expressions, hand shapes and other significant details are outside the scope of this demo.</li>
      <li>Circles with red and green dashed circumferences representing ball and socket joints are likely still visible in some cases, caused by some objects losing their style names in Illustrator. I haven't got round to cleaning up the code so they are automatically hidden. Nevertheless, they form a crucial part of the infrastructure for connecting heads and limbs, and rotating them around the correct point, so they are interesting to show.</li>
    </ol>
  <p>Last updated: <time>2016-07-25</time>.</p>
</asp:Content>

