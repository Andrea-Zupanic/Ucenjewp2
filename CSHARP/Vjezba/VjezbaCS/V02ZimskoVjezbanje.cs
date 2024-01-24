using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VjezbaCS
{
    internal class V02ZimskoVjezbanje
    {

        public static void Izvedi()
        {

            for (int i = 0; i < 100; i++)
            {
                Console.WriteLine(i + 1);
            }




            for (int i = 100; i > 0; i--)
            {
                Console.WriteLine(i);
            }







            for (int i = 1; i <= 100; i++)
            {
                if (i % 7 == 0)
                {
                    Console.WriteLine(i);
                }

            }

       
        } 
    
    }
}
