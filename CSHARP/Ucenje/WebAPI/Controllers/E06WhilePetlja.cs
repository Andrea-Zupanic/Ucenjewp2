using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E06")]
    public class E06WhilePetlja:ControllerBase
    {
        [HttpGet]
        [Route("zad1")]
        public int[] Zad1( int brojevi)
        {
            int[] niz = new int[brojevi];
            int i = 0;
            while (i++ < brojevi)
            {
                niz[i-1] = i;
            }
            
            
            return niz;
            
        }

        [HttpGet]
        [Route("zad2")]
        public int Zad2(int brojevi)
        {
            int suma=0;
            int i = 0;
            while (++i <= brojevi)
            {
                suma+=i;
            }

            return suma;

        }


    }
}
