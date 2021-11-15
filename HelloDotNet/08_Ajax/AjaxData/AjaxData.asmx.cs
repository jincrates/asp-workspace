using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace HelloDotNet._08_Ajax.AjaxData
{
    /// <summary>
    /// AjaxData1의 요약 설명입니다.
    /// </summary>
    [System.Web.Script.Services.ScriptService]  // ScriptService 추가
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // ASP.NET AJAX를 사용하여 스크립트에서 이 웹 서비스를 호출하려면 다음 줄의 주석 처리를 제거합니다. 
    // [System.Web.Script.Services.ScriptService]
    public class AjaxData1 : System.Web.Services.WebService
    {

        [WebMethod(EnableSession = true)]  // Session에 담긴 정보를 가져올지 것인지 설정
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod(EnableSession = true)]
        public int Login(string id, string pwd)  // 스크립트로부터 전송한 데이터
        {
            int result = 0;

            // SqlConnection 개체 생성
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["HelloSQL"].ConnectionString;

            try
            {
                con.Open();

                // SqlCommand 개체 생성
                string sQuery = " SELECT UserID, UserPW FROM T_USER WHERE UserID='{0}' AND UserPW='{1}' ";
                sQuery = string.Format(sQuery, id, pwd);

                // DataAdapter 개체 생성
                SqlDataAdapter adapter = new SqlDataAdapter(sQuery, con);

                // DataTable 개체 생성
                DataSet ds = new DataSet();
                adapter.Fill(ds);  

                if (ds.Tables[0].Rows.Count > 0)
                    result = 1;
                else
                    result = 0;
            }
            catch (Exception ex)
            {
                result = -1;
            }
            finally
            {
                con.Close();
            }

            return result;
        }
    }
}
