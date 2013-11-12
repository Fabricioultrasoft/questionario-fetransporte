﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosFederacao")]
    public class UsuarioFederacao : Usuario
    {
        public int UsuarioFederacaoID { get; set; }

        public Federacao Federacao { get; set; }
    }
}
