using Microsoft.AspNetCore.Mvc;

namespace api.Controllers
{
    [ApiController]
    [Route("basicApi")]
    public class BasicApiController : ControllerBase
    {
        [HttpGet("TrueString", Name = "TrueString")]
        public String TrueString()
        {
            return bool.TrueString;
        }

        [HttpGet("FalseString", Name = "FalseString")]
        public String FalseString()
        {
            return bool.FalseString;
        }

        [HttpGet("One", Name = "One")]
        public String One()
        {
            return "1";
        }

        [HttpGet("Two", Name = "Two")]
        public String Two()
        {
            return "2";
        }

        [HttpGet("Three", Name = "Three")]
        public String Three()
        {
            return "3";
        }

   

        [HttpGet("TestGetAdd", Name = "TestGetAdd")]
        public int TestGetAdd(int a, int b)
        {
            return a + b;
        }
        [HttpPost("TestPostAdd", Name = "TestPostAdd")]
        public int TestPostAdd(PostBody body)
        {
            return body.a + body.b;
        }
    }

    public class PostBody
    {
        public int a { set; get; }
        public int b { set; get; }
    }


}
