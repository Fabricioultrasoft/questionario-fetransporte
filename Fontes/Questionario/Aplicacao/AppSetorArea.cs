﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppSetorArea
    {
        public Contexto Banco { get; set; }

        public AppSetorArea()
        {
            Banco = new Contexto();
        }

        public IEnumerable<DtoSetorArea> Listar()
        {
            var retorno = (from s in Banco.SetorArea
                           select new DtoSetorArea
                           {
                               SetorAreaID = s.SetorAreaID,
                               NomeSetorArea = s.NomeSetorArea,
                               Cargo = s.Cargo
                           }).ToList();

            return retorno;
        }

    }
}
