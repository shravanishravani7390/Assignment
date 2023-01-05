using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace clasesDemo
{
    class Check
    {


        public static bool isValidDate()
        {
            int date = Utilities.GetNumber("Enter the date of the Month");
            int month = Utilities.GetNumber("Enter the Month of the year");
            int year = Utilities.GetNumber("enter the Year ");

            if (month == 2)
            {
                if (date > 0 && date <= 28)
                {
                    //int year1 = year;
                    Boolean leap = false;
                    if (year % 400 == 0 && (year % 4 == 0 || year % 100 != 0))
                    {
                        Console.WriteLine($"the given Date {date},{month},{year},is valid");
                    }
                }
                else
                {
                    Console.WriteLine($"the given Date {date},{month},{year},is not valid");
                }
            }
            else if (date > 0 && date <= 31 && month > 0 && month <= 12 && year > 1000)
            {
                Console.WriteLine($"the given Date {date},{month},{year},is valid");
                return true;
            }
            return false;
        }
    }
    class checkDate
    {
        static void Main(string[] args)
        {
            while (true)
            {

                Check.isValidDate();
            }
        }
    }

}