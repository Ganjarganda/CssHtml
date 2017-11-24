<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="Berandaadmin.aspx.vb" Inherits="csshtml.Berandaadmin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
    <!-- /inner_content_w3_agile_info-->
    <div class="inner_content_w3_agile_info">
        <!-- /agile_top_w3_grids-->
        <div class="agile_top_w3_grids">
            <ul class="ca-menu">
                <li>
                    <asp:HyperLink ID="beranda_Murid" runat="server" NavigateUrl="murid.aspx">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main">16,808</h4>
                            <h3 class="ca-sub">Murid</h3>
                        </div>
                   </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="beranda_materi" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-book" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main one">26,808</h4>
                            <h3 class="ca-sub one">Semua Materi</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="beranda_css" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-css3" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main two">29,008</h4>
                            <h3 class="ca-sub two">Materi CSS</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                     <asp:HyperLink ID="beranda_html" runat="server" NavigateUrl="materi.aspx">
                        <i class="fa fa-html5" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main three">49,436</h4>
                            <h3 class="ca-sub three">Materi HTML</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <li>
                     <asp:HyperLink ID="beranda_konfirmasi" runat="server" NavigateUrl="konfirmasicalon.aspx">
                        <i class="fa fa-archive" aria-hidden="true"></i>
                        <div class="ca-content">
                            <h4 class="ca-main four">30,808</h4>
                            <h3 class="ca-sub four">Konfirmasi Calon</h3>
                        </div>
                    </asp:HyperLink>
                </li>
                <div class="clearfix"></div>
            </ul>
        </div>
    </div>
</asp:Content>
