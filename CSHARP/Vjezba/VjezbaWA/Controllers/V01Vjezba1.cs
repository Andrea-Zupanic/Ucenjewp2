using Microsoft.AspNetCore.Mvc;

namespace VjezbaWA.Controllers
{
    [ApiController]
    [Route("V01")]
    public class V01Vjezba1: ControllerBase
    {
        [HttpGet]
        [Route("Vjezba1")]

        public string Vjezba1( int a, int b, string c)
        {
            int Rezultat = 0;

               switch (c)
                    {
                        case "+":
                            Rezultat = (a + b);
                           break;



                        case "-":
                             Rezultat = (a - b);
                         
                          break;


                      case "*":
                    if (a == 0 || b == 0)
                    {
                        return "S 0 pomnožen broj ostaje isti.";
                    }
                    else
                    {
                        Rezultat = (a* b);
                    }
                        
                    break;
                                   

                        case "/":
                              if(a != 0)
                                 {
                                       if (b!= 0)
                                            { 
                                            Rezultat = (a/ b);
                                            }   
                                       else if (b == 0)
                                             {
                                             return " Broj 0 nije djeljiv";
                                              }
                                       else if  (a == 0)
                                              {
                                            return " Broj podjeljen s 0 ostaje isti";
                                              }
                                  }

                               break;
                                 default:
                                    return "Krivi Unos";
           



                           }
            string KonacniRezultat = Rezultat.ToString();
            return KonacniRezultat;


        }

     }
 }
