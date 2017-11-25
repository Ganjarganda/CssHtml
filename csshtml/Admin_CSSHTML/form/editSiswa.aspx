<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin_CSSHTML/Masteradmin.Master" CodeBehind="editSiswa.aspx.vb" Inherits="csshtml.editSiswa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_isi" runat="server">
     <div class="wthree_general graph-form agile_info_shadow ">
        <h3 class="w3_inner_tittle two">Edit Siswa</h3>
        <div class="grid-1 ">
            <div class="form-body">
                <form class="form-horizontal" runat="server">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Username</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="username" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequUsername" runat="server" ControlToValidate="username" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="email" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Alamat Rumah</label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="alamat" runat="server" CssClass="form-control1"></asp:TextBox>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="alamat" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">Jenis Siswa</label>
                        <div class="col-sm-8">
                            <asp:DropDownList ID="jenissiswa" runat="server" CssClass="form-control1">
                                <asp:ListItem>Regular</asp:ListItem>
                                <asp:ListItem>Private</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-2">
                            <p class="help-block">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="jenissiswa" ErrorMessage="Mohon diinputkan!"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label"></label>
                        <div class="col-sm-8">
                            <asp:Button ID="btn_EditSiswa" runat="server" Text="Simpan Pembaharuan" />
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
