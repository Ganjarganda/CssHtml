Imports System.Data.SqlClient

Public Class index
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim rd As SqlDataReader

    Protected Sub btn_login_admin_Click(sender As Object, e As EventArgs) Handles btn_login_admin.Click
        Try
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"
            cmd.Connection = con
            con.Open()
            cmd.CommandText = "SELECT * FROM admin WHERE username_admin = '" & username_admin.Text & "' AND pass_admin = '" & password_admin.Text & "' "
            rd = cmd.ExecuteReader
            If rd.HasRows Then
                Response.Redirect("berandaadmin.aspx")
            Else
                peringatan_login_admin.Text = "Username atau Password Anda Salah!!"
            End If
        Catch ex As Exception
            peringatan_login_admin.Text = ex.ToString
        End Try

    End Sub
End Class