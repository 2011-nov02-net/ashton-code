using System;
namespace RPSGame
{
    public class RPSMatch
    {

        string UserChoice;
        string ComputerChoice;
        

        public RPSMatch(string UserChoice, string ComputerChoice)
        {
            this.UserChoice = UserChoice;
            this.ComputerChoice = ComputerChoice;
        }

        static string Winner(RPS userChoice, RPS computerChoice)
        {
            if (userChoice == computerChoice)
                return "It's a tie";

            switch (computerChoice)
            {
                case RPS.Rock:
                    switch (userChoice)
                    {
                        case RPS.Paper:
                            return "Player Wins";
                        case RPS.Scissors:
                            return "Computer Wins";
                    }
                    break;
                case RPS.Paper:
                    switch (userChoice)
                    {
                        case RPS.Rock:
                            return "User Wins";
                        case RPS.Scissors:
                            return "Computer Wins";
                    }
                    break;
                case RPS.Scissors:
                    switch (userChoice)
                    {
                        case RPS.Rock:
                            return "User Wins";
                        case RPS.Paper:
                            return "Computer Wins";
                    }
                    break;
            }

            return null;
        }



    }
}
