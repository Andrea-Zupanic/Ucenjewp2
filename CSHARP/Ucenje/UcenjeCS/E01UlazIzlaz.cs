namespace UcenjeCS
{
    internal class E01UlazIzlaz
    {

        public static void Izvedi()
        {



            /*

            Console.WriteLine(7); // int
            Console.WriteLine(true); //bool
            Console.Write("Prvi"); // string
            Console.Write("Drugi"); // string
            Console.WriteLine(3.14); // float
            */

            // varijabla je prostor u memoriji
            //Console.Write("Unesi ime: ");
            //string Ime = Console.ReadLine();

            //Console.WriteLine("Unijeli ste " + Ime);


            

           
            //Console.Write("Unesi visinu u centimetrima: ");
            //int Visina = int.Parse(Console.ReadLine());

            
            //float VisinaUMetrima = (float)Visina / 100;

            //Console.WriteLine("Visoki ste " + VisinaUMetrima + " metara");



            Console.Write("Unesi dužinu prostorije: ");
            float Duzina = float.Parse(Console.ReadLine());

            Console.Write("Unesi širinu prostorije: ");
            float Sirina = float.Parse(Console.ReadLine());

            var Povrsina = Duzina * Sirina;

            Console.WriteLine(Povrsina);



        }

    }
}
