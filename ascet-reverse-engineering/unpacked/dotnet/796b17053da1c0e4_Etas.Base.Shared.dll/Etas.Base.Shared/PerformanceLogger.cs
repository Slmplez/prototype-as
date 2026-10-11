using System;
using System.Reflection;

namespace Etas.Base.Shared;

public static class PerformanceLogger
{
	private const string PerfLoggerProgId = "Etas.PerformanceLogger.PerformanceLogger";

	private static readonly object _PerformanceLoggerInstance;

	private static readonly Type _PerformanceLoggerType;

	static PerformanceLogger()
	{
		try
		{
			_PerformanceLoggerType = Type.GetTypeFromProgID("Etas.PerformanceLogger.PerformanceLogger");
			if (_PerformanceLoggerType != null)
			{
				_PerformanceLoggerInstance = Activator.CreateInstance(_PerformanceLoggerType);
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
		}
	}

	public static bool Initialize(string configFilePath, string schemaFilePath)
	{
		return InvokeCOMMethod("Initialize", false, configFilePath, schemaFilePath);
	}

	public static string Start(string identifier)
	{
		return InvokeCOMMethod("Start", string.Empty, identifier);
	}

	public static string StartWithComment(string identifier, string comment)
	{
		return InvokeCOMMethod("StartWithComment", string.Empty, identifier, comment);
	}

	public static double End(string identifier)
	{
		return InvokeCOMMethod("End", 0.0, identifier);
	}

	private static T InvokeCOMMethod<T>(string name, T failureRetVal, params object[] args)
	{
		try
		{
			if (_PerformanceLoggerInstance != null)
			{
				return (T)_PerformanceLoggerType.InvokeMember(name, BindingFlags.InvokeMethod, null, _PerformanceLoggerInstance, args);
			}
		}
		catch (Exception exception)
		{
			Logger.LogException(exception);
		}
		return failureRetVal;
	}
}
