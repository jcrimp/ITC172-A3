<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register</h1>
        <table>
            <tr>
                <td>
                    First name
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Last name
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    User name
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm password
                </td>
                <td>
                    <asp:TextBox ID="txtConfirm" TextMode="Password" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
                <td>
                    <asp:Label ID="lblErrorSuccess" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="lbLogIn" PostBackUrl="~/Default.aspx" runat="server" CausesValidation="false">Log in</asp:LinkButton>


        <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName" ErrorMessage="User name is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword" ErrorMessage="Choose a password" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="ConfirmRequired" runat="server" ControlToValidate="txtConfirm" ErrorMessage="You must confirm your password" Display="None"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="EmailRegularExpression" runat="server" ErrorMessage="Enter a valid email" ControlToValidate="txtEmail" Display ="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <asp:CompareValidator ID="passwordCompare" runat="server" ErrorMessage="Passwords do not match" ControlToValidate="txtConfirm" ControlToCompare="txtPassword" Display="None"></asp:CompareValidator>

        <asp:ValidationSummary ID="ValidationSummaryRegister" runat="server" />

    </div>
    </form>
</body>
</html>
