using Microsoft.AspNetCore.Mvc;
using System.Text;

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







        [HttpGet]
        [Route("Zadatak2")]

        public int[] Zadatak2()
        {
            int[] Niz = new int[28];
            int broj = 0;

            for (int i = 2; i <= 57; i += 2)
            {
                Niz[broj] = i;
                broj++;
            }

            return Niz;

        }


        [HttpGet]
        [Route("Zadatak3")]

        public int Zadatak3()
        {
            int Zbroj = 0;
            for (int i = 2; i <= 18; i += 2)
            {

                Zbroj += i; 

            }
            return Zbroj;
        }



        [HttpGet]
        [Route("Zadatak4")]

        public int Zadatak4(int broj)
        {
            int Zbroj = 0;
            for (int i = 1; i <= broj; i++)
            {
                Zbroj++; 
            }
            return Zbroj;
        }





        }
    }







    


