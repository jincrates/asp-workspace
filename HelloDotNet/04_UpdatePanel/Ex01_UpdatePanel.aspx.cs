using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._04_UpdatePanel
{
    public partial class Ex01_UpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblColor.Text = "#FFFFFF";
            colorArea.Style.Add("background-color", "#FFFFFF");
        }

        protected void btnChangeColor_Click(object sender, EventArgs e)
        {
            lblColor.Text = getRandomColor();
            colorArea.Style.Add("background-color", getRandomColor());
        }

        protected string getRandomColor()
        {
            string letters = "0123456789ABCDEF";
            string color = "#";
            Random random = new Random();
            for ( int i = 0; i < 6; i++)
            {
                color += letters[random.Next(0,16)];
            }
            return color;
        }
    }
}