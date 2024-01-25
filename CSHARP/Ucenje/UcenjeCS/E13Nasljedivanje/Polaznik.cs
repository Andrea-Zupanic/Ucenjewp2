using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E13Nasljedivanje
{
    internal class Polaznik : Osoba
    {

        // private int Vidim;
        public string BrojUgovora { get; set; }







        public Polaznik ()   //  konstruktor prvi se pokrece 
        {
            Console.WriteLine("konstruktor polaznika");
        }



        public Polaznik(int sifra, string ime, string prezime, string oib,
                 string email, string brojUgovora)
            : base(sifra, ime, prezime, oib, email)
        {
            BrojUgovora = brojUgovora;
            
        }





        public override string ToString()
        {
            return new StringBuilder(base.ToString()).
                Append(',').Append(BrojUgovora).ToString();
        }




        private void provjeravidljivosti()
        {
            Vidimprotected = 2;
            base.Sifra = 2;
            base.Vidimprotected = 7;
            this.Vidimprotected = 8;


        }
    }
}


