using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._03_PostBack
{
    public partial class Ex01_PostBack : System.Web.UI.Page
    {
        // 이벤트 처리기(event handler)
        // sender: 이벤트를 발생시킨 객체를 나타내는 매개변수
        // e: 이벤트와 관련된 정보를 가지고 있는 매개변수

        // Page_이벤트이름();
        protected void Page_PreInit(object sender, EventArgs e)
        {
            Response.Write("PreInit 이벤트 발생<br />");
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("Init 이벤트 발생<br />");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Load 이벤트 발생<br />");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("PreRender 이벤트 발생<br />");
        }
    }
}