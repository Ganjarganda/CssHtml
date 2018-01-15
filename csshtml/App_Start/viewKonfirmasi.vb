Imports System.Data.SqlClient

Public Class viewKonfirmasi

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim reader As SqlDataReader
    Dim htmlStr As StringBuilder = New StringBuilder("")

    Function jKonfirmasi() As String
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        'akses untuk jumlah siswa
        cmd.CommandText = "SELECT COUNT(username) as siswa FROM siswa where aktif=0"
        reader = cmd.ExecuteReader

        'proses output siswa
        If reader.HasRows Then
            reader.Read()
            htmlStr.Append(reader.GetInt32(0))
            Return htmlStr.ToString()

            reader.Close()
            con.Close()

        Else
            Return "0"
        End If

    End Function

End Class
