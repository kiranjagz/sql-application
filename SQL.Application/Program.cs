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
                LastName = "Bunby"
            };

            var result = await person.GetAll();

            var hasSaved = await person.Insert(newPerson);

            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(result, Newtonsoft.Json.Formatting.Indented));
            Console.WriteLine(hasSaved.ToString());

            Console.ReadLine();
        }
    }
}