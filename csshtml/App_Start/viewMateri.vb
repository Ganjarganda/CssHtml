Imports System.Data.SqlClient

Public Class viewMateri

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim reader As SqlDataReader
    Dim htmlStr As StringBuilder = New StringBuilder("")

    'Function untuk Semua Materi
    Function jMateri() As String
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        'akses untuk jumlah materi
        cmd.CommandText = "SELECT COUNT(id_materi) as jmateri FROM materi"
        reader = cmd.ExecuteReader

        'proses output materi
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
