using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;



namespace PlanADate
{
    public partial class Login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
       

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string uname = txtbUserName.Text;
            //Session["Username"] = uname;

            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            string sql1 = " select * from Login where Username = @username and Password = @password";
            SqlCommand cmd1 = new SqlCommand(sql1, con1);
            cmd1.Parameters.AddWithValue("username", txtbUserName.Text);
            cmd1.Parameters.AddWithValue("password", txtbPass.Text);

            con1.Open();
            SqlDataReader dr = cmd1.ExecuteReader();
            if (dr.Read())
            {
                con1.Close();
                Session["username"] = uname;
                Response.Redirect("Survey.aspx");
            }
            else
            {
                Response.Write("<script>alert('Your message in the box');</script>");
            }
        }
    }
}