<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="materi.aspx.vb" Inherits="csshtml.materi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- fortable -->
    <link href="/Content/cssadmin/fortables.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
    <div class="inner_content_w3_agile_info two_in">
        <h2 class="w3_inner_tittle">Materi</h2>
        <!-- tables -->
        <div class="agile-tables">
            <div class="w3l-table-info agile_info_shadow">
                <div class="col-md-12 text-right">
                    <div style="margin-top: 20px; margin-bottom: 10px;">
                        <div class="btn btn-warning">
                            <a href="form/tambahMateri.aspx"><i class="fa fa fa-plus"></i>Tambah Materi</a>
                        </div>
                    </div>
                </div>

                <form id="form1" runat="server">
                    <!-- Search Engine -->

                    <%-- <input type="text" id="myInput" placeholder="Search for Judul..">--%>
                   <%-- <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>--%>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_materi" DataSourceID="SqlDataSource1" Width="703px" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="id_materi" HeaderText="id_gambar" InsertVisible="false" ReadOnly="true" SortExpression="id_materi" />
                            <asp:BoundField DataField="judul_materi" HeaderText="nama_gambar" SortExpression="nama_gambar" />
                            <asp:BoundField DataField="tanggal_input" HeaderText="tanggal_input" SortExpression="tanggal_input" />
                            <asp:BoundField DataField="jenis_bahasa" HeaderText="jenis_bahasa" SortExpression="jenis_bahasa" />
                            <asp:BoundField DataField="penjelasan_materi" HeaderText="penjelasan_materi" SortExpression="penjelasan_materi" />
                            <asp:BoundField DataField="contoh_code" HeaderText="contoh_code" SortExpression="contoh_code" />
                            <asp:TemplateField HeaderText="cover_materi" ControlStyle-Width="250px" ControlStyle-Height="250px">
                                <ItemTemplate>
                                   <asp:Image ID="image1" runat="server"
                                       ImageUrl='<%#Eval("id_materi", "Handler1.ashx?id_materi={0}") %>'/>

                                   
                                </ItemTemplate>
                                <ControlStyle Height="250px" Width="250px" />
                            </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [materi] where [id_materi] = @id_materi" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [materi]" UpdateCommand="UPDATE [materi] SET [judul_materi] = @judul_materi, [tanggal_input]= @tanggal_input, [jenis_bahasa]= @jenis_bahasa, [penjelasan_materi]= @penjelasan_materi, [contoh_code]= @contoh_code, [cover_materi]= @cover_materi WHERE [id_materi]= @id_materi">
                        <DeleteParameters>
                            <asp:Parameter Name="id_materi" Type="Int32" />
                        </DeleteParameters> 
                        <UpdateParameters>
                            <asp:Parameter Name="judul_materi" Type="String" />
                            <asp:Parameter Name="tanggal_input" Type="String" />
                            <asp:Parameter Name="jenis_bahasa" Type="String" />
                            <asp:Parameter Name="penjelasan_materi" Type="String" />
                            <asp:Parameter Name="contoh_code" Type="String" />
                            <asp:Parameter Name="cover_materi" Type="object" />
                            <asp:Parameter Name="id_materi" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <%--<table id="myTable">
                    <tr class="header">
                        <th style="width: 10%;">ID Materi</th>
                        <th style="width: 15%;">Jenis</th>
                        <th style="width: 25%;">Judul</th>
                        <th style="width: 20%;">Penjelasan</th>
                        <th style="width: 20%;">Contoh</th>
                        <th style="width: 10%;">Aksi</th>
                    </tr>
                    <% For i = 1 To 10 %>
                    <tr>
                        <td>M<%=i %></td>
                        <td></td>
                        <td><%=i + 2 %></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="btn btn-warning">
                                <a href="form/editMateri.aspx"><i class="fa fa-pencil-square-o"></i></a>
                            </div>
                            <div class="btn btn-warning">
                                <a href="#"><i class="fa fa-trash-o"></i></a>
                            </div>
                        </td>
                    </tr>
                    <% Next %>
                </table>--%>
                    <%--<script>
                    function myFunction() {
                        // Declare variables 
                        var input, filter, table, tr, td, i;
                        input = document.getElementById("myInput");
                        filter = input.value.toUpperCase();
                        table = document.getElementById("myTable");
                        tr = table.getElementsByTagName("tr");

                        // Loop through all table rows, and hide those who don't match the search query
                        for (i = 0; i < tr.length; i++) {
                            td = tr[i].getElementsByTagName("td")[2];
                            if (td) {
                                if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                                    tr[i].style.display = "";
                                } else {
                                    tr[i].style.display = "none";
                                }
                            }
                        }
                    }
                </script>--%>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
