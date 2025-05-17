using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Windows.Forms;

public partial class AdminMovieDetails : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MovieTicketData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            MessageBox.Show("Please enter the Movie Name");
            return;
        }

        Conn.Open();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = Conn;
        cmd.CommandText = "select * from MovieTab where MovieName='" + TextBox1.Text + "'";
        dr = cmd.ExecuteReader();
        dr.Read();

        if (dr.HasRows)
        {
            MessageBox.Show("This record is already present");
            return;
        }
        Conn.Close();

        string FileNameVar = "";
        if (FileUpload1.HasFile)
        {
            FileNameVar = FileUpload1.FileName.ToString();
            string toDir = Server.MapPath(".") + "/Images/" + FileNameVar;
            FileUpload1.SaveAs(toDir);
        }

        Conn.Open();
        SqlStr = "insert into MovieTab values(";
        SqlStr += $"'{TextBox1.Text}','{DropDownList1.Text}','{TextBox2.Text}','{TextBox3.Text}','{FileNameVar}')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("Record created successfully");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}
