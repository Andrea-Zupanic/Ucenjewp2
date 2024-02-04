using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("E06")]
    public class E06WhilePetlja : ControllerBase
    {
        [HttpGet]
        [Route("Zad1")]

        public int[] Zad1(int brojevi)
        {
            int[] niz = new int[brojevi];
            int i = 0;
            while (i++ < brojevi) {
                niz[i - 1] = i;
            }
            return niz;


        }


        [HttpGet]
        [Route("Zad2")]

        public int Zad2(int brojevi)
        {
            int i = 0;
            int suma = 0;

            while(i<=brojevi)
            {
                suma += i;
                i++;
            }

            return suma;

        }








    }
}
