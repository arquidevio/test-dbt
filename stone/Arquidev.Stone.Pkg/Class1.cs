namespace Arquidev.Stone.Pkg;

public class Class1
{
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
}

public class StoneConfig
{
    public int MaxRetries { get; set; } = 5;
    public int TimeoutMs { get; set; } = 3000;
}

public interface IStoneService
{
    string Process(string input);
}

public class DefaultStoneService : IStoneService
{
    public string Process(string input) => input.Trim().ToUpperInvariant();
}

public static class StoneExtensions
{
    public static string ToStoneId(this string s) => s.ToLower().Replace(" ", "-");
}

public record StoneEvent(string Type, string Payload);

public class StoneRegistry
{
    private readonly List<string> _items = new();
    public void Register(string item) => _items.Add(item);
    public IReadOnlyList<string> Items => _items;
}

public class StonePagination
{
    public int Page { get; set; } = 1;
    public int PageSize { get; set; } = 20;
}

// cors-aware
