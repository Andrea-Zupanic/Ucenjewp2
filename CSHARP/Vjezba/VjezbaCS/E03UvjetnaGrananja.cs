

namespace VjezbaCS
{
    internal class E03UvjetnaGrananja
    {

        public static void Izvedi()
        {

            int i = 7;

            bool Uvjet = i == 7;



            if (Uvjet)
            {
                Console.WriteLine("Ušao sam u true dio naredbe");
            }


            if (i == 7)
            {
                Console.WriteLine("Isti uvjet kao i predhodno");
            }







            if (i > 5)
            {
                Console.WriteLine("i je manje od 5");
            }
            else
            {
                Console.WriteLine("i nije manje od 5");
            }



            if (i == 2)
            {
                Console.WriteLine("i je 2");
            }
            else if (i == 3)
            {
                Console.WriteLine("i je 3");
            }
            else
            {
                Console.WriteLine("i nije 2 niti je 3");
            }



            int j = 2;


            if (i == 7)
            {
                if (j == 2)
                {
                    Console.WriteLine("Oba uvjeta su zadovoljena");

                }
            }




            Console.WriteLine("--------------------------");





            i = 5;
            if (i == 7 && j == 2)
            {
                Console.WriteLine("Oba uvjeta su zadovoljena");
            }



            if(i==5 | j ==1)
            { 
                Console.WriteLine("dovoljno je da jedan od uvjeta bude zadovoljen");
            }



            if (i == 5 || j == 1)
            {
                Console.WriteLine("dva uvjeta zadovoljena");
            }



            Console.WriteLine("--------------------");


            if ((i==5 ||j ==1) && !(i>5 || j<8 ))
            {
                Console.WriteLine("Kompliciraniji izraz");
            }




            Console.Write("Unesi cijeli broj:  ");
            int Broj= int.Parse(Console.ReadLine());



            if (Broj > 10 )
            {
                Console.WriteLine("Osijek");
            }
            else
            {
                Console.WriteLine("Zagreb");
            }


            Console.WriteLine(i > 10 ? "Osijek" : "Zagreb");

            Console.Write("Unesi drugi broj: ");
            int br = int.Parse(Console.ReadLine());

            Console.WriteLine(br > 20 ? "Hrvatska" : "Slovenija");


            int Ocjena = 4;

            switch(Ocjena)
            {
                case 1:
                  Console.WriteLine("Nedovoljan");
                    break;

                case 2:
                    Console.WriteLine("Dovoljan");
                    break;

                case 3:
                    Console.WriteLine("Dobar");
                    break;
                case 4:
                case 5:
                    Console.WriteLine("Super");
                    break;
                default:
                    Console.WriteLine("Nije ocjena");
                    break;

            }



            string ime = "Pero";
            switch (ime)
            {
                case "Marko":
                    Console.WriteLine("OK");
                    break;

                case " Pero":
                    Console.WriteLine("Super");
                    break;
                   

            }







        }
    }
}
