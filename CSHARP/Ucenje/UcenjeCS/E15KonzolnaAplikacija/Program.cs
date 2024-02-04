using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UcenjeCS.E14Polimorfizam;
using UcenjeCS.E15KonzolnaAplikacija;

namespace UcenjeCS.E15KonzolnaAplikacija
{
    internal class Program
    {

        private List<Smjer>
        public Program()
        {
           // Smjerovi = new List<>();
            PozdravnaPoruka();
            Izbornik();
        }

        private void Izbornik()
        {
            Console.WriteLine("Izbornik");
            Console.WriteLine("1. Rad sa smjerovima");
            Console.WriteLine("2. Rad sa predavacima");
            Console.WriteLine("3. Rad sa polaznicima");
            Console.WriteLine("4. Rad sa grupama");
            Console.WriteLine("5. Izlaz iz programa");
            IzbornikOdabir();



        }


        private void IzbornikOdabir()
        {
            var izbor = Pomocno.UcitajInt("Unesi izbor: ");
            switch (izbor)
            {
                case 1:
                    Console.WriteLine("Odabrali ste rad sa smjerovima");
                    IzbornikRadS_Smjerovima();
                    break;
                case 2:
                    Console.WriteLine("Odabrali ste rad sa predavacima");
                    break;
                case 3:
                    Console.WriteLine("Odabrali ste rad sa polaznicima");
                    break;
                case 4:
                    Console.WriteLine("Odabrali ste rad sa grupama");
                    break;
                case 5:
                    Console.WriteLine("Odabrali ste izlaz iz programa");
                    break;
                default:
                    Console.WriteLine("Krivi odabir");
                    Izbornik();
                    break;
            }



        }


        private void IzbornikRadS_Smjerovima()
        {
            
            Console.WriteLine("1. Prikaži sve smjerove");
            Console.WriteLine("2. Dodaj smjer ");
            Console.WriteLine("3. Uredi smjer");
            Console.WriteLine("4. Izbrisi smjer");
            Console.WriteLine("5. Povratak na glavni izbornik");
            OdabirStavkeIzbornikSmjera();

        }




        private void PozdravnaPoruka()
        {
            Console.WriteLine("*********************************");
            Console.WriteLine("* EDUNOVA KONZULNA APLIKACIJA * ");
            Console.WriteLine("*********************************");
        }




        private void OdabirStavkeIzbornikSmjera()
        {
            switch (Pomocno.UcitajInt("Odaberi stavku izbornika: "))
            {
                case 1:
                    Console.WriteLine("Prikaži sve smjerove");
                    PrikaziSmjerove();
                    break;

                case 2:
                    Console.WriteLine("Dodaj smjer");
                    DodajNoviSmjer();
                    break;

                case 3:
                    Console.WriteLine("Uredi smjerove");
                    break;

                case 4:
                    Console.WriteLine("Izbrisi smjerove");
                    break;

                case 5:
                    Izbornik();
                    break;
                default:
                    Console.WriteLine("Krivi odabit");
                    IzbornikRadS_Smjerovima();
                    break;

            }

        }




        private void PrikaziSmjerove()
        {
            Smjerovi.ForEach(s => { Console.WriteLine(s); });
            IzbornikRadS_Smjerovima();
        }



        private void DodajNoviSmjer()
        {
            Smjerovi.Add(new Smjer()
            {
                Sifra= Pomocno.UcitajInt("Unesi šifru smjera: "),
                Naziv = Pomocno.UcitajString("Unesi naziv smjera : "),
                //ucitat ostale 

            });

            IzbornikRadS_Smjerovima();

        }






    }
}
