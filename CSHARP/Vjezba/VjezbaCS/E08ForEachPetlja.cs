using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VjezbaCS
{
    internal class E08ForEachPetlja
    {
        public static void Izvedi()
        {


            string ime = "Andrea";

            Console.WriteLine(ime);


            foreach(char c in ime)
            {
                Console.WriteLine(c + " : " + (int)c);
            }




            Console.Write("Unesi recenicu: ");
            string unos= Console.ReadLine();


            Console.WriteLine(unos);

            int[] Slova = new int[unos.Length];
            int index = 0;
            foreach(char c in unos)
            {
                int ukupno = 0;
                foreach(char cc in unos) 
                {
                    if (  c == cc )
                    {
                        ukupno++;
                    }
                }
                Slova[index++] = ukupno;
            }


            Console.WriteLine(string.Join(",", Slova));

            char[] JedinstvenaSlova = new char[unos .Length]; 
            bool postoji;
            index = 0;
            foreach (char c in unos )
            {
                postoji = false;
                foreach (char cc in JedinstvenaSlova)
                {
                    if (c == cc)
                    {
                        postoji = true;
                        break;
                    }
                }
                if (!postoji)
                {
                    JedinstvenaSlova[index++] = c;
                }
            }


            Console.WriteLine(string.Join(",",JedinstvenaSlova));

            foreach (char c in JedinstvenaSlova)
            {
                Console.Write(c + " ");
                index = 0;

                foreach (char cc in unos)
                {
                    if (c == cc)
                    {
                        Console.WriteLine(Slova[index]);
                        break;
                    }
                    index++;
                }
            }




        }







    }
}
