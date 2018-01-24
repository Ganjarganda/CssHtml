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

                <form id="form1" runat="server">
                    <!-- Search Engine -->
                    <%--<asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" ></asp:TextBox>--%>
                    <br />
                    <!-- Table -->
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="username" DataSourceID="siswa">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" SortExpression="username" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="alamat" HeaderText="Alamat" SortExpression="alamat" />
                            <asp:BoundField DataField="jenis_siswa" HeaderText="Jenis Siswa" SortExpression="jenis_siswa" />
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
                    <asp:SqlDataSource ID="siswa" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:csshtml %>" DeleteCommand="DELETE FROM [siswa] WHERE [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([alamat] = @original_alamat) OR ([alamat] IS NULL AND @original_alamat IS NULL)) AND (([jenis_siswa] = @original_jenis_siswa) OR ([jenis_siswa] IS NULL AND @original_jenis_siswa IS NULL))" InsertCommand="INSERT INTO [siswa] ([username], [email], [alamat], [jenis_siswa]) VALUES (@username, @email, @alamat, @jenis_siswa)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [username], [email], [alamat], [jenis_siswa] FROM [siswa] WHERE ([aktif] = @aktif)" UpdateCommand="UPDATE [siswa] SET [email] = @email, [alamat] = @alamat, [jenis_siswa] = @jenis_siswa WHERE [username] = @original_username AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([alamat] = @original_alamat) OR ([alamat] IS NULL AND @original_alamat IS NULL)) AND (([jenis_siswa] = @original_jenis_siswa) OR ([jenis_siswa] IS NULL AND @original_jenis_siswa IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_username" Type="String" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_alamat" Type="String" />
                            <asp:Parameter Name="original_jenis_siswa" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="alamat" Type="String" />
                            <asp:Parameter Name="jenis_siswa" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="aktif" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="alamat" Type="String" />
                            <asp:Parameter Name="jenis_siswa" Type="String" />
                            <asp:Parameter Name="original_username" Type="String" />
                            <asp:Parameter Name="original_email" Type="String" />
                            <asp:Parameter Name="original_alamat" Type="String" />
                            <asp:Parameter Name="original_jenis_siswa" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
