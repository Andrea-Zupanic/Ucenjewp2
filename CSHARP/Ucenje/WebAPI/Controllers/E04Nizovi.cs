using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E04")]
    public class E04Nizovi:ControllerBase
    {
        [HttpPost]
        [Route("zad1")]
        public string Zad1( string[] Podaci)
        {

            return Podaci[0];
            
        }

        [HttpPut]
        [Route("zad2")]
        public int Zad2( string[] Podaci) {



            var b1 = int.Parse(Podaci[0]);
            var b2 = int.Parse(Podaci[1]);
            var b3 = int.Parse(Podaci[2]);

          
            if(b1>=b2 && b1 >= b3)
            {
                return b1;
            }

          
            if(b2>=b1 && b2>= b3)
            {
                return b2;
            }

            return b3;
        }

        [HttpDelete]
        [Route("Zad3")]
        public string BrojElemenataNiza(int[] Podaci)
        {
           

            return $"{Podaci.Count()}";
        }

       
    }
}
