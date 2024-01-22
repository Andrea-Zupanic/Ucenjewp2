namespace UcenjeCS
{
    internal class E04Nizovi
    {
        public static void Izvedi()
        {
            
            int[] Temperature = new int[12];
        
            Temperature[0] = 2;
         
            Temperature[1] = 1;
        
            Temperature[11] = 7;

            Console.WriteLine(Temperature);
            Console.WriteLine(string.Join(",",Temperature));

            int[,] Tablica =
            {
                {1,2,3 },
                {4,5,6 },
                {7,8,9}
            };

          
            Console.WriteLine(Tablica[1,1]);
            
            Console.WriteLine(Tablica[2,2]);


           

        }
    }
}
