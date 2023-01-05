using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleConsoleApp
{
    class wrapperclass
    {
      
        static void Main(string[] args)
        {
            
            Console.WriteLine(  $"enter the Byte type {SByte.MinValue} and {SByte.MaxValue}");
            Console.WriteLine($"enter the int16 type {Int16.MinValue} and {Int16.MaxValue}");
            Console.WriteLine($"enter the Int32 type {Int32.MinValue} and {Int32.MaxValue}");
            Console.WriteLine($"enter the 	Int64 type { Int64.MinValue} and {Int64.MaxValue}");
            Console.WriteLine($"enter the byte type { Byte.MinValue} and {   Byte.MaxValue}");
            Console.WriteLine($"enter the 	UInt16 type {UInt16.MinValue} and {   UInt16.MaxValue}");
            Console.WriteLine($"enter the 	UInt32 type {UInt32.MinValue} and {   UInt32.MaxValue}");
            Console.WriteLine($"enter the UInt64 type {UInt64.MinValue} and {  UInt64.MaxValue}");

            Console.WriteLine($"enter the 	Single type { Single.MinValue} and {   Single.MaxValue}");
            Console.WriteLine($"enter the 	Double type { Double.MinValue} and {   Double.MaxValue}");
            Console.WriteLine($"enter the 	Decimal type { Decimal.MinValue} and {   Decimal.MaxValue}");
          
        }
    }
}
