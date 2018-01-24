Imports System.Web
Imports System.Web.Services
Imports System.Data.SqlClient


Public Class Handler1
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        Dim con As New SqlConnection
        Dim cmd As New SqlCommand()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Semester 5\Prak. PWeb 2\Project PWeb2\Program WEB Project PWEB 2\csshtml\csshtml\App_Data\csshtml.mdf;Integrated Security=True"
        con.Open()
        cmd.CommandText = "SELECT id_materi, judul_materi, tanggal_input, penjelasan_materi, contoh_code, cover_materi FROM materi WHERE id_materi = @id_materi"
        cmd.CommandType = System.Data.CommandType.Text
        cmd.Connection = con

        Dim id_materi As New SqlParameter("@id_materi", System.Data.SqlDbType.Int)
        id_materi.Value = context.Request.QueryString("id_materi")
        cmd.Parameters.Add(id_materi)

        Dim dReader As SqlDataReader = cmd.ExecuteReader()
        dReader.Read()
        context.Response.BinaryWrite(DirectCast(dReader("cover_materi"), Byte()))
        dReader.Close()
        con.Close()

    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class