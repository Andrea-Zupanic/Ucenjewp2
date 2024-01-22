namespace UcenjeCS
{
    internal class E05ForPetlja
    {
        public static void Izvedi()
        {

            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");
            //Console.WriteLine("Edunova");


            // for (od kuda; do kuda; uvećanje/umanjenje)
            for(int i = 0; i < 100; i++)
            {
                Console.WriteLine("Edunova");
            }





           
            int t;
            for(t=0;t<10; t++)
            {
                Console.WriteLine("Edunova T");
            }


      




            for(int i=0; i<10; i++) 
            {
                Console.WriteLine(i+1);
            }



            
            for(int i = 10; i > 0; i--)
            {
                Console.WriteLine(i);
            }





            

            for(int i = 0; i < 20; i += 2)
            {
                Console.WriteLine(i);
            }

            Console.WriteLine("**************");
           

            int ukpb = 56;
            int ukdb = 56;


            int manji = ukpb < ukdb ? ukpb : ukdb;
            int veci = ukpb > ukdb ? ukpb : ukdb;

            if (manji == veci && manji%2!=0)
            {
                Console.WriteLine("Unijeli ste iste brojeve, nema ispisa parnih brojeva");
            }

            for(int i = manji; i <= veci; i++)
            {
                if(i%2 == 0)
                {
                    Console.WriteLine(i);
                }
            }


            for(int i = 0; i < 10; i++)
            {
                for(int j = 0; j < 10; j++)
                {
                    Console.Write((i+1) * (j+1) + " ");
                }
                Console.WriteLine();
            }
            







            for(int i = 0; i < 10; i++)
            {
                if(i%3== 0)
                {
                    continue;
                }

                Console.WriteLine(i);
            }

           



            for(int i=0;i< 10; i++)
            {
                if (i == 3)
                {
                    break;
                }
                Console.WriteLine(i);
            }



            for(; ; )
            {
                Console.Write(new Random().Next(10,100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Console.Write(new Random().Next(10, 100) + " ");
                Thread.Sleep(50);
                break;
            }



        }
    }
}
