using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._03_PostBack
{
    public partial class Ex03_PostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("IsPostBack: " + IsPostBack + "<br/>");
            Response.Write("Page_Load() 되었음 <br/>");

            if (!IsPostBack)
            {
                Response.Write("(처음 페이지 로드) <br/>");
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Button 컨트롤의 Click 이벤트가 일어났을 경우(즉, 포스트백을 한 경우)
            Response.Write("btnSend_Click() 되었음 <br/>");
            Response.Write("(다시 게시됨) <br/>");

            Response.Write("Name: " + txtName.Text +"<br/>");
            Response.Write("Age: " + txtAge.Text +"<br/>");
        }
    }
}