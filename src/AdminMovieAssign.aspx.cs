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

public partial class AdminMovieAssign : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\MovieTicketData.mdf;Integrated Security=True;User Instance=True");
    string SqlStr = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = string.Format("{0:dd-MMM-yyyy}", Calendar2.SelectedDate.Date);
        Calendar2.Visible = false;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = string.Format("{0:dd-MMM-yyyy}", Calendar1.SelectedDate.Date);
        Calendar1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        long bNoVar = 1000;
        Conn.Open();
        SqlCommand cmd3 = new SqlCommand();
        SqlDataReader dr3;
        cmd3.Connection = Conn;
        cmd3.CommandText = "select max(rNo) + 1 as appNo from MovieShowTab";
        dr3 = cmd3.ExecuteReader();
        dr3.Read();
        bNoVar = long.Parse(dr3.GetValue(0).ToString());
        Conn.Close();

        Conn.Open();
        SqlStr = "insert into MovieShowTab values(";
        SqlStr += $"{bNoVar},'{DropDownList1.Text}','{DropDownList2.Text}','{DropDownList3.Text}','{TextBox1.Text}','{TextBox2.Text}')";
        SqlCommand cmd2 = new SqlCommand(SqlStr, Conn);
        cmd2.ExecuteNonQuery();
        Conn.Close();

        MessageBox.Show("New record created successfully", "New Record");
    }
}
