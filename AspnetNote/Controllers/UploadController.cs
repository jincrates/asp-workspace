using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.IO;
using System.Threading.Tasks;

namespace AspnetNote.Controllers
{
    public class UploadController : Controller
    {
        private readonly IHostingEnvironment _environment;

        // ctor tab tab
        public UploadController(IHostingEnvironment environment)
        {
            _environment = environment;
        }

        // http://www.example.com/Upload/ImageUpload  - Route 변경전
        // http://www.example.com/Upload/api/upload - Route 변경후
        [HttpPost, Route("api/upload")]
        public async Task<IActionResult> ImageUpload(IFormFile file)
        {
            // # 이미지나 파일을 업로드할 때 필요한 구성
            // 1. Path(경로) - 어디에다 저장할지 결정
            var path = Path.Combine(_environment.WebRootPath, @"images\upload"); // 이스케이프 시퀀스를 그대로 읽음

            // 2. Name(이름) - DateTime, GUID + GUID
            // 3. Extension(확장자) - jpg, png... txt
            var fileFullName = file.FileName.Split('.');
            var fileName = $"{Guid.NewGuid()}.{fileFullName[1]}";

            using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
            {
                // file.CopyTo(fileStream);
                await file.CopyToAsync(fileStream);  // 이미지 크기가 커지면 병목현상이 일어날 수 있기 때문에, 비동기방식으로 수정
            }

            return Ok(new { file = "/images/upload/" + fileName, success = true});

            // @ URL 접근 방식
            // ASP.NET - 호스트명/ + api/upload
            // JavaScript - 호스트명 + api/upload => http://www.example.comapi/upload 
        }
    }
}
