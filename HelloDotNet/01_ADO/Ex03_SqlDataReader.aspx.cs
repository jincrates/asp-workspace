using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._01_ADO
{
    public partial class Ex03_SqlDataReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayData();
        }

        private void DisplayData()
        {
            // SqlConnection 개체 생성
            SqlConnection con = new SqlConnection("server=localhost;database=HelloSQL;user id=sa;password=a12345");

            try 
            { 
                // SqlConnection 열기
                con.Open();
            
                // SqlCommand 개체 생성
                string query = " SELECT No, Name, Age, Gender, InsertDate FROM T_USER ";
                SqlCommand cmd = new SqlCommand(query, con);

                // SqlDataReader 객체로 결과값 받기
                SqlDataReader dr = cmd.ExecuteReader();

                // Read() 메서드로 데이터 있는만큼 반복
                string strOutput = "<table border=\"1\">" +
                    "<tr><td>번호</td><td>이름</td><td>나이</td><td>성별</td><td>등록일</td></tr>";
                while (dr.Read())
                {
                    strOutput += $"<tr><td>{dr["No"]}</td>"
                               + $"<td>{dr[1]}</td>"
                               + $"<td>{dr[2]}</td>"
                               + $"<td>{dr["Gender"]}</td>"
                               + $"<td>{dr[4]}</td><tr>";
                }
                strOutput += "</table>";

                // 연결된 리더 개체 종료
                dr.Close();

                // [!] 출력
                tblOutput.Text = strOutput;
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                // SqlConnection 닫기
                con.Close();
            }
        }
    }
}