<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reg_page.aspx.cs" Inherits="MajorProject.Reg_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Registeration Form -->

    <div class="container-fluid" id="register_container">
        <div class="row">
            <div class="col-md-4 col-sm-12"></div>

            <div class="col-md-4 col-sm-12">

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="name" runat="server" Width="200px" ValidationGroup="reg_group"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="age" runat="server" Width="200px" ValidationGroup="reg_group"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="age" ErrorMessage="Age Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" ValidationGroup="reg_group">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="gender" ErrorMessage="Select Gender" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <br />
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="email" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="email" ErrorMessage="Contact Number Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="contact" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contact" ErrorMessage="Contact Number Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
             
                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="address" runat="server" Width="200px" ValidationGroup="reg_group"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="Address Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label5" runat="server" Text="Choose Password"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="passwd" runat="server" Width="200px" ValidationGroup="reg_group"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="passwd" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="cpasswd" runat="server" Width="200px" ValidationGroup="reg_group"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cpasswd" ErrorMessage="Confirm Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-8">
                        <asp:Button ID="reg_btn" class="reg_btn" runat="server" Text="Register" Width="150px" ValidationGroup="reg_group" OnClick="reg_btn_Click" />
                        <asp:Label ID="Label9" runat="server"></asp:Label>
                    </div>
                </div>

            </div>

            <div class="col-md-4 col-sm-12">
            </div>

        </div>
    </div>
    <!-- Registeration Form Ends -->
</asp:Content>
