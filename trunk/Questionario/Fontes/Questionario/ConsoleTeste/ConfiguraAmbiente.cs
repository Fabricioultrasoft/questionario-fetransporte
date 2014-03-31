using System;

namespace ConsoleTeste
{
    public class ConfiguraAmbiente
    {
        public ConfiguraAmbiente()
        {
            Console.BackgroundColor = ConsoleColor.DarkYellow;
            Console.ForegroundColor = ConsoleColor.Green;
        }


        public void PularLinha(int qtdLinhas)
        {
            for (int i = 0; i < qtdLinhas; i++)
            {
                Console.WriteLine("");
            }

        }

        public void EmitirFinaldeProcessamento(string mensagem)
        {
            PularLinha(2);
            Console.WriteLine(mensagem);
        }

    }
}
