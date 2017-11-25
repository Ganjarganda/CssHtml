<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="murid.aspx.vb" Inherits="csshtml.murid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content_isi" runat="server">
    <div class="inner_content_w3_agile_info two_in">
        <h2 class="w3_inner_tittle">Tables</h2>
        <!-- tables -->

        <div class="agile-tables">
            <div class="w3l-table-info agile_info_shadow">
                
            </div>
        </div>
        <!-- //tables -->
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
</asp:Content>
