using System;
using Etas.Base.Shared.IoC.Model;

namespace Etas.Base.Shared.IoC.Wrappers;

public class SystemLoggingServiceWrapper : ISystemLoggingService, ILoggingApplicationLog, ILoggingPerformance, ILoggingWalkback
{
	public ILoggingApplicationLog ApplicationLog => this;

	public ILoggingWalkback WalkbackLog => this;

	public ILoggingPerformance PerformanceLog => this;

	public void LogInfo(string message, params object[] args)
	{
		Logger.LogInfo(message, args);
	}

	public void LogWarning(string message, params object[] args)
	{
		Logger.LogWarning(message, args);
	}

	public void LogError(string message, params object[] args)
	{
		Logger.LogError(message, args);
	}

	public void LogException(Exception exception)
	{
		Logger.LogException(exception);
	}

	public void LogException(Exception exception, string message, params object[] args)
	{
		Logger.LogException(exception, message, args);
	}

	public bool Initialize(string configFilePath, string schemaFilePath)
	{
		return PerformanceLogger.Initialize(configFilePath, schemaFilePath);
	}

	public string Start(string identifier)
	{
		return PerformanceLogger.Start(identifier);
	}

	public string StartWithComment(string identifier, string comment)
	{
		return StartWithComment(identifier, comment);
	}

	public double End(string identifier)
	{
		return End(identifier);
	}

	public void LogError(Exception exception)
	{
		Walkback.LogError(exception);
	}
}
