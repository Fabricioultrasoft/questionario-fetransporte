﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Dominio;

namespace Aplicacao.dto
{
    public class DtoUsuario
    {
        public int UsuarioID { get; set; }
        public String NomeUsuario { get; set; }
        public string LoginUsuario { get; set; }
        public string SenhaUsuario { get; set; }
        public int TipoUsuario { get; set; }
    }
}
