using SQL.Application.Person.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.Xml.Linq;

namespace SQL.Application.Person
{
    internal class Person : IPerson
    {
        private IDbConnection _dbConnection;

        public Person()
        {
            _dbConnection = new SqlConnection("Server=.;Database=World;Trusted_Connection=true");
        }

        public async Task<PersonEntity> GetByName(string name)
        {
            _dbConnection.Open();

            var personEntity = (await _dbConnection
                .QueryAsync<PersonEntity>("SP_Select_Person_By_Name",
                new { Name = name },
                commandType: CommandType.StoredProcedure)).SingleOrDefault();

            _dbConnection.Close();

            return personEntity ?? new PersonEntity();
        }

        public async Task<IEnumerable<PersonEntity>> GetAll()
        {
            _dbConnection.Open();

            var personEntity = (await _dbConnection
                .QueryAsync<PersonEntity>("SP_Select_All_Persons",
                commandType: CommandType.StoredProcedure))
                .ToList();

            _dbConnection.Close();

            return personEntity;
        }

        public async Task<int> Insert(PersonEntity entity)
        {
            _dbConnection.Open();

            var parameters = new PersonEntity { Name = entity.Name, LastName = entity.LastName };

            var a = new
            {
                Name = entity.Name,
                LastName = entity.LastName,
                PostCode = entity.PostCode,
                CityName = entity.CityName
            };

            var personEntity = (await _dbConnection.ExecuteAsync("SP_Insert_Person", a, commandType: CommandType.StoredProcedure));

            _dbConnection.Close();

            return personEntity;
        }

        public Task<int> Update(PersonEntity entity)
        {
            throw new NotImplementedException();
        }

        public async Task<int> Delete(int id)
        {
            _dbConnection.Open();

            var a = new
            {
                Id = id
            };

            var returnCode = (await _dbConnection.ExecuteAsync("SP_Delete_Person", a, commandType: CommandType.StoredProcedure));

            _dbConnection.Close();

            return returnCode;
        }
    }
}
