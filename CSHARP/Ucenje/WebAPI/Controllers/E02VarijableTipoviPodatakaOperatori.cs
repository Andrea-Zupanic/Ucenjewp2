using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E02")]
    public class E02VarijableTipoviPodatakaOperatori:ControllerBase
    {
        [HttpGet]
        [Route("zad1")]
        public int Zad1()
        {
            return int.MinValue;
        }




        //[HttpGet]
        //[Route("zad2")]
        //public float Zad2(int i, int j)
        //{
        //    return 0; 
        //}






        [HttpGet]
        [Route("zad3")]
        public float Zad3(int i, int j)
        {
           
            var umnozak = i * j; 
            var kvocijent = (float)i / j;
            return umnozak + kvocijent;
        }

        [HttpGet]
        [Route("zad4")]
        public string Zad4(string s, string s1)
        {
            
            return s + s1;
        }

        [HttpGet]
        [Route("zad5")]
        public bool IstiSu(int a, int b)
        {
            Console.WriteLine("a={0}",a); 
            return a == b;
        }
    }
}
