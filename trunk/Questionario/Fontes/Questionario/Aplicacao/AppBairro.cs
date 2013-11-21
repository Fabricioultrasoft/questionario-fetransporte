using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Aplicacao.dto;
using Repositorio;

namespace Aplicacao
{
    public class AppBairro
    {
        public Contexto Banco { get; set; }

        public AppBairro()
        {
            Banco = new Contexto();
        }




    }


}
