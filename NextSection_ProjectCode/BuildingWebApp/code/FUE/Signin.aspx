<%@ Page Language="C#" %>
<%@import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         if (txtUsername.Text == "admin2020" && txtPassword.Text=="admin")
                Response.Redirect("~/AdminHome.aspx");//-----------VIP
         else
            lblMsg.Text = "Incoorect Username and/or Password!!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 132px;
            height: 28px;
        }
        .auto-style4 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="Large" ForeColor="#000066" Text="Sign In"></asp:Label>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Username:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUsername" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="182px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066" Width="182px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSubmit" runat="server" Font-Names="Arial Black" Font-Size="Medium" ForeColor="#000066" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#000066">Forgot Password?</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
    
        <asp:Label ID="lblMsg" runat="server" Font-Names="Arial Black" Font-Size="Large" ForeColor="#000066"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
