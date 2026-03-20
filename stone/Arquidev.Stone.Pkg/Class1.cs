namespace Arquidev.Stone.Pkg;

public class Class1
{
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
}

public class StoneConfig
{
    public int MaxRetries { get; set; } = 3;
    public int TimeoutMs { get; set; } = 5000;
}

public interface IStoneService
{
    string Process(string input);
}

public class DefaultStoneService : IStoneService
{
    public string Process(string input) => input.Trim().ToUpper();
}

public static class StoneExtensions
{
    public static string ToStoneId(this string s) => s.ToLower().Replace(" ", "-");
}
