using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelloDotNet._01_ADO
{
    public partial class Ex01_SqlConnection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 데이터베이스 연결 문자열의 필수 구성 요소
            // 1) Server(Data Source): 데이터베이스 서버의 위치(IP 주소 또는 도메인 정보를 입력)
            // 2) Database(DB): 데이터베이스의 이름을 지정
            // 3) UserID(UID): 데이터베이스에 대한 권한이 있는 사용자 아이디를 입력  
            // 4) Password(PWD): 데이터베이스에 대한 권한이 있는 사용자 비밀번호를 입력
        }

        protected void btnSqlConnection_Click(object sender, EventArgs e)
        {
            // 1. SqlConnection 클래스의 인스턴스 생성
            string strcon = "server=localhost;database=HelloSQL;user id=sa;password=a12345";
            SqlConnection con = new SqlConnection(strcon);

            // 2. ConnectionString 속성 지정
            // 2-1. 직접 연결 문자열 지정  
            //SqlConnection con = new SqlConnection();
            //con.ConnectionString = "server=localhost;database=HelloSQL;user id=sa;password=a12345";

            // 2-2. Web.config에 설정된 값 가져와서 지정
            //con.ConnectionString = ConfigurationManager.ConnectionStrings["HelloSQL"].ConnectionString;

            // 3. Open() 메서드 실행: 데이터베이스 연결
            con.Open();

            // [!] 실행
            lblDisplay.Text = "데이터베이스 연결 성공";

            // 4. Close() 메서드 실행: 데이터베이스 연결 종료
            con.Close();
        }
    }
}