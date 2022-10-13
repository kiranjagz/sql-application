using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL.Application.Person.Model
{
    internal class PersonEntity
    {
        [Key]
        public int PersonId { get; set; }
        public string? Name { get; set; }
        public string? LastName { get; set; }
    }
}
