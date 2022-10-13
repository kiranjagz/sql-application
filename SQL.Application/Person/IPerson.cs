using SQL.Application.Person.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL.Application.Person
{
    internal interface IPerson
    {
        Task<PersonEntity> Get(string name);
        Task<IEnumerable<PersonEntity>> GetAll();
        Task<int> Insert(PersonEntity entity);
    }
}
