<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="Berandaadmin.aspx.vb" Inherits="csshtml.Berandaadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!--Chat -->
    <link type="text/css" rel="stylesheet" media="all" href="../Assets/chat/css/chat.css" />
    <link type="text/css" rel="stylesheet" media="all" href="../Assets/chat/css/screen.css" />
    <!-- if ie 7 -->
    <link type="text/css" rel="stylesheet" href="../Assets/chat/css/screen_ie.css" />
    <!-- //Chat-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
    <!-- /inner_content_w3_agile_info-->
    <div class="inner_content_w3_agile_info">
        <!-- /agile_top_w3_grids-->
        <div class="agile_top_w3_grids">
            <ul class="ca-menu">
                <li>
                    <asp:HyperLink ID="beranda_Murid" runat="server" NavigateUrl="siswa.aspx">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        <div class="ca-content">
                            <!---->
                            <h4 class="ca-main">
                                <asp:Label ID="beranda_jumlah_siswa" runat="server" Text=""></asp:Label>
                            </h4>
                            <h3 class="ca-sub">Siswa</h3>
                        </div>
                   </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="beranda_materi" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-book" aria-hidden="true"></i>
                        <div class="ca-content">
                           <h4 class="ca-main">
                                <asp:Label ID="beranda_jumlah_materi" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub one">Semua Materi</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="beranda_css" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-css3" aria-hidden="true"></i>
                        <div class="ca-content">
                           <h4 class="ca-main">
                                <asp:Label ID="beranda_jumlah_css" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub two">Materi CSS</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                     <asp:HyperLink ID="beranda_html" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-html5" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main">
                                <asp:Label ID="beranda_jumlah_html" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub three">Materi HTML</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                     <asp:HyperLink ID="beranda_konfirmasi" runat="server" NavigateUrl="konfirmasicalon.aspx">
                        <i class="fa fa-archive" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main">
                                <asp:Label ID="beranda_jumlah_konfirmasi" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub four">Konfirmasi Calon</h3>
                        </div>
                    </asp:HyperLink>
                </li>
            </ul>
        </div>
    </div>
    <br />
    <!-- Bagian Chat -->
     <div id="main_container" style="padding-left:10px;">
        yang sedang online : <br />
        <a href="javascript:void(0)" onclick="javascript:chatWith('janedoe')">Jane Doe</a><br />
        <a href="javascript:void(0)" onclick="javascript:chatWith('babydoe')">Baby Doe</a>
    </div>
     <!-- //Bagian Chat -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bawah" runat="server">
     <!-- Chat -->
    <script type="text/javascript" src="../Assets/chat/js/jquery.js"></script>
    <script type="text/javascript" src="../Assets/chat/js/chat.js"></script>
</asp:Content>
