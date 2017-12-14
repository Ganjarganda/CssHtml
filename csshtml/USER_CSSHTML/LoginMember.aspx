<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/FormUserMember.master" %>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        If (txtUname.Text = "winnie") Or (txtUname.Text = "ganjar") Or (txtUname.Text = "Verdi") Then
            Session("username") = txtUname.Text
            Response.Redirect("/MEMBER_CSSHTML/indexMember.aspx")
        Else
            txtUname.Text = ""
            txtPwd.Text = ""
        End If
    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs)
        txtUname.Text = ""
        txtPwd.Text = ""
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form2">
        <h3>Login Murid CSSHTML.COM</h3>
        <table>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Username harus diisi" ControlToValidate="txtUname" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Password harus diisi" ControlToValidate="txtPwd" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Button1_Click" />
                    &nbsp
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /></td>
            </tr>
        </table>
        <h5>&copy 2017 CSSHTML.com - Ganjar - Verdi - Winnie</h5>
    </div>
</asp:Content>

