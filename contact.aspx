<%@ Page Title="Si Solutions | Contact" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent1pholder" runat="Server">
    <h1>Contact Us</h1>
    <h2>Fill in and submit the form to contact us</h2>

    <form id="frmContact" runat="server">
        <asp:Panel runat="server" ID="pnlCompose">
            <asp:ValidationSummary ID="Validationsummary1" runat="server" CssClass="errorMessages"></asp:ValidationSummary>

            <div>
            <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                ErrorMessage="Please enter your name" 
                ControlToValidate="txtName" CssClass="error">*</asp:RequiredFieldValidator>
                </div>

            <div>
            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="Please enter your email address" 
                ControlToValidate="txtEmail" CssClass="error">*</asp:RequiredFieldValidator>
                </div>

            <div>
            <asp:Label ID="lblSubject" runat="server" Text="Subject:" AssociatedControlID="txtSubject"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ErrorMessage="Please type a subject for the message" 
                ControlToValidate="txtSubject" CssClass="error">*</asp:RequiredFieldValidator>
                </div>

            <div>
            <asp:Label ID="lblContact" runat="server" Text="Message:" AssociatedControlID="txtContact"></asp:Label>
            <asp:TextBox ID="txtContact" runat="server" TextMode="MultiLine" Height="132px" Width="180px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvContact" runat="server" 
                ErrorMessage="Please type your message" ControlToValidate="txtContact" CssClass="error">*</asp:RequiredFieldValidator>
                </div>

            <div>
            <asp:Button ID="btnSend" CssClass="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                </div>

            </asp:Panel>

            <asp:Panel ID="pnlSent" runat="server" Visible="false">
                <p>Your message has been sent!</p>
            </asp:Panel>

    </form>

    <div id="contactMap">

    </div>

    <h3>Address:</h3>
    <p>
        144 Market Street
       <br />
        Crewe
        <br />
        CW1 3ND
    </p>
    <h3>Phone:</h3>
    <p>01270 582698</p>
    <h3>Email:</h3>
    <p>info@si-solutions.com</p>

</asp:Content>

