namespace Etas.Base.Shared;

public class LogContext : ILogContext
{
	public static ILogContext Emtpy { get; private set; }

	public string Application { get; private set; }

	public string Module { get; private set; }

	public string Method { get; private set; }

	static LogContext()
	{
		Emtpy = new LogContext(string.Empty, string.Empty, string.Empty);
	}

	public LogContext(string application, string module, string method)
	{
		Application = application;
		Module = module;
		Method = method;
	}
}
