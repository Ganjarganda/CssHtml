<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="Berandaadmin.aspx.vb" Inherits="csshtml.Berandaadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
                                <asp:Label ID="beranda_jumlah_murid" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub">Murid</h3>
                        </div>
                   </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="beranda_materi" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-book" aria-hidden="true"></i>
                        <div class="ca-content">
                           <h4 class="ca-main">
                                <asp:Label ID="Label1" runat="server" Text="16808"></asp:Label>
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
                                <asp:Label ID="Label2" runat="server" Text="16808"></asp:Label>
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
                                <asp:Label ID="Label3" runat="server" Text="16808"></asp:Label>
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
                                <asp:Label ID="Label4" runat="server" Text="16808"></asp:Label>
                            </h4>
                            <h3 class="ca-sub four">Konfirmasi Calon</h3>
                        </div>
                    </asp:HyperLink>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
