using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VjezbaCS
{
    internal class E09Metode
    { 

        public static void Izvedi()
        {
            Tip1();
            Tip2(2,24);
            var i = Ime;
            Console.WriteLine(Ime);

            Console.WriteLine(PrimBroj(120000) ? "Prim" : "Nije");


        }



        static void Tip1()
        {
            Console.WriteLine("Hello iz tip 1");
        }

        static void Tip2(int Od, int Do)
        {
            for ( int i = Od; i <= Do; i++) 
            { 
              if (i % 2 != 0)
                {
                    continue;
                }
                Console.WriteLine(i);
            }
        }

        static string Ime()
        { 
            return System.Net.Dns.GetHostName();
        
        }


        static bool PrimBroj(int Broj)
        {

            for (int i = 2; i < Broj; i++ ) 
            {
                if (Broj % i == 0)
                { return false; }
            }


            return true;
        }

        







    }
}
