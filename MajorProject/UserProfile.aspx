<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="MajorProject.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 450px;
        }

        .auto-style3 {
            width: 550px;
        }

        .auto-style5 {
            width: 450px;
            height: 26px;
        }

        .auto-style6 {
            width: 550px;
            height: 26px;
        }
        .auto-style7 {
            width: 285px
        }
        .auto-style8 {
            width: 139px;
        }
        .auto-style9 {
            width: 206px;
        }
        .auto-style10 {
            width: 182px;
        }
        .auto-style11 {
            width: 254px
        }
        .auto-style16 {
            height: 20px;
            width: 304px;
        }
        .auto-style17 {
            width: 390px
        }
        .auto-style19 {
            width: 276px;
        }
        .auto-style20 {
            height: 20px;
            width: 276px;
        }
        .auto-style22 {
            width: 239px;
        }
        .auto-style23 {
            height: 20px;
            width: 239px;
        }
        .auto-style26 {
            height: 20px;
            width: 390px;
        }
        .auto-style27 {
            height: 20px;
            width: 256px;
        }
        .auto-style28 {
            width: 256px
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <table class="nav-justified">
        <tr>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style8">

                &nbsp;</td>
            <td class="auto-style9">
            <asp:Label ID="welcome" runat="server" Font-Bold="True" Font-Overline="False" Width="100%"></asp:Label>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">

    <asp:Button ID="Button1" runat="server" Text="Profile" OnClick="Button1_Click" Width="100px" CausesValidation="False" />

            </td>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Car Details" Width="100px" CausesValidation="False" />
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>

    <!-------------------------------------------------- User Details Container -------------------------------------------------->

    <div class="container" id="UserDetails_Container" runat="server">

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3" id="tr1">
                    <asp:Label ID="Label14" runat="server" Text="User Details"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label22" runat="server" Text="Car Details"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label23" runat="server" Text="Car Number"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label29" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label24" runat="server" Text="Brand"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label30" runat="server"></asp:Label>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label25" runat="server" Text="Model"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label31" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label26" runat="server" Text="Car Type"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label32" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="Contact"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label27" runat="server" Text="Colour"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label33" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label28" runat="server" Text="Model Year"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label34" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>

    </div>

    <!-------------------------------------------------- User Details Container  Ends-------------------------------------------------->

    <div class="container" id="CarDetails_Container" runat="server">

        <table class="nav-justified">
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style23" colspan="2">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="24px" Text="Enter Your Vehicle Details"></asp:Label>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label15" runat="server" Text="Number"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="car_number" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="car_number" ErrorMessage="Enter Car Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label16" runat="server" Text="Brand"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="car_brand" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="car_brand" ErrorMessage="Enter Car Brand" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style23">
                    <asp:Label ID="Label17" runat="server" Text="Model"></asp:Label>
                </td>
                <td class="auto-style26">
                    <asp:TextBox ID="car_model" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="car_model" ErrorMessage="Enter Car Model" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label18" runat="server" Text="Vehicle Kind"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="vehicle_kind" runat="server" Width="200px">
                        <asp:ListItem>Sedan</asp:ListItem>
                        <asp:ListItem>Coupe</asp:ListItem>
                        <asp:ListItem>Sports Car</asp:ListItem>
                        <asp:ListItem>Wagon</asp:ListItem>
                        <asp:ListItem>Hatchback</asp:ListItem>
                        <asp:ListItem>Mini Van</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="vehicle_kind" ErrorMessage="Select Vehicle Kind" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label19" runat="server" Text="Colour"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="car_colour" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="car_colour" ErrorMessage="Enter Car Colour" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label20" runat="server" Text="Model Year"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:TextBox ID="car_model_year" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style17">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" Width="100px" />
                    <asp:Label ID="save_message" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
        </table>

    </div>
    

</asp:Content>
