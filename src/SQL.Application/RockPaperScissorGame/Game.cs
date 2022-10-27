using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL.Application.RockPaperScissorGame
{
    public class Game : IGame
    {
        public void Play()
        {
            while (true)
            {
                char[] chars = { 'R', 'P', 'S' };

                Console.WriteLine("Please select an option: 'R => Rock', 'P => Paper', 'S => Scissors'");

                var option = Console.ReadLine();

                var len = chars.Length;
                var random = new Random().Next(0, len - 1);
                var computerChoice = chars.GetValue(random).ToString();

                if (option.ToUpper() == "R")
                {
                    if (computerChoice.ToUpper() == "S")
                    {
                        Console.WriteLine("Rock beats Scissor, you WIN!!");
                    }
                    else if (computerChoice.ToUpper() == "P")
                    {
                        Console.WriteLine("Paper beats Rock, you LOSE :(");
                    }
                    else
                    {
                        Console.WriteLine("Tie!!");
                    }
                }

                if (option.ToUpper() == "P")
                {
                    if (computerChoice.ToUpper() == "R")
                    {
                        Console.WriteLine("Scissor beats Rock, you WIN!!");
                    }
                    else if (computerChoice.ToUpper() == "S")
                    {
                        Console.WriteLine("Scissor beats Paper, you LOSE :(");
                    }
                    else
                    {
                        Console.WriteLine("Tie!!");
                    }
                }

                if (option.ToUpper() == "S")
                {
                    if (computerChoice.ToUpper() == "P")
                    {
                        Console.WriteLine("Scissor beats Paper, you WIN!!");
                    }
                    else if (computerChoice.ToUpper() == "R")
                    {
                        Console.WriteLine("Rock beats Scissor, you LOSE :(");
                    }
                    else
                    {
                        Console.WriteLine("Tie!!");
                    }
                }
            }
        }
    }
}
