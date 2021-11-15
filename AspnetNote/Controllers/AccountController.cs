using AspnetNote.DataContext;
using AspnetNote.Models;
using AspnetNote.ViewModel;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Linq;

namespace AspnetNote.Controllers
{
    public class AccountController : Controller
    {
        /// <summary>
        /// 로그인
        /// </summary>
        /// <returns></returns>
        [HttpGet]  // Default
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login(LoginViewModel model)
        {
            // ID, 비밀번호 - 필수
            if (ModelState.IsValid)
            {
                using (var db = new AspnetNoteDbContext())
                {
                    // LINQ 쿼리식
                    // => : A Go To B
                    //var user = db.Users.FirstOrDefault(u => u.UserId == model.UserId && u.UserPassword == model.UserPassword); // 익명함수를 사용한 람다식
                    // == 비교는 메모리 누수가 발생하기 때문에 사용하지 않는다.(==는 새로운 객체를 생성해서 비교하기 때문)
                    var user = db.Users.FirstOrDefault(u => u.UserId.Equals(model.UserId) 
                                                         && u.UserPassword.Equals(model.UserPassword));  // == 대신 Equals 사용
                    
                    if(user != null)
                    {
                        // 로그인에 성공했을 때
                        //HttpContext.Session.SetInt32(key, value);
                        HttpContext.Session.SetInt32("USER_LOGIN_KEY", user.UserNo); // 세션에 추가

                        return RedirectToAction("LoginSuccess", "Home"); // 로그인 성공 페이지로 이동
                    }
                }
                // 로그인에 실패했을 때(굳이 using 안에 있을 필요가 없기에 밖으로 뺌)
                ModelState.AddModelError(string.Empty, "사용자 ID 혹은 비밀번호가 올바르지 않습니다.");
            }
            return View(model);
        }

        public IActionResult Logout()
        {
            //HttpContext.Session.Clear(); // 존재하는 모든 세션 삭제
            HttpContext.Session.Remove("USER_LOGIN_KEY");

            return RedirectToAction("Index", "Home");
        }

        /// <summary>
        /// 회원가입
        /// </summary>
        /// <returns></returns>
        public IActionResult Register()
        {
            return View();
        }

        /// <summary>
        /// 회원가입 전송
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        public IActionResult Register(User model) //오버로딩을 통해 동일 메소드명으로 사용-프로그래밍 방법론
        {
            if (ModelState.IsValid)  // 사용자로부터 모든 정보를 입력받았는지 유효성 검사(Models에서 설정한 어노테이션에 기반함)
            {
                // Java try(SqlSession){} catch(){}
                
                // C#
                using (var db = new AspnetNoteDbContext())
                {
                    db.Users.Add(model);  // 메모리까지만 올림
                    db.SaveChanges();     // commit - 실제 SQL로 저장 
                    // using문을 나가면 자동으로 close
                }
                return RedirectToAction("Index", "Home"); //다른 View로 전달
            }
            return View(model);
        }
    }
}
