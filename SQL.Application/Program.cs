using SQL.Application.Person.Model;

namespace SQL.Application
{
    internal class Program
    {
        static async Task Main(string[] args)
        {
            var person = new Person.Person();

            var newPerson = new PersonEntity
            {
                Name = "Michael",
                LastName = "Bunby",
                PostCode = "7776",
                CityName = "New York"
            };

            var result = await person.GetAll();

            var hasSaved = await person.Insert(newPerson);

            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(result, Newtonsoft.Json.Formatting.Indented));
            Console.WriteLine(hasSaved.ToString());

            var id = result.LastOrDefault();

            if (id != null)
            {
                var hasDeleted = await person.Delete(id.PersonId);

                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(await person.GetAll(), Newtonsoft.Json.Formatting.Indented));
                Console.WriteLine(hasDeleted.ToString());
            }

            Console.ReadLine();
        }
    }
}