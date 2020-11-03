using System;

namespace AcronymExtractor
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            Console.WriteLine("enter phrase");
            string phrase = Console.ReadLine();
            string[] words = phrase.Split(" ");
            foreach (string word in words) {
                Console.Write($"{word[0]}.");
            }

        }
    }
}
