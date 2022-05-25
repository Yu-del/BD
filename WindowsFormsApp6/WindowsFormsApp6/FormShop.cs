using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    public partial class FormShop : Form
    {
        public FormShop()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
        public void DisplayShop()
        {
            DbCard.DisplayAndSearch("SELECT idShop, Shop_name, Online_shop, Discount_card_idDiscount_card, Discount_value_idDiscount_value, Shop_type_idShop_type FROM Shop", dataGridView);
        }

        private void FormShop_Shown(object sender, EventArgs e)
        {
            DisplayShop();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            DbCard.DisplayAndSearch("SELECT idShop, Shop_name, Online_shop, Discount_card_idDiscount_card, Discount_value_idDiscount_value, Shop_type_idShop_type FROM Shop WHERE Name LIKE '%" + txtSearch.Text + "%'", dataGridView);
        }
    }
}
