<%@ Page Title="Login" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Tupperware.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div id="contact-wrap">
     <div id="login">

    <h3>Log In</h3>

	<div class="container">
&nbsp;<asp:Label ID="Label" runat="server" Text="Username"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*UserID is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:textbox runat="server" id="txtLoginEmail"></asp:textbox>

		<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter your password here" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:textbox runat="server" id="txtLoginPassword"></asp:textbox>

		<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

		&nbsp;<asp:Literal ID="litLoginError" runat="server"></asp:Literal>
        &nbsp;&nbsp;
	
	    

    
    
  
</asp:Content>
