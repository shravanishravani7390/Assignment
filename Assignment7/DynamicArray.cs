using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleConsoleApp
{
    class Utilities
    {
        internal static string Prompt(string question)
        {
            Console.WriteLine(question);
            return Console.ReadLine();
        }

        internal static int GetNumber(string question)
        {
            return int.Parse(Prompt(question));
        }
    }

    class DynamicArray
    {
      
        static void Main(string[] args)
        {
            //Console.WriteLine("Enter the size of the array");
            //int size = int.Parse(Console.ReadLine());
            int size = int.Parse(Utilities.Prompt($"Enter the size of the array"));
            //Console.WriteLine("please enter the CTS value equivalent name for the type of the array that you want to create");
            //string typeName = Console.ReadLine();
            string typeName = Utilities.Prompt("please enter the CTS value equivalent name for the type of the array that you want to create");
            Type type = Type.GetType(typeName, true, true);
            Array myArray = Array.CreateInstance(type, size);
            for (int i = 0; i < size; i++)
            {
                //Console.WriteLine($"enter the value of type {type.Name}");
                //string enteredValue = Console.ReadLine();
                string enteredValue = Utilities.Prompt($"enter the value of type {type.Name}");
                object convertedValue = Convert.ChangeType(enteredValue, type);
                myArray.SetValue(convertedValue, i);
            }
            Console.WriteLine("all values are set");
            foreach (var item in myArray)
            {
                Console.WriteLine(item);
            }

        }
    }
}
