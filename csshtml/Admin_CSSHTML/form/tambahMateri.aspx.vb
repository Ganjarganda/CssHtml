Imports System.Data
Imports System.Data.SqlClient

Public Class tambahSiswa
    Inherits System.Web.UI.Page

    Protected Sub btn_TambahMateri_Click(sender As Object, e As EventArgs) Handles btn_TambahMateri.Click
        Dim judul As String = judulmateri.Text.ToString()
        Dim tanggal As String = Calendar1.SelectedDate.ToString()
        Dim bahasa As String = jenisBahasa.SelectedValue.ToString()
        Dim penjelas As String = penjelasan.Text.ToString()
        Dim contohnya As String = contoh.Text.ToString()

        'gambar
        If uploadMateri.PostedFile IsNot Nothing AndAlso uploadMateri.PostedFile.FileName <> "" Then
            Dim imageSize As Byte() = New Byte(uploadMateri.PostedFile.ContentLength - 1) {}
            Dim uploadImage__1 As HttpPostedFile = uploadMateri.PostedFile()

            uploadImage__1.InputStream.Read(imageSize, 0, CInt(uploadMateri.PostedFile.ContentLength))

            'koneksi
            Dim con As New SqlConnection
            Dim xCommand As New SqlCommand
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"

            Dim cmd As New SqlCommand()
            cmd.CommandText = "INSERT INTO materi(judul_materi, tanggal_input, jenis_bahasa, penjelasan_materi, contoh_code, cover_materi) VALUES (@judul_materi, @tanggal_input, @jenis_bahasa, @penjelasan_materi, @contoh_code, @cover_materi)"
            cmd.CommandType = CommandType.Text
            cmd.Connection = con

            Dim judul1 As New SqlParameter("@judul_materi", SqlDbType.VarChar, 255)
            judul1.Value = judul.ToString()
            cmd.Parameters.Add(judul1)

            Dim tanggal1 As New SqlParameter("@tanggal_input", SqlDbType.VarChar, 50)
            tanggal1.Value = tanggal.ToString()
            cmd.Parameters.Add(tanggal1)

            Dim jenis1 As New SqlParameter("@jenis_bahasa", SqlDbType.VarChar, 50)
            jenis1.Value = bahasa.ToString()
            cmd.Parameters.Add(jenis1)

            Dim penjelasan1 As New SqlParameter("@penjelasan_materi", SqlDbType.VarChar, 255)
            penjelasan1.Value = penjelas.ToString()
            cmd.Parameters.Add(penjelasan1)

            Dim contoh1 As New SqlParameter("@contoh_code", SqlDbType.VarChar, 255)
            contoh1.Value = contohnya.ToString()
            cmd.Parameters.Add(contoh1)

            Dim cover1 As New SqlParameter("@cover_materi", SqlDbType.Image, imageSize.Length)
            cover1.Value = imageSize
            cmd.Parameters.Add(cover1)

            con.Open()

            Dim result As Integer = cmd.ExecuteNonQuery()

            con.Close()
            If result > 0 Then
                info.Text = "Materi Bertambah"
            End If
        End If

    End Sub
End Class