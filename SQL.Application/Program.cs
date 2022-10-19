using SQL.Application.Person.Model;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SQL.Application.Person;
using SQL.Application.Service;

using IHost host = Host.CreateDefaultBuilder(args)
    .ConfigureServices((_, services) =>
        services
        .AddSingleton<IPerson, Person>()
        .AddSingleton<IPersonService, PersonService>())
    .Build();

Run(host.Services, "scope 1");
PrintWord("Kiran");

await host.RunAsync();

static void Run(IServiceProvider services, string scope)
{
    using IServiceScope serviceScope = services.CreateScope();
    IServiceProvider provider = serviceScope.ServiceProvider;

    var peronService = provider.GetRequiredService<IPersonService>();
    Console.WriteLine($"{scope}-Call 1 .GetRequiredService<IPersonService>()");

    peronService.InsertPerson(new PersonEntity
    {
        Name = "Todd",
        LastName = "Malone",
        CityName = "New York",
        PostCode = "10801"
    });
}

static void PrintWord(string word)
{
    Console.WriteLine($"Hello {word}");
}