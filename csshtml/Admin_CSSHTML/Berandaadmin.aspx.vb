Imports System.Data.SqlClient

Public Class Berandaadmin
    Inherits System.Web.UI.Page

    Dim JumlahSiswa As New viewSiswa()
    Dim JumlahMateri As New viewMateri()
    Dim JumlahCSS As New viewCss()
    Dim JumlahHTML As New viewHTML()
    Dim JumlahKonfirmasi As New viewKonfirmasi()

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        beranda_jumlah_siswa.Text = JumlahSiswa.jSiswa()
        beranda_jumlah_materi.Text = JumlahMateri.jMateri()
        beranda_jumlah_css.Text = JumlahCSS.jCSS()
        beranda_jumlah_html.Text = JumlahHTML.jHTML()
        beranda_jumlah_konfirmasi.Text = JumlahKonfirmasi.jKonfirmasi()
    End Sub

End Class