﻿using Microsoft.AspNetCore.Mvc;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("E05")]
    public class E05ForPetlja:ControllerBase
    {
        [HttpGet]
        [Route("zad1")]
        public int[] Zad1( int brojevi)
        {
            int[] niz = new int[brojevi];
            for(int i = 0; i < brojevi; i++)
            {
                niz[i] = i+1;
            }
            
            return niz;
            
        }

        [HttpGet]
        [Route("zad2")]
        public int ZbrojBrojeva(int broj)
        {
           
            int suma = 0;
            for(int i = 1; i <= broj; i++)
            {
                suma += i;
            }
            return suma;
           
        }


       
    }
}