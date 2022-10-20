using SQL.Application.Person;
using SQL.Application.Person.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQL.Application.Service
{
    public interface IPersonService
    {
        Task<bool> InsertPerson(PersonEntity personEntity);
    }
    public class PersonService : IPersonService
    {
        private readonly IPerson _person;

        public PersonService(IPerson person)
        {
            _person = person;
        }

        public async Task<bool> InsertPerson(PersonEntity personEntity)
        {
            var result = await _person.Insert(personEntity);

            return result > 0;
        }
    }
}
