Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Response.Redirect("testlogin.aspx")
    End Sub
End Class