using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("V02")]
    public class V02ZimskiZadatci : ControllerBase
    {
        [HttpGet]
        [Route("Zadatak1")]
        public int ZbrojSvihBrojeva()
        {
            int suma = 0;
            for (int i = 0; i < 101; i++)
            {
                suma += i;
            }
            return suma;

        }
    }
}
        //[HttpGet]
        //[Route("Zadatak2")]

        //public int NizParnihBrojeva()
        //{


        //    for (int i = 1; i < 57; i++)
        //    {

        //        if (i % 2 == 0)
        //        {
        //            return i;
        //        }
        //    }
        //    return;





        //}




    


