using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._03_PostBack
{
    public partial class Ex02_PostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Response.Write("웹 페이지가 처음 요청되었습니다.");
            } 
            else
            {
                Response.Write("다시 게시되었습니다.");
            }
        }
    }
}