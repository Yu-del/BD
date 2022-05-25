using System;
using System.Collections.Generic;
using System.Text;

namespace WindowsFormsApp6
{
    class Card
    {
        public string Name { get; set; }
        public int Number { get; set; }
        public string Owner { get; set; }
        public double Discount { get; set; }
        public string Online { get; set; }
        public Card(string name, int number, string owner, double discount, string online )
        {
            Name = name;
            Number = number;
            Owner = owner;
            Discount = discount;
            Online = online;

        }

    }
}
