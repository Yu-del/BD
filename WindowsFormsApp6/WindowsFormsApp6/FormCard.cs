using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    public partial class FormCard : Form
    {
        private readonly Discount _parent;
        public string id, name, number, owner, discount, online;
        public FormCard(Discount parent)
        {
            InitializeComponent();
            _parent = parent;
        }

        public void UpdateInfo()
        {
            lbltext.Text = "Update Card";
            btnSave.Text = "Update";
            txtName.Text = name;
            txtNumber.Text = number;
            txtOwner.Text = owner;
            txtDiscount.Text = discount;
            txtOnline.Text = online;

        }

        public void SaveInfo ()
        {
            lbltext.Text = "Add Card";
            btnSave.Text = "Save";
       
        }
        public void Clear()
        { 
        
        txtName.Text = txtNumber.Text = txtOwner.Text=txtDiscount.Text=txtOnline.Text = string.Empty;
        }
        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnNew_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtName.Text.Trim().Length < 3)
            {
                MessageBox.Show("Name is empty ( > 3). ");
                return;
            }

            if (txtNumber.Text.Trim().Length < 5)
            {
                MessageBox.Show("Number is empty ( > 5). ");
                return;
            }

            if (txtOwner.Text.Trim().Length < 1)
            {
                MessageBox.Show("Owner is empty.");
                return;
            }

            if (txtDiscount.Text.Trim().Length == 0 )
            {
                MessageBox.Show("Discount is empty.");
                return;
            }
            if (txtOnline.Text.Trim().Length == 0)
            {
                MessageBox.Show("Online is empty.");
                return;
            }

            if (btnSave.Text == "Save")
            {
                Card crd = new Card(txtName.Text.Trim(), Convert.ToInt32(txtNumber.Text.Trim()), txtOwner.Text.Trim(), Convert.ToDouble(txtDiscount.Text.Trim()), txtOnline.Text.Trim());
                DbCard.AddCard(crd);
                Clear();
            }
            if (btnSave.Text == "Update")
            {

                Card crd = new Card(txtName.Text.Trim(), Convert.ToInt32(txtNumber.Text.Trim()), txtOwner.Text.Trim(), Convert.ToDouble(txtDiscount.Text.Trim()), txtOnline.Text.Trim());
                DbCard.UpdateCard(crd, id);
            }

            _parent.Display();

        }
    }
}
