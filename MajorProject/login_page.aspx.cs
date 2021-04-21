using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace MajorProject
{
    public partial class login_page : System.Web.UI.Page
    {
        ConnectionChild _Child = new ConnectionChild();
        String name = "";
        String pass = "";
        String user_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void log_btn_Click(object sender, EventArgs e)
        {
            SqlConnection _sqlconn = new SqlConnection(_Child.Connection()); // connection class
            try
            {
                SqlCommand _sqlcmd = new SqlCommand("select user_id,user_name,user_password from tbl_user where user_name='" + TextBox1.Text + "'", _sqlconn);
                _sqlconn.Open();
                SqlDataReader dr = _sqlcmd.ExecuteReader();

                while (dr.Read())
                {
                    user_id = Convert.ToString(dr.GetInt32(0));
                    name = dr.GetString(1);
                    pass = dr.GetString(2);
                    Response.Write(name);
                    Response.Write(pass);
                }
                if (name == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["user_id"] = user_id;
                    Session["FirstName"] = name;
                    Response.Redirect("UserProfile.aspx");

                }
                else
                {
                    LoginError.Text = "Login Id or Password Incorrect";
                }
            }

            catch (Exception ex)
            {
                Response.Write(ex);
            }

            finally
            {
                _sqlconn.Close();
            }




        }
    }
}