using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._01_ADO
{
    public partial class Ex02_SqlCommand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ASP.NET에서 SQL Server에 CREATE, ALERT, DROP, SELECT, UPDATE, DELETE 같은 구문을
            // 전달하고 실행하고자 할 때는 SqlCommane 클래스를 사용한다.
        }

        protected void btnSqlCommand_Click(object sender, EventArgs e)
        {
            // SqlConnection 객체 생성
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "server=localhost;database=HelloSQL;user id=sa;password=a12345";

            try
            {
                // SqlConnection 객체 열기
                con.Open();
            
                // SqlCommand 객체 생성
                // 1) 파라미터 직접 대입
                //string query = " INSERT INTO T_USER(UserPW, Name, Age, Gender, Home, Hobby)"
                //             + " VALUES('0000',N'홍길동',30,'M','서울','독서') "; 
                //SqlCommand cmd = new SqlCommand(query, con);

                // 2) AddWithValue 사용
                string query = " INSERT INTO T_USER(UserID, UserPW, Name, Age, Gender, Home, Hobby)"
                             + " VALUES(@UserID, @UserPW, @Name, @Age, @Gender, @Home, @Hobby) ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", "user01");
                cmd.Parameters.AddWithValue("@UserPW", "0000");
                cmd.Parameters.AddWithValue("@Name", "홍길동");
                cmd.Parameters.AddWithValue("@Age", 30);
                cmd.Parameters.AddWithValue("@Gender", 'M');
                cmd.Parameters.AddWithValue("@Home", "서울");
                cmd.Parameters.AddWithValue("@Hobby", "독서");

                // ExecuteXXX() 메서드로 실행
                int result = cmd.ExecuteNonQuery();  // 테이블의 행에 영향을 미친 개수만큼 정수값을 반환

                // [!] 마무리
                if (result > 0)
                    lblDisplay.Text = "데이터 저장 완료";
                else
                    lblDisplay.Text = "데이터 저장 실패";
            }
            catch (Exception ex) 
            {
                Response.Write(ex.Message);
            }
            finally
            {
                // SqlConnection 객체 닫기
                con.Close();
            }
        }
    }
}