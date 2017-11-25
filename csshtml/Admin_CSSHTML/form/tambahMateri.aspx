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
                                <asp:FileUpload ID="uploadgambarMateri" runat="server" />
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
                </form>
            </div>
        </div>
    </div>
</asp:Content>
