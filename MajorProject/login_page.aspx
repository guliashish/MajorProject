<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="MajorProject.login_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Login Form Start -->

    <div class="container-fluid" id="login_container" runat="server">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>

            <div class="col-md-4 col-sm-12">

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label10" runat="server" Text="User ID"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="login_group" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Id Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="login_group" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-8">
                        <asp:Button ID="log_btn" runat="server" Text="Login" ValidationGroup="login_group" OnClick="log_btn_Click" /><br />
                        <asp:Label ID="LoginError" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Login form Ends -->
</asp:Content>
