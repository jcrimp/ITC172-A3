<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to the Show Review Club</h1>

        <asp:Label ID="lblRegistrationSuccess" runat="server" Text=""></asp:Label>

        <p>Log in below or register to leave a review.</p>
        <table>
            <tr>
                <td>
                    User Name
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
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" />
                </td>
                <td>
                    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                </td>
            </tr>
    
        </table>
        <p>
            <asp:LinkButton ID="lbRegister" PostBackUrl="~/Registration.aspx" runat="server" CausesValidation="false">Register</asp:LinkButton>
        </p>

            <asp:RequiredFieldValidator ID="UserRequired" runat="server" ErrorMessage="Enter your user name" ControlToValidate="txtUserName" Display="None"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="PassRequired" runat="server" ErrorMessage="Enter your password" ControlToValidate="txtPassword" Display="None"></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummaryLogin" runat="server" />
    </div>
    </form>
</body>
</html>
