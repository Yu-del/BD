using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    public partial class Discount : Form
    {
        FormCard form;
        FormShop frm;
        FormOwner fro;
        public Discount()
        {
            InitializeComponent();
            form = new FormCard(this);
            frm = new FormShop();
            fro = new FormOwner();
           
        }
        public void Display()
        {
            DbCard.DisplayAndSearch("SELECT Dc_id, Name, Number, Owner_idOwner, Discount, Online FROM discount_card", dataGridView);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            form.Clear();
            form.SaveInfo();
            form.ShowDialog();
        }

        private void Discount_Shown(object sender, EventArgs e)
        {
            Display();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            DbCard.DisplayAndSearch("SELECT Dc_id, Name, Number, Owner_idOwner, Discount, Online FROM discount_card WHERE Name LIKE '%" + txtSearch.Text + "%'", dataGridView);
        }

        private void dataGridView_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                form.Clear();
                form.id = dataGridView.Rows[e.RowIndex].Cells[2].Value.ToString();
                form.name = dataGridView.Rows[e.RowIndex].Cells[3].Value.ToString();
                form.number = dataGridView.Rows[e.RowIndex].Cells[4].Value.ToString();
                form.owner = dataGridView.Rows[e.RowIndex].Cells[5].Value.ToString();
                form.discount = dataGridView.Rows[e.RowIndex].Cells[6].Value.ToString();
                form.online = dataGridView.Rows[e.RowIndex].Cells[7].Value.ToString();
                form.UpdateInfo();
                form.ShowDialog();


                return;
            }
            if (e.ColumnIndex == 1)
            {
                if (MessageBox.Show("Are you want to delete this card?", "Information", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Information) == DialogResult.Yes)
                {

                    DbCard.DeleteCard(dataGridView.Rows[e.RowIndex].Cells[2].Value.ToString());
                    Display();
                }  
                    return;

            }
        }

        private void btnShop_Click(object sender, EventArgs e)
        {
            frm.ShowDialog();
        }

        private void btnOwner_Click(object sender, EventArgs e)
        {
            fro.ShowDialog();
        }
    }
}
