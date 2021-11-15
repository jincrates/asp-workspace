using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet.Practice.Views.Board
{
    public partial class ucPage : System.Web.UI.UserControl
    {
        /// 총카운트
        public int totalCnt = 0;
        /// 페이지사이즈
        public int PageSize = 15;
        /// 현재페이지
        public int curPage = 1;
        /// 화면에 보일 페이지카운트
        public int btnPageCnt = 10;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                fnRebind();
        }

        public void fnRebind()
        {
        
        }
    }
}