using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{


    [ApiController]
    [Route("E02")]
    public class E02VarijableTipoviPodataka : ControllerBase
    {

        [HttpGet]
        [Route("Zad1")]

        public int Zad1()
        {
            return int.MinValue;

        }


        [HttpGet]
        [Route("zad2")]

        public float Zad2( int i, int j) 
        { 
            return (float)i/j ; 
        }


        [HttpGet]
        [Route("Zad3")]

        public float Zad3(int i, int j)
        {

            float pd= i * j ;
            float db= i/j ; 

            return pd+db ;

        }




        [HttpGet]
        [Route("Zad4")]

        public string Zad4(string a, string b)
        {

            return a + b;

        }



        [HttpGet]
        [Route("Zad5")]

        public bool Zad5(int  a, int b)
        {

            return a == b;

        }








    }
}
