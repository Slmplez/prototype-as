using System;
using System.Collections.Specialized;

namespace Etas.Base.Shared;

public interface ILoggerPublisher
{
	string Name { get; set; }

	LogCategory LogCategoryFilter { get; set; }

	bool InitializePublisher();

	void Publish(LogCategory category, Exception exception, string message, string application, string module, string methodName, NameValueCollection additionalInfo);

	void Publish(LogCategory category, string message, string application, string module, string methodName, NameValueCollection additionalInfo);
}
