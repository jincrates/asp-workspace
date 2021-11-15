using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._01_ADO
{
    public partial class Ex05_Transaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlConnection 개체 생성
            string strcon = "server=localhost;database=HelloSQL;user id=sa;password=a12345";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            // SqlTransaction 개체 선언
            SqlTransaction trans;
            trans = con.BeginTransaction(); // 여기서부터 트랜잭션 적용 롤백하면 여기로 돌아간다.
            
            try
            {
                
                // SqlCommand 개체 생성
                string query = " INSERT INTO T_USER(UserID, UserPW, Name, Age, Gender, Home, Hobby)"
                             + " VALUES(@UserID, @UserPW, @Name, @Age, @Gender, @Home, @Hobby) ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", "user02");
                cmd.Parameters.AddWithValue("@UserPW", "0000");
                cmd.Parameters.AddWithValue("@Name", "이순신");
                cmd.Parameters.AddWithValue("@Age", 21);
                cmd.Parameters.AddWithValue("@Gender", 'M');
                cmd.Parameters.AddWithValue("@Home", "경기도");
                cmd.Parameters.AddWithValue("@Hobby", "낚시");
                
                cmd.Transaction = trans;

                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    trans.Commit();
                    Response.Write("Commit");
                }
                else
                {
                    trans.Rollback();
                    Response.Write("Rollback");
                }
            }
            catch (Exception ex)
            {
                trans.Rollback();
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }
    }
}