using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("E07")]
    public class E07Metode : ControllerBase
    {
        [HttpGet]
        [Route("Zad1")]

        public int Zadatak(int PrviBroj, int Drugibroj)
        {



            return ZbrojDvaBroja(PrviBroj, Drugibroj);
            



        }

         int ZbrojDvaBroja(int PrviBroj, int Drugibroj)
        {
            return PrviBroj+Drugibroj ;
        }


        [HttpGet]
        [Route("Zad2")]

        public int Zad2(int PrviBroj, int DrugBroj, int TreciBroj, int CetvrtiBroj)
        {
            return ZbrojDvaBroja(PrviBroj, DrugBroj) - ZbrojDvaBroja(TreciBroj, CetvrtiBroj) ; 
        }





    }
}
