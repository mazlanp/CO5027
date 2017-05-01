<%@ Page Title="" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tupperware.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="contact-wrap">
	<div id="form">
	
	<h3>Contact Form</h3>

	<div class="container">
		<label for="name">Name</label><asp:RequiredFieldValidator ID="requiredNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
&nbsp;<asp:textbox runat="server" id="txtName"></asp:textbox>

		<label for="email">Email</label>
		<asp:textbox runat="server" id="txtEmail"></asp:textbox>

		<label for="subject">Subject</label>
		<asp:textbox runat="server" id="txtSubject"></asp:textbox>
	
		<label for="message">Message</label>
		<asp:textbox runat="server" textMode="MultiLine" id="txtMsg" style="height: 182px"></asp:textbox>&nbsp;
	
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
	
	<h3>Our stores</h3>
	<div id="map">
		<script src="js/map.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2Lz_OCBQPrWqxg1rgNfe1RQkkifiWdmM&callback=myMap"></script>
	</div>
    </div>

</asp:Content>
