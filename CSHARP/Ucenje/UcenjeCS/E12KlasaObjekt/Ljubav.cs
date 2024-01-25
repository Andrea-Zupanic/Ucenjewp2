using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E12KlasaObjekt
{
    internal class Ljubav
    {

        public string PrvoIme { get; set; }

        public string DrugoIme { get; set; }

        public Ljubav()
        {
        
        }

        public  Ljubav (string PrvoIme, string DrugoIme)
        {
            this.PrvoIme = PrvoIme;
            this.DrugoIme = DrugoIme;
        }





        public string Rezultat()
        {
            return Izracunaj(SlovaUNiz(PrvoIme + DrugoIme)) + " %";
                
         }

        private int[] SlovaUNiz(string Imena)
        {
            return new int[2];
        }

        private int Izracunaj(int[] Brojevi)
        {
            return 67;
        }


    }
}
