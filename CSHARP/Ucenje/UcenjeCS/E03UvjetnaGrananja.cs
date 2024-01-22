namespace UcenjeCS
{
    internal class E03UvjetnaGrananja
    {
        public static void Izvedi()
        {
            int i = 7;

            bool uvjet = i == 7;


            
            if(uvjet)
            {
                Console.WriteLine($"broj je {i}, ušli smo u true dio if naredbe");
            }

            
            if(i == 7)
            {
                Console.WriteLine("Isti uvjet kao i prethodno");
            }

           

            if (i < 5)
            {
                Console.WriteLine("i je manje od 5");
            }
            else
            {
                Console.WriteLine("i nije manje od 5");
            }


            

            if (i == 2) {
                Console.WriteLine("i je 2");
            }else if (i == 3)
            {
                Console.WriteLine(3);
            }
            else
            {
                Console.WriteLine("i nije 2 niti je 3");
            }

            int j = 2;
            if (i == 7)
            {
                if(j==2)
                {
                    Console.WriteLine("Oba uvjeta su zadovoljena ugnježđeno");
                }
            }






            i = 5;
            if(i==7 & j == 2)
            {
                Console.WriteLine("Oba uvjeta su zadovoljena");
            }
        





            if(i==7 && j== 2)
            {
                Console.WriteLine("Oba uvjeta su zadovoljena");
            }







            if(i==5 | j == 1)
            {
                Console.WriteLine("Dovoljno je da jedan od uvjeta bude zadovoljen");
            }
           





            if(i==5 || j== 1)
            {
                Console.WriteLine("Prvi uvjet zadovoljen, drugi se ne provjerava");
            }
            






            // logično NE (!)
            if((i== 5 || j== 1) && !(i>5 || j < 8))
            {
                Console.WriteLine("Komplicirani izraz");
            }

            




            Console.Write("Unesi cijeli broj: ");
            int broj = int.Parse(Console.ReadLine());

            if (broj > 10)
            {
                Console.WriteLine("Osijek");
            }else 
            { 
                Console.WriteLine("Zagreb");
            }

           

            Console.WriteLine(i>10 ? "Osijek" : "Zagreb");



           
            int ocjena = 4;

            switch(ocjena)
            {
                case 1:
                    Console.WriteLine("Nedovoljan");
                    break;
                case 2:
                    case 3:
                    Console.WriteLine("Dovoljno ili dobro");
                    break;
                case 4: case 5:
                    Console.WriteLine("To je ocjena");
                    break;
                default:
                    Console.WriteLine("Nije ocjena");
                    break;
            }

            string ime = "Pero";
            switch(ime)
            {
                case "Marko":
                    Console.WriteLine("OK");
                    break;
                case "Pero":
                    Console.WriteLine("Super");
                    break;
            }

        }
    }
}
