<%@ Page Language="VB" MasterPageFile="~/SDaspdotnet.master" AutoEventWireup="false" CodeFile="demo.aspx.vb" Inherits="svg_component_custom_demo" title="SVG customisation/personalisation demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
	<link rel="canonical" href="http://www.sleepingdog.org.uk/svg/component/custom/demo.aspx"/>
	<link href="main.css" rel="stylesheet" type="text/css"/>
  <!--<link href="me.css" rel="stylesheet" type="text/css" />-->
  <style ID="styPersonMe" type="text/css" title="me" runat="server"></style>
	<script type="text/javascript" src="application.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphDeveloperContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" Runat="Server">
    <h1><abbr title="Scaleable Vector Graphics">SVG</abbr> customisation/personalisation demo</h1>
  <h2>Personalisation: create your avatar</h2>
  <p>Controls go here.</p>
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
  <figure>
    <svg version="1.1" id="person-me" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 600 200" style="enable-background:new 0 0 600 200;" xml:space="preserve">
<style type="text/css">
	/*.personmeflesh{fill:#E2CCCC;stroke:#B49999;stroke-miterlimit:10;}*/
	.personmehair{fill:#2A0018;}
	.personmehat{fill:#333333;stroke:#66666B;stroke-miterlimit:10;}
	.ball{opacity:0.9;fill:none;stroke:#33FF66;stroke-width:0.5;stroke-miterlimit:10;stroke-dasharray:1;enable-background:new    ;}
	.socket{fill:none;stroke:#FF0000;stroke-width:0.5;stroke-miterlimit:10;stroke-dasharray:0.9803,0.9803;}
	.personmeclothes{fill:#FFFFF0;stroke:#CCC0C0;stroke-miterlimit:10;}
</style>
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
						<path id="person-me-right-head-shape" class="personmeflesh" d="M515.5,17.9l-4-3.6v-2.7c0-3.6-2.8-6.1-6.9-6.1h-4.2
							c-4.1,0-7.9,2.5-7.9,6.1v8.8c0,3.6,3.8,7.1,7.9,7.1h4.2c4.1,0,6.9-3.5,6.9-7.1v-2.1L515.5,17.9z"/>
						<g id="person-me-right-head-option-2">
							<path class="personmehair" d="M502.4,20.5c1.8,0,3.6,0.1,5.4-0.2c0.5-0.1,1-0.1,1.4-0.2s0.8-0.2,1.2-0.4
								c0.4-0.1,0.8-0.1,1.1-0.3c0.3-0.1,0.7-0.3,1-0.3c0.7,0.1,1.2,1.1,1.5,1.7s0.4,1.2,0.6,1.8c0.2,0.5,0.5,0.9,0.6,1.4
								c0.1,0.6,0.3,1.2,0.4,1.7c0.1,0.3,0,0.4,0.2,0.7c0.1,0.2,0.2,0.5,0.3,0.7c0.1,0.5,0.3,1,0.4,1.6c0,0.2,0,0.5,0.1,0.8
								s0.6,0.7,0.8,0.9c0.5,0.4,1,0.8,1.5,1.2c0.1,0.1,0.7,0.4,0.7,0.6c0,0.4-1,0.5-1.3,0.5c-0.8,0.2-1.7,0.2-2.6,0.3
								c-0.8,0-1.5-0.2-2.3-0.4c-1.2-0.4-2.3-0.7-3.5-1.1c-0.7-0.2-1.4-0.5-2.1-0.8c-0.7-0.4-1.5-0.7-2.3-1.1
								c-0.5-0.3-1.1-0.6-1.6-0.9c-0.4-0.2-0.6-0.4-0.9-0.6c-0.7-0.5-1.5-0.8-2.2-1.2c-0.9-0.5-1.3-1.2-1.6-2.3
								c-0.3-0.9-0.3-1.9-0.3-2.9c0-0.3,0-0.6,0.1-0.9c0.2-0.5,0.6-0.5,1-0.5c0.6,0,1.5-0.2,1.9,0.3"/>
							<path class="personmehat" d="M512,10c0,1-2.8,4-8,4c-0.5,0-3.5,1-4,1c-5.2,0-9.5,3.2-9.5-2c0-0.5,0-1.5,0-2
								c0-5.2,3.3-8.5,8.5-8.5c0.5,0,1.5,0,2,0C506.2,2.5,512,4.8,512,10C512,10.5,512,9.5,512,10z"/>
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
				<path id="person-me-right-pelvis-shape" class="personmeclothes" d="M512.5,99.5c0-6.1-2.9-11-6.5-11h-12c-3.6,0-6.5,4.9-6.5,11
					l0,0c0,6.1,2.9,11,6.5,11h12C509.6,110.5,512.5,105.6,512.5,99.5L512.5,99.5z"/>
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
		<g id="person-me-back-headneck">
			<g id="person-me-back-neck-group" transform="translate(0, 11.5) rotate(0, 450, 68)">
				<g id="person-me-back-head-group" transform="translate(0, 11.5) rotate(0, 450, 50.5)">
					<g id="person-me-back-head">
						<path id="person-me-back-head-shape" class="personmeflesh" d="M291.5,11.6c0-3.6,3-6.6,6.6-6.6h3.8c3.6,0,6.6,3,6.6,6.6v8.8
							c0,3.6-3,6.6-6.6,6.6h-3.8c-3.6,0-6.6-3-6.6-6.6V11.6z"/>
						<g id="person-me-back-head-option-1">
							<path class="personmehat" d="M309.3,11.5c-1.4-5-5-8-9.3-8s-7.9,3-9.3,8H309.3z"/>
							<path class="personmehat" d="M307.4,11.5c-1.1-5-4-8-7.4-8s-6.4,3-7.4,8H307.4z"/>
							<path class="personmehat" d="M303.1,11.5c-0.5-5-1.7-8-3.1-8s-2.6,3-3.1,8H303.1z"/>
						</g>
					</g>
					<circle id="person-me-back-head-ball" class="ball" cx="300" cy="25.5" r="5"/>
				</g>
				<g id="person-me-back-neck">
					<path id="person-me-back-neck-shape" class="personmeflesh" d="M295,37c0-2.8,2.2-5,5-5l0,0c2.8,0,5,2.2,5,5v6c0,2.8-2.2,5-5,5
						l0,0c-2.8,0-5-2.2-5-5V37z"/>
				</g>
				<circle id="person-me-back-headneck-ball" class="ball" cx="300" cy="43" r="5"/>
				<g id="person-me-back-neck-socket">
					<circle class="socket" cx="300" cy="37" r="5"/>
				</g>
			</g>
		</g>
		<g id="person-me-back-legs">
			<g id="person-me-back-legs-left">
				<g id="person-me-back-legs-left-upper-group" transform="translate(-0.5, -22) rotate(0, 465.5, 146.5)">
					<g id="person-me-back-legs-left-lower-group" transform="translate(0, -13) rotate(0, 465.5, 197.5)">
						<g id="person-me-back-legs-left-foot-group" transform="translate(0, -17) rotate(0, 465.5, 256.5)">
							<g id="person-me-back-legs-left-foot">
								<path id="person-me-back-legs-left-foot-shape" class="personmeflesh" d="M280.5,234.5c0,2.8,2.2,2,5,2l0,0c2.8,0,5,0.8,5-2
									v-3c0-2.8-2.2-5-5-5l0,0c-2.8,0-5,2.2-5,5V234.5z"/>
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
						<g id="person-me-front-head-option-1">
							<path class="personmehat" d="M91,12.5c2.9,0,5.9,2,9,2s6.1-2,9-2H91z"/>
							<path class="personmehat" d="M109.3,11.5c-1.4-5-5-8-9.3-8s-7.9,3-9.3,8H109.3z"/>
							<path class="personmehat" d="M107.4,11.5c-1.1-5-4-8-7.4-8s-6.4,3-7.4,8H107.4z"/>
							<path class="personmehat" d="M103.1,11.5c-0.5-5-1.7-8-3.1-8s-2.6,3-3.1,8H103.1z"/>
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
		</g>
	</g>
</g>
</svg>
</figure>
    <h2>Customisation: choose your graphic set and options</h2>
    <label>Replacement graphic set (if wanted): 
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
    <p>Last updated: <time>2016-07-18</time>.</p>
</asp:Content>

