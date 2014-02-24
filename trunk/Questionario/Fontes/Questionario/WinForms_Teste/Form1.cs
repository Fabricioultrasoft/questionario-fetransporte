using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Repositorio;
using Dominio;
using Aplicacao;

namespace WinForms_Teste
{
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AppSindicato SindicatoApp = new AppSindicato();
            AppEmpresa EmpresaApp = new AppEmpresa();
            AppCargo CargoApp = new AppCargo();

        }
    }
}
