<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="siswa.aspx.vb" Inherits="csshtml.murid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- fortable -->
    <link href="/Content/cssadmin/fortables.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
    <div class="inner_content_w3_agile_info two_in">
        <h2 class="w3_inner_tittle">Siswa</h2>
        <!-- tables -->
        <div class="agile-tables">
            <div class="w3l-table-info agile_info_shadow">
                <div class="col-md-12 text-right">
                    <div style="margin-top: 20px; margin-bottom: 10px;">
                        <div class="btn btn-warning">
                            <a href="tambahSiswa.aspx"><i class="fa fa fa-plus"></i>Tambah Siswa</a>
                        </div>
                    </div>
                </div>

                <!-- Search Engine -->
                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Usernames..">
                <!-- Table -->
                <table id="myTable">
                    <tr class="header">
                        <th style="width: 20%;">Username</th>
                        <th style="width: 25%;">Email</th>
                        <th style="width: 25%;">Alamat Rumah</th>
                        <th style="width: 20%;">Jenis Siswa</th>
                        <th style="width: 10%;">Aksi</th>
                    </tr>
                    <% For i = 1 To 10 %>
                    <tr>
                        <td><%= i %></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="btn btn-warning">
                                <a href="editSiswa.aspx"><i class="fa fa-pencil-square-o"></i></a>
                            </div>
                            <div class="btn btn-warning">
                                <a href="hapusSiswa.aspx"><i class="fa fa-trash-o"></i></a>
                            </div>
                        </td>
                    </tr>
                    <% Next %>
                </table>
                <script>
                    function myFunction() {
                        // Declare variables 
                        var input, filter, table, tr, td, i;
                        input = document.getElementById("myInput");
                        filter = input.value.toUpperCase();
                        table = document.getElementById("myTable");
                        tr = table.getElementsByTagName("tr");

                        // Loop through all table rows, and hide those who don't match the search query
                        for (i = 0; i < tr.length; i++) {
                            td = tr[i].getElementsByTagName("td")[0];
                            if (td) {
                                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                    tr[i].style.display = "";
                                } else {
                                    tr[i].style.display = "none";
                                }
                            }
                        }
                    }
                </script>
            </div>
        </div>
    </div>
</asp:Content>
