using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VjezbaCS
{
    internal class E10ObradaIznimki
    {

        public static void Izvedi()
        {

            int pb = UcitajBroj("Unesi prvi broj: ");
            int db = UcitajBroj("Unesi i drugi broj: ");
           
          IspišiBrojeve(pb, db);
            
        }

        private static void IspišiBrojeve(int pb, int db)
        {
            
            var Manji = pb <= db ? pb : db;
            var Veci = pb>=db ? pb : db;
            for (int i = Manji; i <= Veci; i ++)
            {
                Console.WriteLine(i);
            }

        }

        private static int UcitajBroj(string v)
        {


            for (; ; )
            {
                Console.Write(v);

            try
            {
              return int.Parse(Console.ReadLine());

            }catch(FormatException e) 
            {
                Console.WriteLine("Nisi unio broj");
            }
                catch(OverflowException )
                {
                    Console.WriteLine("Nešto ne valja");
                }
                catch (Exception)
                {
                    Console.WriteLine("Tko zna šta se sad desilo,da smo dosli do ovoga. ");
                }
                finally { Console.WriteLine("Mjesto gdje dolazi puklo ili ne"); }

            }
            
            //return 0;

        }


    }
}
