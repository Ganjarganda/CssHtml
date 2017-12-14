<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/FormUserMember.master" %>

<script runat="server">

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs)
        Session("username") = txtUname.Text
        Response.Redirect("/USER_CSSHTML/LoginMember.aspx")
    End Sub

    Protected Sub btnReset_Click(sender As Object, e As EventArgs)
        txtUname.Text = ""
        txtEmail.Text = ""
        txtPwd.Text = ""
        txtCpwd.Text = ""
        txtAlamat.Text = ""
        ddlJenis.SelectedValue = ""
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form">
        <h3>Form Pendaftaran Murid CSSHTML.COM</h3>
        <table>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="txtUname" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Username harus diisi" ControlToValidate="txtUname" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Email harus diisi" ControlToValidate="txtEmail" ForeColor="Yellow"></asp:RequiredFieldValidator>
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
                <td>Konfirmasi Password</td>
                <td>
                    <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Konfirmasi Password harus diisi" ControlToValidate="txtCpwd" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Alamat Rumah</td>
                <td>
                    <asp:TextBox ID="txtAlamat" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Alamat harus diisi" ControlToValidate="txtAlamat" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Jenis Siswa</td>
                <td>
                    <asp:DropDownList ID="ddlJenis" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Reguler</asp:ListItem>
                        <asp:ListItem>Private</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Jenis siswa harus diisi" ControlToValidate="ddlJenis" ForeColor="Yellow"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <p>Website ini hanya sebatas membantu user dalam memahami,</p>
                    <p>mengenalkan dan mempelajari dasar-dasar pemrograman,</p>
                    <p>bukan sebuah website untuk kursus.</p>
                    <p>Jika ingin kursus, silahkan datang ke alamat kami yang berada</p>
                    <p>di menu "Kontak Kami"</p>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
                <td class="auto-style1">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" /></td>
            </tr>
        </table>
        <h5>&copy 2017 CSSHTML.com - Ganjar - Verdi - Winnie</h5>
    </div>
</asp:Content>

