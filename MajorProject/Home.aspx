<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="none" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MajorProject.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-2">
                <asp:Button ID="reg_show" runat="server" Text="Register" OnClick="reg_show_Click" Width="150px" />
            </div>
            <div class="col-md-2">
                <asp:Button ID="login_show" runat="server" Text="Login" OnClick="login_show_Click" Width="150px" />
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

   


   


</asp:Content>
