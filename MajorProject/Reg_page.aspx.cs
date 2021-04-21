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
    public partial class Reg_page : System.Web.UI.Page
    {
        ConnectionChild _Child = new ConnectionChild();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void reg_btn_Click(object sender, EventArgs e)
        {

            InsertData();
        }

        #region inserting records to datatbase
        public void InsertData()
        {

            SqlConnection _sqlconn = new SqlConnection(_Child.Connection()); // connection class
            try
            {
                SqlCommand _sqlcmd = new SqlCommand("SPO_Insert_RegData", _sqlconn);
                _sqlcmd.CommandType = CommandType.StoredProcedure;
                _sqlconn.Open();

                _sqlcmd.Parameters.AddWithValue("@user_name", name.Text);
                _sqlcmd.Parameters.AddWithValue("@user_age", age.Text);

                string selectedgender = "";
                if (gender.SelectedValue == "Male")
                {
                    selectedgender = "Male";
                }
                else
                {
                    selectedgender = "Female";
                }

                _sqlcmd.Parameters.AddWithValue("@user_gender", selectedgender);
                _sqlcmd.Parameters.AddWithValue("@user_email", email.Text);
                _sqlcmd.Parameters.AddWithValue("@user_phone",contact.Text);
                _sqlcmd.Parameters.AddWithValue("@user_address", address.Text);
                _sqlcmd.Parameters.AddWithValue("@user_password", passwd.Text);
                _sqlcmd.ExecuteNonQuery();
                
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }

            finally
            {
                _sqlconn.Close();
            }

        }

        #endregion
    }
}
