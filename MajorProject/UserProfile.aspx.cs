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
    public partial class UserProfile : System.Web.UI.Page
    {
        ConnectionChild _Child = new ConnectionChild();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["FirstName"] != null)
            {
                welcome.Text = "Welcome" + "    " + Session["FirstName"];
            }
            

            UserDetails_Container.Style.Add("display", "none");
            CarDetails_Container.Style.Add("display", "none");
            Button3.CausesValidation = false;


        }

        public void UserData()
        {
            SqlConnection _sqlconn = new SqlConnection(_Child.Connection()); // connection class
            try
            {
                SqlCommand _sqlcmd = new SqlCommand("SPO_UserProfile_Data", _sqlconn);
                _sqlcmd.CommandType = CommandType.StoredProcedure;
                _sqlconn.Open();
                _sqlcmd.Parameters.AddWithValue("@user_name", Session["FirstName"]);
                String user_id = Convert.ToString(Session["user_id"]);
                _sqlcmd.Parameters.AddWithValue("@user_id", user_id);

                SqlDataReader dr = _sqlcmd.ExecuteReader();

                while (dr.Read())
                {
                    Label8.Text = dr.GetString(1); TextBox1.Text = Label8.Text;
                    Label9.Text = dr.GetString(2); TextBox2.Text = Label9.Text;
                    Label10.Text = dr.GetString(3); TextBox3.Text = Label10.Text;
                    Label11.Text = dr.GetString(4); TextBox4.Text = Label11.Text;
                    Label12.Text = dr.GetString(5); TextBox5.Text = Label12.Text;
                    Label13.Text = dr.GetString(6); TextBox6.Text = Label13.Text;

                }
                dr.NextResult();
                while (dr.Read())
                {
                    Label29.Text = dr.GetString(1); car_number.Text = Label29.Text;
                    Label30.Text = dr.GetString(2); car_brand.Text = Label30.Text;
                    Label31.Text = dr.GetString(3); car_model.Text = Label31.Text;
                    Label32.Text = dr.GetString(4); 

                    Label33.Text = dr.GetString(5); car_colour.Text = Label33.Text;
                    Label34.Text = dr.GetString(6); car_model_year.Text = Label34.Text;

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




        protected void Button1_Click(object sender, EventArgs e)
        {
            UserData();
            UserDetails_Container.Style.Add("display", "block");
            CarDetails_Container.Style.Add("display", "none");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CarDetails_Container.Style.Add("display", "bolck");
            UserDetails_Container.Style.Add("display", "none");
            Button3.CausesValidation = true;



        }

        public void UpdateUserDetails()
        {
            SqlConnection _sqlconn = new SqlConnection(_Child.Connection()); // connection class
            try
            {
                SqlCommand _sqlcmd = new SqlCommand("SPO_UPDATE_USER_DATA", _sqlconn);
                _sqlcmd.CommandType = CommandType.StoredProcedure;
                _sqlconn.Open();

                //   Adding paramertes  user_name and user_id to SP  from session
                _sqlcmd.Parameters.AddWithValue("@user_name", Session["FirstName"]);
                _sqlcmd.Parameters.AddWithValue("@user_id", Session["user_id"]);

                // Adding parameters for user profile
                _sqlcmd.Parameters.AddWithValue("@user_age", TextBox2.Text);
                _sqlcmd.Parameters.AddWithValue("@user_gender", TextBox3.Text);
                _sqlcmd.Parameters.AddWithValue("@user_phone", TextBox5.Text);
                _sqlcmd.Parameters.AddWithValue("@user_address", TextBox6.Text);

                // Adding parameters for car details
                _sqlcmd.Parameters.AddWithValue("@car_number", car_number.Text);
                _sqlcmd.Parameters.AddWithValue("@car_brand", car_brand.Text);
                _sqlcmd.Parameters.AddWithValue("@car_model", car_model.Text);
                _sqlcmd.Parameters.AddWithValue("@car_vehicle_kind", vehicle_kind.SelectedItem.Value);
                _sqlcmd.Parameters.AddWithValue("@car_colour", car_colour.Text);
                _sqlcmd.Parameters.AddWithValue("@car_model_year", car_model_year.Text);

                _sqlcmd.ExecuteNonQuery();
                Response.Write("data inserted into car table");

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
        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.CausesValidation = true;
            UpdateUserDetails();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }


    }
}