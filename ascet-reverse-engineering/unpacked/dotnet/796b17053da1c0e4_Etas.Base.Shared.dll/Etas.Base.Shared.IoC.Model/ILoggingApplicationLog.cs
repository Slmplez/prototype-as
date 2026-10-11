using System;

namespace Etas.Base.Shared.IoC.Model;

public interface ILoggingApplicationLog
{
	void LogInfo(string message, params object[] args);

	void LogWarning(string message, params object[] args);

	void LogError(string message, params object[] args);

	void LogException(Exception exception);

	void LogException(Exception exception, string message, params object[] args);
}
