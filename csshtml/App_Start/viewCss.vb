Imports System.Data.SqlClient

Public Class viewCss

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim reader As SqlDataReader
    Dim htmlStr As StringBuilder = New StringBuilder("")

    'Function Untuk Materi CSS
    Function jCSS() As String
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"
        cmd.Connection = con
        con.Open()

        'akses untuk jumlah css
        cmd.CommandText = "SELECT COUNT(id_materi) as jcss FROM materi WHERE jenis_bahasa = 'css'"
        reader = cmd.ExecuteReader

        'proses output css
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
