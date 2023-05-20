<%@ Page  Title="List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="BookManagement.Pages.BookList" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
    <h3>Book List</h3>

         <div class="table-responsive">
            <asp:GridView  CssClass="table table-striped"  runat="server" ID="gvBooks" AutoGenerateColumns="false" DataKeyNames="Id"  Width="645px" OnRowDeleting="gvBooks_RowDeleting" OnRowEditing="gvBooks_RowEditing">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" Visible="false"/>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="Genre" HeaderText="Genre" />
                    <asp:BoundField DataField="PublicationYear" HeaderText="Publication Year" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                  
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="btnDetail" Text="Detail" CssClass="btn btn-info btn-sm" OnClick="btnDetail_Click" CommandArgument='<%#Eval("Id") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="btnEdit" Text="Edit" CssClass="btn btn-primary btn-sm" OnClick="btnEdit_Click"  CommandArgument='<%#Eval("Id") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CssClass="btn btn-danger btn-sm" OnClick="btnDelete_Click" CommandArgument='<%#Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
        </div>
       </div>
</asp:Content>
