using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._01_ADO
{
    public partial class Ex04_SqlDataAdapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlConnection 개체 생성
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["HelloSQL"].ConnectionString;
            
            try
            {
                con.Open();

                // SqlCommand 개체 생성
                string sQuery = " SELECT No, Name, Age, Gender, InsertDate FROM T_USER WITH(NOLOCK) ";
                
                // DataAdapter 개체 생성
                SqlDataAdapter adapter = new SqlDataAdapter(sQuery, con);

                // DataSet 개체 생성
                DataSet ds = new DataSet();
                adapter.Fill(ds);   // Fill 함수의 특징 정리

                // Repater에 데이터 바인딩
                userList.DataSource = ds.Tables[0];
                userList.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}