using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using Aplicacao;
using Aplicacao.dto;

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


            var listaDeSindicatos = SindicatoApp.Listar();
            
            foreach (var sindicato in listaDeSindicatos)
            {
                dataGridView1.DataSource = listaDeSindicatos.ToList();
            
                foreach (var sindicatoEmpresa in sindicato.Empresas)
                {
                    dataGridView2.DataSource = sindicatoEmpresa.NomeEmpresa.ToList();
                }
            }

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
