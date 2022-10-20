using SQL.Application.Person.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL.Application.Person
{
    public interface IPerson
    {
        Task<PersonEntity> GetByName(string name);
        Task<IEnumerable<PersonEntity>> GetAll();
        Task<int> Insert(PersonEntity entity);
        Task<int> Update(PersonEntity entity);
        Task<int> Delete(int id);
    }
}