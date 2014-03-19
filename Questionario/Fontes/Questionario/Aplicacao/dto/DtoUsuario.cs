using System;


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
