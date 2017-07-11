﻿using System;
using System.Text;

namespace BookShop
{
    public class Book
    {
        private string author;
        private string title;
        private decimal price;

        public Book(string author, string title, decimal price)
        {
            this.Author = author;
            this.Title = title;
            this.Price = price;

        }
        public string Author
        {
            get
            {
                return this.author;
            }
            set
            {
                var info = value.Split(new[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                if (info.Length > 2)
                {
                    var lastName = info[info.Length - 1];

                    if (char.IsDigit(lastName[0]))
                    {
                        throw new ArgumentException("Author not valid!");
                    }
                }
                this.author = value;
            }
        }
        public string Title
        {
            get => this.title;
            set
            {
                if (value.Length < 3)
                {
                    throw new ArgumentException("Title not valid!");
                }
                this.title = value;

            }
        }
        public virtual decimal Price
        {
            get => this.price;
            set
            {
                if (value <= 0)
                {
                    throw new ArgumentException("Price not valid!");
                }
                this.price = value;
            }
        }
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("Type: ").AppendLine(this.GetType().Name)
                .Append("Title: ").AppendLine(this.Title)
                .Append("Author: ").AppendLine(this.Author)
                .Append("Price: ").Append($"{this.Price:f1}")
                .AppendLine();

            return sb.ToString();
        }
    }
}