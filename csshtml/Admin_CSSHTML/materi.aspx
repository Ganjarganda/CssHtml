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
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" ></asp:TextBox>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_materi" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="judul_materi" HeaderText="Judul" SortExpression="judul_materi" />
                            <asp:BoundField DataField="tanggal_input" HeaderText="Tanggal" SortExpression="tanggal_input" />
                            <asp:BoundField DataField="jenis_bahasa" HeaderText="Bahasa" SortExpression="jenis_bahasa" />
                            <asp:BoundField DataField="penjelasan_materi" HeaderText="Penjelasan" SortExpression="penjelasan_materi" />
                            <asp:BoundField DataField="contoh_code" HeaderText="Contoh" SortExpression="contoh_code" />
                            <asp:BoundField DataField="cover_materi" HeaderText="Cover" SortExpression="cover_materi" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:csshtml %>" DeleteCommand="DELETE FROM [materi] WHERE [id_materi] = @original_id_materi AND (([judul_materi] = @original_judul_materi) OR ([judul_materi] IS NULL AND @original_judul_materi IS NULL)) AND (([tanggal_input] = @original_tanggal_input) OR ([tanggal_input] IS NULL AND @original_tanggal_input IS NULL)) AND (([jenis_bahasa] = @original_jenis_bahasa) OR ([jenis_bahasa] IS NULL AND @original_jenis_bahasa IS NULL)) AND (([penjelasan_materi] = @original_penjelasan_materi) OR ([penjelasan_materi] IS NULL AND @original_penjelasan_materi IS NULL)) AND (([contoh_code] = @original_contoh_code) OR ([contoh_code] IS NULL AND @original_contoh_code IS NULL)) AND (([cover_materi] = @original_cover_materi) OR ([cover_materi] IS NULL AND @original_cover_materi IS NULL))" InsertCommand="INSERT INTO [materi] ([judul_materi], [tanggal_input], [jenis_bahasa], [penjelasan_materi], [contoh_code], [cover_materi]) VALUES (@judul_materi, @tanggal_input, @jenis_bahasa, @penjelasan_materi, @contoh_code, @cover_materi)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [materi] WHERE ([judul_materi] LIKE '%' + @judul_materi + '%')" UpdateCommand="UPDATE [materi] SET [judul_materi] = @judul_materi, [tanggal_input] = @tanggal_input, [jenis_bahasa] = @jenis_bahasa, [penjelasan_materi] = @penjelasan_materi, [contoh_code] = @contoh_code, [cover_materi] = @cover_materi WHERE [id_materi] = @original_id_materi AND (([judul_materi] = @original_judul_materi) OR ([judul_materi] IS NULL AND @original_judul_materi IS NULL)) AND (([tanggal_input] = @original_tanggal_input) OR ([tanggal_input] IS NULL AND @original_tanggal_input IS NULL)) AND (([jenis_bahasa] = @original_jenis_bahasa) OR ([jenis_bahasa] IS NULL AND @original_jenis_bahasa IS NULL)) AND (([penjelasan_materi] = @original_penjelasan_materi) OR ([penjelasan_materi] IS NULL AND @original_penjelasan_materi IS NULL)) AND (([contoh_code] = @original_contoh_code) OR ([contoh_code] IS NULL AND @original_contoh_code IS NULL)) AND (([cover_materi] = @original_cover_materi) OR ([cover_materi] IS NULL AND @original_cover_materi IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_id_materi" Type="Int32" />
                            <asp:Parameter Name="original_judul_materi" Type="String" />
                            <asp:Parameter Name="original_tanggal_input" Type="String" />
                            <asp:Parameter Name="original_jenis_bahasa" Type="String" />
                            <asp:Parameter Name="original_penjelasan_materi" Type="String" />
                            <asp:Parameter Name="original_contoh_code" Type="String" />
                            <asp:Parameter Name="original_cover_materi" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="judul_materi" Type="String" />
                            <asp:Parameter Name="tanggal_input" Type="String" />
                            <asp:Parameter Name="jenis_bahasa" Type="String" />
                            <asp:Parameter Name="penjelasan_materi" Type="String" />
                            <asp:Parameter Name="contoh_code" Type="String" />
                            <asp:Parameter Name="cover_materi" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" DefaultValue="a" Name="judul_materi" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="judul_materi" Type="String" />
                            <asp:Parameter Name="tanggal_input" Type="String" />
                            <asp:Parameter Name="jenis_bahasa" Type="String" />
                            <asp:Parameter Name="penjelasan_materi" Type="String" />
                            <asp:Parameter Name="contoh_code" Type="String" />
                            <asp:Parameter Name="cover_materi" Type="String" />
                            <asp:Parameter Name="original_id_materi" Type="Int32" />
                            <asp:Parameter Name="original_judul_materi" Type="String" />
                            <asp:Parameter Name="original_tanggal_input" Type="String" />
                            <asp:Parameter Name="original_jenis_bahasa" Type="String" />
                            <asp:Parameter Name="original_penjelasan_materi" Type="String" />
                            <asp:Parameter Name="original_contoh_code" Type="String" />
                            <asp:Parameter Name="original_cover_materi" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    
                <!-- Table -->
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
