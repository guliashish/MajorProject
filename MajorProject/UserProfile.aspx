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
            width: 185px
        }
        .auto-style8 {
            width: 139px;
        }
        .auto-style9 {
            width: 206px;
        }
        .auto-style16 {
            height: 20px;
            width: 217px;
        }
        .auto-style22 {
            width: 239px;
        }
        .auto-style23 {
            height: 20px;
            width: 239px;
        }
        .auto-style29 {
            height: 20px;
            width: 542px;
        }
        .auto-style30 {
            width: 413px
        }
        .auto-style31 {
            width: 217px;
        }
        .auto-style32 {
            height: 20px;
            width: 413px;
        }
        .auto-style33 {
            height: 20px;
            width: 332px;
        }
        .auto-style34 {
            width: 332px
        }
        .auto-style35 {
            height: 20px;
            width: 99px;
        }
        .auto-style36 {
            width: 99px;
        }
        .auto-style37 {
            width: 332px;
            height: 25px;
        }
        .auto-style38 {
            width: 99px;
            height: 25px;
        }
        .auto-style39 {
            width: 239px;
            height: 25px;
        }
        .auto-style40 {
            width: 413px;
            height: 25px;
        }
        .auto-style41 {
            width: 217px;
            height: 25px;
        }
        .auto-style42 {
            width: 101%
        }
        .auto-style43 {
            width: 277px
        }
        .auto-style44 {
            width: 205px;
        }
        .auto-style45 {
            width: 247px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <table class="auto-style42">
        <tr>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style8">

                &nbsp;</td>
            <td class="auto-style9" colspan="3">
            <asp:Label ID="welcome" runat="server" Font-Bold="True" Font-Overline="False" Width="85%" Font-Size="22px"></asp:Label>
            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style45">&nbsp;</td>
            <td class="auto-style44">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">

                &nbsp;</td>
            <td class="auto-style8">

    <asp:Button ID="Button1" runat="server" Text="Profile" OnClick="Button1_Click" Width="150px" CausesValidation="False" Height="30px" />

            </td>
            <td>

                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Profile" Width="150px" CausesValidation="False" Height="30px" />

            </td>
            <td class="auto-style43">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="18px" Font-Underline="True" ForeColor="Black" NavigateUrl="~/Offer_ride.aspx">Offer Ride</asp:HyperLink>
            </td>
            <td class="auto-style43">
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="18px" Font-Underline="True" ForeColor="Black" NavigateUrl="~/Search_ride.aspx">Search Ride</asp:HyperLink>
            </td>
            <td class="auto-style45">
                &nbsp;</td>
            <td class="auto-style44">
                <asp:Button ID="Button4" runat="server" CausesValidation="False" OnClick="Button4_Click" Text="Logout" Width="150px" />
            </td>
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
                <td class="auto-style5"></td>
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
                <td class="auto-style33"></td>
                <td class="auto-style33">
                    <asp:Label ID="Label35" runat="server" Font-Size="24px" Text="User Details"></asp:Label>
                </td>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style29" colspan="2">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="24px" Text="Enter Your Vehicle Details"></asp:Label>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style33">
                    <asp:Label ID="Label36" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Label ID="Label15" runat="server" Text="Number"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="car_number" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="car_number" ErrorMessage="Enter Car Number" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style37"></td>
                <td class="auto-style37">
                    <asp:Label ID="Label37" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style38"></td>
                <td class="auto-style39">
                    <asp:Label ID="Label16" runat="server" Text="Brand"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="car_brand" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="car_brand" ErrorMessage="Enter Car Brand" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style33">
                    <asp:Label ID="Label38" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style33">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Label ID="Label17" runat="server" Text="Model"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="car_model" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="car_model" ErrorMessage="Enter Car Model" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="Label39" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label18" runat="server" Text="Vehicle Kind"></asp:Label>
                </td>
                <td class="auto-style30">
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
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="Label40" runat="server" Text="Contact"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label19" runat="server" Text="Colour"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="car_colour" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="car_colour" ErrorMessage="Enter Car Colour" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">
                    <asp:Label ID="Label41" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Label ID="Label20" runat="server" Text="Model Year"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="car_model_year" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="car_model_year" ErrorMessage="Enter Model Year" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style30">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style30">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Save" Width="100px" CausesValidation="False" />
                    <asp:Label ID="save_message" runat="server"></asp:Label>
                </td>
                <td class="auto-style31">&nbsp;</td>
            </tr>
        </table>

    </div>
    

</asp:Content>
