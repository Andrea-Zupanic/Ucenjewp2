using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{


    [ApiController]
    [Route("E03")]
    public class E03UvjetnaGrananja: ControllerBase
    {

        [HttpGet]
        [Route("Zad1")]

        public string Zad1( int Broj)
        {
            //    if (Broj % 2 == 0 )
            //    {
            //        return "Paran broj" ;
            //    }
            //    return "Nije paran";

            //return Broj % 2 == 0 ? "Paran" : "Neparan";
            return (Broj % 2 != 0 ? "NE" : "") + "PARAN";



        }
        [HttpGet]
        [Route("Zad2")]
        public string Ocjenatekstom( int Ocjena)
        {

            switch (Ocjena)
            {
                case 1:
                    return "Nedovoljan";

                case 2: case 3:
                    return "Dovoljan";

                case 4: case 5:
                    return "Odlicno";

            }
            return $"{Ocjena} nije ocjena ";


        }



    }
}
