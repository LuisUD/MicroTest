namespace BookStoreApi.Models;

public class BookStoreDatabaseSettings
{
    public string AuthDb { get; set; } = null!;
    public string User { get; set; } = null!;
    public string Password { get; set; } = null!;
    public string Host { get; set; } = null!;
    public int Port { get; set; }
    public string DatabaseName { get; set; } = null!;
    public string BooksCollectionName { get; set; } = null!;
}