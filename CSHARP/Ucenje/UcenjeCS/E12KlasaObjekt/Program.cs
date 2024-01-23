using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Channels;
using System.Threading.Tasks;

namespace UcenjeCS.E12KlasaObjekt
{
    internal class Program
    {



        public static void Izvedi()
        {

            Osoba o = new Osoba();

            Grad g = new()
            {
               Naziv= "Osijek",

               BrojStanovnika=10000
              
            };
            o.Grad = g;

            Console.WriteLine(o.Grad.Naziv);






        }

        //private static void E04LjubavniPoziv()


        //{
        //    Ljubav ljubav = new();
        //    ljubav.PrvoIme = Unos("Unesi ime prve osobe: ");
        //    ljubav.DrugoIme = Unos("Unesi ime prve osobe: ");
        //    Console.WriteLine(ljubav.Rezultat());

        //    Console.WriteLine(ljubav.Rezultat());
        //    Console.WriteLine(new Ljubav(Unos("PI"), Unos("DI")).Rezultat());

        //}


        //private static string Unos(string poruka)
        //{
        //    string unos;
        //    while (true)
        //    {
        //        Console.Write(poruka);
        //        unos = Console.ReadLine();
        //            If (unos.Trim().Length ==0)
        //            {
        //            Console.WriteLine("Unos obavezan");
        //            continue;

        //             }
        //        return unos();
        //    } 
          
        //}


        public static void E03Najcesce()
        {
            Osoba osoba = new();

            var pjevac = new Osoba();

            //pjevac.Ime = "Mirko";

            Console.WriteLine(pjevac.Ime?.Substring(0, 1));





        }





        private static void E02DrugaSintaksa()
        {
            Osoba o = new Osoba
            {
                Ime = Console.ReadLine(),
                Prezime = Console.ReadLine()
            };

            Console.WriteLine(o.ImePrezime());

        }




        public static void E01OsnovnaSintaksa()
        { 
            Osoba osoba = new Osoba();

            osoba.Ime = "Pero";
            osoba.Prezime = "Perić";

            Console.WriteLine(osoba.Ime);



        }












    }
}
