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
        public String user_id = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["FirstName"] != null)
                {
                    welcome.Text = "Welcome" + "    " + Session["FirstName"];
                }
                UserData();

                UserDetails_Container.Style.Add("display", "none");
                CarDetails_Container.Style.Add("display", "none");


            }
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
                _sqlcmd.Parameters.AddWithValue("@user_id", user_id);

                SqlDataReader dr = _sqlcmd.ExecuteReader();

                while (dr.Read())
                {
                    Label8.Text = dr.GetString(1);
                    Label9.Text = dr.GetString(2);
                    Label10.Text = dr.GetString(3);
                    Label11.Text = dr.GetString(4);
                    Label12.Text = dr.GetString(5);
                    Label13.Text = dr.GetString(6);

                }
                dr.NextResult();
                while (dr.Read())
                {
                    Label29.Text = dr.GetString(1);
                    Label30.Text = dr.GetString(2);
                    Label31.Text = dr.GetString(3);
                    Label32.Text = dr.GetString(4);
                    Label33.Text = dr.GetString(5);
                    Label34.Text = dr.GetString(6);

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
            UserDetails_Container.Style.Add("display", "block");
            CarDetails_Container.Style.Add("display", "none");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CarDetails_Container.Style.Add("display", "bolck");
            UserDetails_Container.Style.Add("display", "none");


        }

        public void SaveCarDetails()
        {
            SqlConnection _sqlconn = new SqlConnection(_Child.Connection()); // connection class
            try
            {
                SqlCommand _sqlcmd = new SqlCommand("SPO_CAR_DETAILS", _sqlconn);
                _sqlcmd.CommandType = CommandType.StoredProcedure;
                _sqlconn.Open();

                _sqlcmd.Parameters.AddWithValue("@car_number", car_number.Text);
                _sqlcmd.Parameters.AddWithValue("@car_brand", car_brand.Text);
                _sqlcmd.Parameters.AddWithValue("@car_model", car_model.Text);
                _sqlcmd.Parameters.AddWithValue("@car_vehicle_kind", vehicle_kind.SelectedItem.Value);
                _sqlcmd.Parameters.AddWithValue("@car_colour", car_colour.Text);
                _sqlcmd.Parameters.AddWithValue("@car_model_year", car_model_year.Text);

                _sqlcmd.Parameters.AddWithValue("@user_id", Session["user_id"] );

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
            SaveCarDetails();
        }
    }
}