using System;

namespace Etas.Base.Shared;

public sealed class PerformanceLoggerScope : IDisposable
{
	private readonly string _Id;

	public PerformanceLoggerScope(string identifier)
	{
		_Id = identifier;
		PerformanceLogger.Start(_Id);
	}

	public PerformanceLoggerScope(string identifier, string comment)
	{
		_Id = identifier;
		PerformanceLogger.StartWithComment(_Id, comment);
	}

	public void Dispose()
	{
		PerformanceLogger.End(_Id);
	}
}
