using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyDapper.Model
{
    public class Users
    {
        public int Id { get; set; }
        public string last_name { get; set; }
        public string IIN { get; set; }
        public int category_id {  get; set; }
        public string name { get; set; }
    }
}
