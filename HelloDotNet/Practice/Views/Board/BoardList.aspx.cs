using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet.Practice.Views.Board
{
    public partial class BoardList : System.Web.UI.Page
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
                string sQuery = " SELECT bID, Title, Write, InsertDate FROM T_BOARD WITH(NOLOCK) ";

                // DataAdapter 개체 생성
                SqlDataAdapter adapter = new SqlDataAdapter(sQuery, con);

                // DataTable 개체 생성
                DataTable dt = new DataTable();
                adapter.Fill(dt);   // Fill 함수의 특징 정리

                // Repater에 데이터 바인딩
                boardList.DataSource = dt;
                boardList.DataBind();
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