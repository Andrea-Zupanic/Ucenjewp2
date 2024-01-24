using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("E06")]
    public class E06WhilePetlja : ControllerBase
    {
        [HttpGet]
        [Route("Zad1")]

        public int[] Zad1 (int brojevi)
        {
            int[] niz = new int[brojevi];

            return niz;


        








    }
}
