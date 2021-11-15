using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._04_UpdatePanel
{
    public partial class Ex03_UpdatePanel_Overlap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblParent.Text = lblChild.Text = DateTime.Now.ToString();
            else 
                lblParent.Text = lblChild.Text = DateTime.Now.ToString();
        }

        protected void btnParent_Click(object sender, EventArgs e)
        {
        }

        protected void btnChild_Click(object sender, EventArgs e)
        {
        }
    }
}