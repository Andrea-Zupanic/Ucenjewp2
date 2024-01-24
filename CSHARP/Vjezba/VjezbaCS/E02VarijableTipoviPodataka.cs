using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VjezbaCS
{
    internal class E02VarijableTipoviPodataka
    {

        public static void Izvedi()
        {

            int Varijabla = 3;

            Console.WriteLine(Varijabla);




            //int i,j ,k;

            int i = 1, j = 0, k;

            Console.WriteLine("{0} - {1}", i, j);




            bool Istina = i == 1;

            Console.WriteLine(Istina);






            double Broj = 4.89;
            decimal VeciBroj = 2.89M;





            Console.WriteLine(int.MaxValue);
            int Mb = int.MaxValue;
            Console.WriteLine(Mb + 1);



            i = 3; j = 2; k = 1;

            Console.WriteLine(i + j);
            Console.WriteLine(i - j);
            Console.WriteLine(i * j);
            Console.WriteLine(i / j);
            Console.WriteLine((float)i / j);
            int db = 56;
            Console.WriteLine(db / 10);

            bool uvjet = i > j;
            uvjet = i >= j;
            uvjet = i <= j;
            uvjet = i < j;
            uvjet = i == j;
            uvjet = i != j;


            // operator modulo
            // ostatak nakon cjelobrojnog djeljenja
            int ostatak = 9 % 2;


            Console.WriteLine(52 % 10);

            i = 1;
            Console.WriteLine(i);
            i = i + 1;
            Console.WriteLine(i);
            i += 1;
            Console.WriteLine(i);
            i++;
            Console.WriteLine(i);


            Console.WriteLine(i++);
            Console.WriteLine(i);

            Console.WriteLine(++i);
            Console.WriteLine(i);




            int t = 1, l = 2;
            t = ++t - l;
            Console.WriteLine("t = ++t - l => t={0}, l={1}", t, l);

            l -= t - l;
            Console.WriteLine("l -= t - l => t={0}, l={1}", t, l);


            Console.WriteLine(++t - --l);
            Console.WriteLine("++t - --l => t={0}, l={1}", t, l);












        }





    }
}
