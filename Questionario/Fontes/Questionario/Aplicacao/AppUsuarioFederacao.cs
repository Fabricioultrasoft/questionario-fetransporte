using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Repositorio;
using Aplicacao;
using Dominio;

namespace Aplicacao
{
    public class AppUsuarioFederacao
    {
        public Contexto Banco { get; set; }

        public AppUsuarioFederacao()
        {
            Banco = new Contexto();
        }

        //public void SalvarUsuarioFederacao(UsuarioFederacao usuariofederacao )
        //{
        //    usuariofederacao = Banco.UsuarioFederacao.ToList().Where(x => x. == empresa.Sindicato.SindicatoID).FirstOrDefault();
        //    Banco.Empresa.Add(empresa);
        //    Banco.SaveChanges();
        //}

    }
}
