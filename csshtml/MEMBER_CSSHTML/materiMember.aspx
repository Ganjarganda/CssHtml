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
    <br /><br />
    <center><h3>MATERI</h3></center>
    <div class="banner-bottom">
        <div class="container">
            <div class="banner-bottom-grids">
                <div class="col-md-6 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-html">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/htmlMember.aspx">HTML</a></li>
                                </ul>
                            </div>
                            <h3>Tutorial Belajar HTML</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-css">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember.aspx" class="sport">CSS</a></li>
                                </ul>
                            </div>
                            <h3>Tutorial Belajar CSS</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

