<%@ Page Title="" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tupperware.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact-wrap">
	<div id="form">
	
	<h3>Contact Form</h3>

	<div class="container">
	  <form action="/action_page.php">
		<label for="name">Name</label>
		<input type="text" id="name" name="name" placeholder="Your name..">

		<label for="email">Email</label>
		<input type="text" id="email" name="email" placeholder="Enter your valid email..">

		<label for="subject">Subject</label>
		<input type="text" id="subject" name="sunject" placeholder="Enter subject">
	
		<label for="message">Message</label>
		<textarea id="message" name="message" placeholder="Write message here.." style=""></textarea>

		<input type="submit" value="Submit">
	  </form>
	</div>
	</div>
	<div id="contact-text-box">
		<h3>Address</h3>
		<p>No.41, Simpang 479-54,</p>
		<p>Jalan Wasai Limuru,</p>
		<p>Brunei-Muara,</p>
		<p>Negara Brunei Darussalam.</p>
		<p>BU1129</p>
		<br></br>
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
