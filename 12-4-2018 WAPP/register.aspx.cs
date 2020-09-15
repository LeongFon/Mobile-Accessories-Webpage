using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        RadioButtonList1.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Users where email='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if(check > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Email already exits.');</script>");

            }
            else
            {
                string query1 = "insert into Users (username, passowrod, email, gender, country, usertype) values (@uname,@pass,@email,@gender,@country,@usertype)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@uname", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@pass", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@email", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@country", DropDownList1.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@usertype", DropDownList2.SelectedItem.ToString());
                cmd1.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('register successful.');</script>");
            }
            con.Close();
            clear();
        }
        catch(Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
    void clear ()
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        RadioButtonList1.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
    }
}