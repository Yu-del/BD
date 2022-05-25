using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    public partial class FormOwner : Form
    {
        public FormOwner()
        {
            InitializeComponent();
        }

        public void DisplayOwner()
        {
            DbCard.DisplayAndSearch("SELECT idOwner, FIO, Address, Phone, Email FROM owner", dataGridView);
        }

        private void FormOwner_Load(object sender, EventArgs e)
        {

        }

        private void FormOwner_Shown(object sender, EventArgs e)
        {
            DisplayOwner();
        }
        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            DbCard.DisplayAndSearch("SELECT idOwner, FIO, Address, Phone, Email FROM owner WHERE Name LIKE '%" + txtSearch.Text + "%'", dataGridView);
        }
    }
}
