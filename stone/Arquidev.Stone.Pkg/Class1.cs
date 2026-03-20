namespace Arquidev.Stone.Pkg;

public class Class1
{
    public string Name { get; set; } = string.Empty;
}

public class StoneConfig
{
    public int MaxRetries { get; set; } = 3;
}

public interface IStoneService
{
    string Process(string input);
}
