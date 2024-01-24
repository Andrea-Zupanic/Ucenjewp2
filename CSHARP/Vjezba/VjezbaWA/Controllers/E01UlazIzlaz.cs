using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("E01")]
    public class E01UlazIzlaz : ControllerBase
    {
        

        [HttpGet]
        [Route("Helloworld")]
        public String Helloworld()
        {
            return "Hello World";
        }






    }
}
