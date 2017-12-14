<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/MemberMaster.master" %>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim username As String = CType(Session.Item("username"), String)
        Label1.Text = username
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="coding">
        <h1>CSS - Basic 1</h1>
        <p>Contoh kode program: </p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/imagesuser/codingcss.JPG" BorderWidth="4" BorderStyle="Ridge" />

        <p>Contoh hasil :</p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/imagesuser/hasilcss.JPG" BorderWidth="4" BorderStyle="Ridge" />
    </div>
</asp:Content>

