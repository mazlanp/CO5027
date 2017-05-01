<%@ Page Title="" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tupperware.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contact-wrap">
	<div id="form">
	
	<h3>Contact Form</h3>

	<div class="container">
		<asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
		&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:textbox runat="server" id="txtName"></asp:textbox>

		<asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>

		<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
		&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid Email!" ForeColor="Red"></asp:RegularExpressionValidator>
        <asp:textbox runat="server" id="txtEmail"></asp:textbox>

		
		<asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>

		
		<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSubject" ErrorMessage="*Subject is required" ForeColor="Red"></asp:RequiredFieldValidator>

		
		<asp:textbox runat="server" id="txtSubject"></asp:textbox>
	
		Message<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMsg" ErrorMessage="*Enter your message here" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;<asp:textbox runat="server" textMode="MultiLine" id="txtMsg" style="height: 182px"></asp:textbox>&nbsp;
	
	    <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send" />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
	</div>
	</div>
 
	<div id="contact-text-box">
		<h3>Address</h3>
		<p>No.41, Simpang 479-54,</p>
		<p>Jalan Wasai Limuru,</p>
		<p>Brunei-Muara,</p>
		<p>Negara Brunei Darussalam.</p>
		<p>BU1129</p>
		<br>
		<h3>Telephone</h3>
		<p>+6737270792</p>
		<p>2972449</p>
	</div>
	
	<!-- Map  -->
	
	<h3>Our store</h3>
	<div id="map">
		<script src="js/map.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2Lz_OCBQPrWqxg1rgNfe1RQkkifiWdmM&callback=myMap"></script>
	</div>
    </div>

</asp:Content>
