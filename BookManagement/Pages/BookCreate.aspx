


<%@ Page Title="Create" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookCreate.aspx.cs" Inherits="BookManagement.Pages.BookCreate" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Create Book</h3>
    
       <div>
            <label>Title:</label>
            <asp:TextBox runat="server" ID="txtTitle" ValidationGroup="TimeSlot" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTitle" Display="Dynamic" ForeColor="#CC0000"
             ValidationGroup="Validform" ControlToValidate="txtTitle" runat="server" ErrorMessage="Title is Required"></asp:RequiredFieldValidator>            <br />
            <br />

            <label>Author:</label>
            <asp:TextBox runat="server" ID="txtAuthor"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAuthor" Display="Dynamic" ForeColor="#CC0000"
             ValidationGroup="Validform" ControlToValidate="txtAuthor" runat="server" ErrorMessage="Author is Required"></asp:RequiredFieldValidator>            <br />
            <br />

             <label>Genere:</label>
            <asp:TextBox runat="server" ID="txtGenere"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvGenere" Display="Dynamic" ForeColor="#CC0000"
             ValidationGroup="Validform" ControlToValidate="txtGenere" runat="server" ErrorMessage="Genere is Required"></asp:RequiredFieldValidator>            <br />
            <br />

            <label>Publication Year:</label>
            <asp:TextBox runat="server" ID="txtPublicationYear"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revPublicationYear" runat="server" ErrorMessage="Invalid Publication Year"
                        ControlToValidate="txtPublicationYear" SetFocusOnError="true" ValidationExpression="^\d+$"
                        ValidationGroup="Validform" Display="Dynamic" ForeColor="#CC0000"/>
            <br /><br />

             <label>Price:</label>
            <asp:TextBox runat="server" ID="txtPrice"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPrice" Display="Dynamic" ForeColor="#CC0000"
             ValidationGroup="Validform" ControlToValidate="txtPrice" runat="server" ErrorMessage="Price is Required"></asp:RequiredFieldValidator>            <br />

            <asp:RegularExpressionValidator ID="revPrice" runat="server" ErrorMessage="Invalid Price"
                        ControlToValidate="txtPrice" SetFocusOnError="true" ValidationExpression="^\d+(\.\d+)?$"
                        ValidationGroup="Validform" Display="Dynamic" ForeColor="#CC0000"/>
            <br />

            <asp:Button runat="server" ID="Button1"  Text="Create" CssClass="btn btn-primary btn-sm" OnClick="btnCreate_Click" ValidationGroup="Validform" />
        </div>
    
</asp:Content>



