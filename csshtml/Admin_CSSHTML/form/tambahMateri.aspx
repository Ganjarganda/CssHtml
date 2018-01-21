<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="tambahMateri.aspx.vb" Inherits="csshtml.tambahSiswa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
    <div class="wthree_general graph-form agile_info_shadow ">
        <h3 class="w3_inner_tittle two">Tambah Materi</h3>
        <div class="grid-1 ">
            <div class="form-body">
                <form class="form-horizontal" runat="server">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Judul Materi</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="judulmateri" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequJudulMateri" runat="server" ControlToValidate="judulmateri" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Tanggal Input</label>
                        <div class="col-sm-8">
                            <asp:Calendar ID="Calendar1" runat="server" CssClass="table-striped"></asp:Calendar>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <!-- for Required -->
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Jenis Bahasa</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="jenisBahasa" runat="server" CssClass="form-control1">
                                <asp:ListItem>CSS</asp:ListItem>
                                <asp:ListItem>HTML</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="jenisBahasa" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Penjelasan Materi</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="penjelasan" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="penjelasan" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Contoh Code</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="contoh" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contoh" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Upload Gambar Depan</label>
                        <div class="col-sm-8">
                                <asp:FileUpload ID="uploadMateri" runat="server" />
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <!-- for Required -->
                            </p>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label"></label>
                        <div class="col-sm-8">
                            <asp:Button ID="btn_TambahMateri" runat="server" Text="Tambah" />
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <!-- for Required -->
                            </p>
                        </div>
                    </div>
                    <asp:Label ID="info" runat="server" Text=""></asp:Label>
                    <%--<asp:SqlDataSource ID="SqlTambahMateri" runat="server" ConnectionString="<%$ ConnectionStrings:csshtml %>" DeleteCommand="DELETE FROM [materi] WHERE [id_materi] = @id_materi" InsertCommand="INSERT INTO [materi] ([judul_materi], [tanggal_input], [jenis_bahasa], [penjelasan_materi], [contoh_code], [cover_materi]) VALUES (@judul_materi, @tanggal_input, @jenis_bahasa, @penjelasan_materi, @contoh_code, @cover_materi)" SelectCommand="SELECT * FROM [materi]" UpdateCommand="UPDATE [materi] SET [judul_materi] = @judul_materi, [tanggal_input] = @tanggal_input, [jenis_bahasa] = @jenis_bahasa, [penjelasan_materi] = @penjelasan_materi, [contoh_code] = @contoh_code, [cover_materi] = @cover_materi WHERE [id_materi] = @id_materi">
                        <DeleteParameters>
                            <asp:Parameter Name="id_materi" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="judulmateri" Name="judul_materi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Calendar1" Name="tanggal_input" PropertyName="SelectedDate" Type="String" />
                            <asp:ControlParameter ControlID="jenisBahasa" Name="jenis_bahasa" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="penjelasan" Name="penjelasan_materi" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="contoh" Name="contoh_code" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="uploadgambarMateri" DefaultValue="" Name="cover_materi" PropertyName="FileBytes" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="judul_materi" Type="String" />
                            <asp:Parameter Name="tanggal_input" Type="String" />
                            <asp:Parameter Name="jenis_bahasa" Type="String" />
                            <asp:Parameter Name="penjelasan_materi" Type="String" />
                            <asp:Parameter Name="contoh_code" Type="String" />
                            <asp:Parameter Name="cover_materi" Type="String" />
                            <asp:Parameter Name="id_materi" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>--%>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
