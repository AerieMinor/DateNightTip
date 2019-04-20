using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PlanADate
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                lblWelcome.Text = "Anonymous User";
            }
            else
            {

                lblWelcome.Text = Session["username"].ToString();

            }


        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            string i = ddlCategory.SelectedItem.Value;
            switch (i)
            {
                case "a":
                    imgDisplay.ImageUrl = "images/artspic.jpg";
                    break;
                case "b":
                    imgDisplay.ImageUrl = "images/sports.jpg";
                    break;
                case "c":
                    imgDisplay.ImageUrl = "images/concert.jpg";
                    break;
                case "d":
                    imgDisplay.ImageUrl = "images/food.jpg";
                    break;
                case "e":
                    imgDisplay.ImageUrl = "images/education.jpg";
                    break;
                case "f":
                    imgDisplay.ImageUrl = "images/networking.jpg";
                    break;
                case "g":
                    imgDisplay.ImageUrl = "images/games.jpg";
                    break;
                case "h":
                    imgDisplay.ImageUrl = "images/homebody.jpg";
                    break;
                default:
                    imgDisplay.ImageUrl = "";
                    break;
            }
        }
    }
}