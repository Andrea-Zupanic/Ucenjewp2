using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS.E15KonzolnaAplikacija
{
    internal class Program
    {

        public Program()
        {
            PozdravnaPoruka();
            Izbornik();
        }

        private void Izbornik()
        {
            Console.WriteLine("Izbornik");
            Console.WriteLine("1. Rad s smjerovima");
            Console.WriteLine("2. Rad s predavacima");
            Console.WriteLine("3. Rad s polaznicima");
            Console.WriteLine("4. Rad s grupama");
            Console.WriteLine("5. Izlaz iz programa");
            Console.WriteLine("Unesite Vaš izbor: ");
            var izbor = Pomocno.UcitajString("Unesi izbor: ");

        }

        private void PozdravnaPoruka()
        {
            Console.WriteLine("*********************************");
            Console.WriteLine("* EDUNOVA KONZULNA APLIKACIJA * ");
            Console.WriteLine("*********************************");
        }


    }
}
