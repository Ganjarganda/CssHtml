Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_login_admin_Click(sender As Object, e As EventArgs) Handles btn_login_admin.Click
        If (username_admin.Text = "admin" And password_admin.Text = "admin") Then
            Response.Redirect("berandaadmin.aspx")
        Else
            peringatan_login_admin.Text = "Username atau Password Anda Salah!!"
        End If
    End Sub
End Class