using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E07")]
    public class E07Metode:ControllerBase
    {
        [HttpGet]
        [Route("zad1")]
        public int Zad1(int PrviBroj, int DrugiBroj)
        {
         
            
            return Zbroji(PrviBroj,DrugiBroj);
            
        }

        private int Zbroji(int prviBroj, int drugiBroj)
        {
            return prviBroj + drugiBroj;
        }

   


    }
}
