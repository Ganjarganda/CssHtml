<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/MemberMaster.master" %>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim username As String = CType(Session.Item("username"), String)
        Label1.Text = username
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="kelasprivate">
        <br />
        <br />
        <h1>Tentang Program</h1>
        <br />
        <p>Program Private ini ditujukan untuk mempermudah bagi siswa/i yang tidak memiliki waktu senggang dan alasan lainnya yang tidak</p>
        <p>memungkinkan datang langsung ke tempat kursus karena beberapa kendala tadi, bisa menggunakan dan memanfaatkan program private ini</p>
        <p>agar bisa tetap belajar/kursus, karena program ini akan dilaksanakan di tempat siswa/i yang mendaftar dan bersangkutan. Vendor akan</p>
        <p>menyediakan pengajar dan tools yang dibutuhkan untuk KBM. Siswa yang bersangkutan hanya tinggal siap untuk belajar karena kelengkapan</p>
        <p>lainnya juga akan disediakan oleh website ini.</p>
        <br /><br />

        <h1>Ketentuan Kelas</h1>
        <br />
        <p>Kelas yang bisa mengikuti program ini dimulai dari TK-SMA. Kelas dilakukan dirumah siswa yang bersangkutan. Waktu belajar seminggu sekali</p>
        <p>atau satu bulan 4x pertemuan, 1x pertemuan selama 1,5 jam. Waktu belajar bisa disesuaikan dengan hari kosong siswa. Masa belajar dilakukan</p>
        <p>1 tahun per levelnya, minimal ada 2 orang siswa untuk berjalannya program ini. Jarak maksimal alamat rumah dengan kantor adalah 10km.</p>
        <br /><br />

        <h1>Biaya Kursus</h1>
        <br />
        <table border="1">
            <tr>
                <th>No</th>
                <th>Level</th>
                <th>Kelas</th>
                <th>Harga</th>
                <th>Keterangan</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Basic Learning</td>
                <td>TK - 4 SD</td>
                <td>250.000</td>
                <td>Per anak, Per bulan</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Intermediate</td>
                <td>5 - 6 SD</td>
                <td>300.000</td>
                <td>Per anak, Per bulan</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Advance</td>
                <td>SMP - Umum</td>
                <td>350.000</td>
                <td>Per anak, Per bulan</td>
            </tr>
        </table>
        <br /><br />
    </div>
</asp:Content>

