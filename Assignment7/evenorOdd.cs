using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleConsoleApp
{
    class evenorOdd
    {
        public static void evenodd()
        {
           
            Console.WriteLine("enter the number");
            int size = int.Parse(Console.ReadLine());
            int[] data = new int[size];
            int[] even = new int[size];
            int[] odd = new int[size];
            int x = 0;
            int y = 0;
            Console.WriteLine("the number are:");
            for (int i = 0; i < data.Length; i++)
            {
                data[i] = int.Parse(Console.ReadLine());
            }
            for (int i = 0; i < data.Length; i++)
            {
                if (data[i]%2 == 0)
                {
                    if (data[i]==0)
                    {
                        return;
                    }
                    if(data[i]!=0)
                    {
                        even[x++] = data[i];

                    }


                }

                if (data[i] % 2 != 0)
                {
                    if (data[i]==0)
                    {
                        return;
                    }
                if(data[i]!=0)
                    {

                    odd[y++] = data[i];
                    }
                    
                }

            }
            for (int i = 0; i <data.Length; i++)
            {
                Console.Write(even[i]+ " ");
            }
            Console.WriteLine();
            for (int i = 0; i < data.Length; i++)
            {
                Console.Write(odd[i]+" ");
            }
            Console.WriteLine();
        }
        static void Main(string[] args)
        {
          
            evenorOdd.evenodd();
        }


    }
}
