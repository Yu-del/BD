using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    class DbCard
    {
        public static MySqlConnection GetConnection()
        {
            string sql = "datasource=localhost; port=3306; username = root; password= ;database=cards";
            MySqlConnection con = new MySqlConnection(sql);
            try { 
                con.Open();
            }
            catch (MySqlException ex) 
            {

                MessageBox.Show("MySQL Connection! \n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            return con;

        }

        public static void AddCard(Card crd)
        {
            string sql = "INSERT INTO discount_card VALUES (NULL, @CardName, @CardNumber, @Owner, @Discount, @Online)";
            MySqlConnection con = GetConnection();
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@CardName", MySqlDbType.VarChar).Value = crd.Name;
            cmd.Parameters.Add("@CardNumber", MySqlDbType.VarChar).Value = crd.Number;
            cmd.Parameters.Add("@Owner", MySqlDbType.VarChar).Value = crd.Owner;
            cmd.Parameters.Add("@Discount", MySqlDbType.VarChar).Value = crd.Discount;
            cmd.Parameters.Add("@Online", MySqlDbType.VarChar).Value = crd.Online;
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Added Successfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

            catch (MySqlException ex)
            {

                MessageBox.Show("Insertion failed \n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            con.Close();

        }
        public static void UpdateCard(Card crd, string id)
        {
            string sql = "UPDATE discount_card SET Name = @CardName, Number = @CardNumber, Owner_idOwner = @Owner, Discount = @Discount, Online = @Online WHERE Dc_id = @CardID";
            MySqlConnection con = GetConnection();
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@CardID", MySqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@CardName", MySqlDbType.VarChar).Value = crd.Name;
            cmd.Parameters.Add("@CardNumber", MySqlDbType.VarChar).Value = crd.Number;
            cmd.Parameters.Add("@Owner", MySqlDbType.VarChar).Value = crd.Owner;
            cmd.Parameters.Add("@Discount", MySqlDbType.VarChar).Value = crd.Discount;
            cmd.Parameters.Add("@Online", MySqlDbType.VarChar).Value = crd.Online;
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Update Successfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }


            catch (MySqlException ex)
            {

                MessageBox.Show("Update failed \n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            con.Close();

        }
        public static void DeleteCard(string id)
        {
            string sql = "DELETE FROM discount_card WHERE Dc_id = @CardID";
            MySqlConnection con = GetConnection();
            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add("@CardID", MySqlDbType.VarChar).Value = id;
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Deleted Successfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }


            catch (MySqlException ex)
            {

                MessageBox.Show("Delete failed \n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            con.Close();
        }

        public static void DisplayAndSearch (string query, DataGridView dgv)
        {
            string sql = query;
            MySqlConnection con = GetConnection();
            MySqlCommand cmd = new MySqlCommand(sql, con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            DataTable tbl = new DataTable();
            adp.Fill(tbl);
            dgv.DataSource = tbl;
            con.Close();
        }


    }


    
}

