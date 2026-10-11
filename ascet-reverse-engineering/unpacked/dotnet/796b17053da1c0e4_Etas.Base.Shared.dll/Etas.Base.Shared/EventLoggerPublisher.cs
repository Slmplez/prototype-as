using System;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Reflection;
using System.Security;
using System.Text;
using Microsoft.Win32;

namespace Etas.Base.Shared;

public class EventLoggerPublisher : ILoggerPublisher
{
	private const string c_eventLogRegKey = "System\\CurrentControlSet\\Services\\EventLog\\{0}";

	private const string c_maxSizeRegKey = "MaxSize";

	private const int c_eventLogMaxSize = 33554432;

	private const string TEXT_SEPARATOR = "*********************************************";

	private readonly string NEWLINE = Environment.NewLine;

	private string _applicationName = "ToBeOverwrittenByMethod";

	private LogCategory _logCategoryFilter;

	private string _name;

	private static string _logName = "ETAS";

	public static string LogName
	{
		get
		{
			return _logName;
		}
		set
		{
			_logName = value;
		}
	}

	public LogCategory LogCategoryFilter
	{
		get
		{
			return _logCategoryFilter;
		}
		set
		{
			_logCategoryFilter = value;
		}
	}

	public string Name
	{
		get
		{
			return _name;
		}
		set
		{
			_name = value;
		}
	}

	public event EventHandler OnClearedEventLog;

	public static bool RegisterApplication()
	{
		string applicationName = Assembly.GetCallingAssembly().GetName().Name + ".exe";
		return RegisterEventSource(applicationName);
	}

	public static bool UnregisterApplication()
	{
		string applicationName = Assembly.GetCallingAssembly().GetName().Name + ".exe";
		return UnregisterEventSource(applicationName);
	}

	private static bool RegisterEventSource(string applicationName)
	{
		EventLoggerPublisher eventLoggerPublisher = new EventLoggerPublisher();
		eventLoggerPublisher._applicationName = applicationName;
		try
		{
			eventLoggerPublisher.VerifyValidSource();
		}
		catch (SecurityException exception)
		{
			Logger.LogException(exception, string.Format(CultureInfo.InvariantCulture, "SecurityException while trying to register event source {0}", new object[1] { applicationName }));
		}
		return EventLog.SourceExists(applicationName);
	}

	private static bool UnregisterEventSource(string applicationName)
	{
		bool result = true;
		try
		{
			if (EventLog.SourceExists(applicationName))
			{
				EventLog.DeleteEventSource(applicationName);
			}
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "Security exception while deleting event source " + applicationName, Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.EventLoggerPublisher.UnregisterEventSource()");
			result = false;
		}
		return result;
	}

	public static bool CreateEventLog()
	{
		bool result = true;
		if (!EventLog.Exists(_logName))
		{
			EventLog.CreateEventSource("Dummy", _logName);
			AdjustLogSettings();
			EventLog.DeleteEventSource("Dummy");
		}
		return result;
	}

	public static bool DeleteEventLog()
	{
		bool result = true;
		try
		{
			if (EventLog.Exists(_logName))
			{
				EventLog.Delete(_logName);
			}
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "Security exception while deleting event log " + _logName, Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.EventLoggerPublisher.DeleteEventLog()");
			result = false;
		}
		return result;
	}

	public EventLoggerPublisher()
	{
		Name = GetType().ToString();
		LogCategoryFilter = LogCategory.TraceLoop;
	}

	public bool InitializePublisher()
	{
		return true;
	}

	public void Publish(LogCategory category, Exception exception, string message, string application, string module, string methodName, NameValueCollection additionalInfo)
	{
		if (exception == null)
		{
			throw new ArgumentNullException("exception");
		}
		if (message == null)
		{
			throw new ArgumentNullException("message");
		}
		if (application == null)
		{
			throw new ArgumentNullException("application");
		}
		if (module == null)
		{
			throw new ArgumentNullException("module");
		}
		if (methodName == null)
		{
			throw new ArgumentNullException("methodName");
		}
		if (category > LogCategoryFilter)
		{
			return;
		}
		_applicationName = application;
		VerifyValidSource();
		StringBuilder stringBuilder = new StringBuilder();
		if (module.Length != 0)
		{
			stringBuilder.AppendFormat("<{0}>{1}", module, NEWLINE);
		}
		if (message != null && message.Length != 0)
		{
			stringBuilder.AppendFormat("{0}{1}", message, NEWLINE);
		}
		if (exception != null)
		{
			stringBuilder.AppendFormat("{0}{1}", exception.Message, NEWLINE);
		}
		if (methodName != null && methodName.Length != 0)
		{
			stringBuilder.AppendFormat("{1}Method: {0}{1}", methodName, NEWLINE);
		}
		if (additionalInfo != null)
		{
			stringBuilder.AppendFormat("{0}Additional Information: {0}{1}", NEWLINE, "*********************************************");
			foreach (string item in additionalInfo)
			{
				stringBuilder.AppendFormat("{0}{1}: {2}", NEWLINE, item, additionalInfo.Get(item));
			}
		}
		if (exception == null)
		{
			stringBuilder.AppendFormat("{0}{0}No Exception object has been provided.{0}", NEWLINE);
		}
		else
		{
			Exception ex = exception;
			int num = 1;
			do
			{
				stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{0}Exception No. {1}{0}{2}", new object[3]
				{
					NEWLINE,
					num.ToString(CultureInfo.InvariantCulture),
					"*********************************************"
				});
				stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}Type: {1}", new object[2]
				{
					NEWLINE,
					ex.GetType().FullName
				});
				PropertyInfo[] properties = ex.GetType().GetProperties();
				PropertyInfo[] array = properties;
				foreach (PropertyInfo propertyInfo in array)
				{
					if (!(propertyInfo.Name != "InnerException") || !(propertyInfo.Name != "StackTrace") || propertyInfo.GetValue(ex, null) == null)
					{
						continue;
					}
					if (propertyInfo.Name == "AdditionalInformation")
					{
						if (propertyInfo.GetValue(ex, null) == null)
						{
							continue;
						}
						NameValueCollection nameValueCollection = (NameValueCollection)propertyInfo.GetValue(ex, null);
						if (nameValueCollection.Count > 0)
						{
							stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}AdditionalInformation:", new object[1] { NEWLINE });
							for (int j = 0; j < nameValueCollection.Count; j++)
							{
								stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{1}: {2}", new object[3]
								{
									NEWLINE,
									nameValueCollection.GetKey(j),
									nameValueCollection[j]
								});
							}
						}
					}
					else
					{
						stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{1}: {2}", new object[3]
						{
							NEWLINE,
							propertyInfo.Name,
							propertyInfo.GetValue(ex, null)
						});
					}
				}
				if (ex.StackTrace != null)
				{
					stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{0}StackTrace Information{0}", new object[1] { NEWLINE });
					stringBuilder.Append(ex.StackTrace);
				}
				ex = ex.InnerException;
				num++;
			}
			while (ex != null);
		}
		WriteToLog(stringBuilder.ToString(), EventLogEntryType.Error, 0, 0);
	}

	public void Publish(LogCategory category, string message, string application, string module, string methodName, NameValueCollection additionalInfo)
	{
		if (message == null)
		{
			throw new ArgumentNullException("message");
		}
		if (application == null)
		{
			throw new ArgumentNullException("application");
		}
		if (module == null)
		{
			throw new ArgumentNullException("module");
		}
		if (methodName == null)
		{
			throw new ArgumentNullException("methodName");
		}
		if (category > LogCategoryFilter)
		{
			return;
		}
		_applicationName = application;
		VerifyValidSource();
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.AppendFormat("<{0}>{1}{2}{1}", module, NEWLINE, message);
		if (methodName != null && methodName.Length != 0)
		{
			stringBuilder.AppendFormat("{1}Method: {0}{1}", methodName, NEWLINE);
		}
		if (additionalInfo != null && additionalInfo.Count != 0)
		{
			stringBuilder.AppendFormat("{0}{1}{0}Additional Info:", NEWLINE, "*********************************************");
			foreach (string item in additionalInfo)
			{
				stringBuilder.AppendFormat("{0}{1}: {2}", NEWLINE, item, additionalInfo.Get(item));
			}
		}
		WriteToLog(stringBuilder.ToString(), category switch
		{
			LogCategory.Error => EventLogEntryType.Error, 
			LogCategory.Warning => EventLogEntryType.Warning, 
			_ => EventLogEntryType.Information, 
		}, 0, 0);
	}

	private void WriteToLog(string sEntry, EventLogEntryType type, int eventId, short category)
	{
		try
		{
			EventLog.WriteEntry(_applicationName, sEntry, type, eventId, category);
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "Security exception while writing to event source " + _applicationName, Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.Logger.WriteToLog()");
			throw;
		}
		catch (Win32Exception exception2)
		{
			Logger.WriteTrace(exception2, "Exception while writing to event source " + _applicationName, Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.EventLoggerPublisher.WriteToLog()");
			EventLog eventLog = new EventLog(_logName);
			eventLog.Clear();
			EventLog.WriteEntry(_applicationName, sEntry, type, eventId, category);
			FireEventLogClearedEvent();
		}
	}

	private void VerifyValidSource()
	{
		try
		{
			if (!EventLog.SourceExists(_applicationName))
			{
				EventLog.CreateEventSource(_applicationName, _logName);
				Logger.WriteTrace(string.Format(CultureInfo.InvariantCulture, "Event source {0}/{1} created.", new object[2] { _logName, _applicationName }), Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.Logger.VerifyValidSource()");
			}
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "Security exception while creating event source " + _applicationName, Assembly.GetExecutingAssembly().GetName().Name, "Etas.Shared.Logger.VerifyValidSource()");
			throw;
		}
	}

	private static RegistryKey GetEventSourceRegKey(string eventSource)
	{
		string name = Assembly.GetExecutingAssembly().GetName().Name;
		string methodName = name + ".Logger.GetEventSourceRegKey()";
		RegistryKey registryKey = null;
		string text = string.Format(CultureInfo.InvariantCulture, "System\\CurrentControlSet\\Services\\EventLog\\{0}", new object[1] { _logName }) + "\\" + eventSource;
		try
		{
			registryKey = Registry.LocalMachine.OpenSubKey(text, writable: true);
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "SecurityException while trying to access registry key" + text, name, methodName);
			return registryKey;
		}
		if (registryKey == null)
		{
			Logger.WriteTrace("Could not access registry key" + text, name, methodName);
		}
		return registryKey;
	}

	private static void AdjustLogSettings()
	{
		string name = Assembly.GetExecutingAssembly().GetName().Name;
		string methodName = name + ".Logger.AdjustLogSettings()";
		RegistryKey registryKey = null;
		string text = string.Format(CultureInfo.InvariantCulture, "System\\CurrentControlSet\\Services\\EventLog\\{0}", new object[1] { _logName });
		try
		{
			registryKey = Registry.LocalMachine.OpenSubKey(text, writable: true);
		}
		catch (SecurityException exception)
		{
			Logger.WriteTrace(exception, "SecurityException while trying to access registry key" + text, name, methodName);
			return;
		}
		if (registryKey == null)
		{
			Logger.WriteTrace("Could not access registry key" + text, name, methodName);
			return;
		}
		try
		{
			int num = Convert.ToInt32(registryKey.GetValue("MaxSize", 0), CultureInfo.InvariantCulture);
			if (33554432 > num)
			{
				registryKey.SetValue("MaxSize", 33554432);
				Logger.WriteTrace(string.Format(CultureInfo.InvariantCulture, "Max. event log size increased from 0x{0:x} to 0x{1:x}.", new object[2] { num, 33554432 }), name, methodName);
			}
		}
		catch (UnauthorizedAccessException exception2)
		{
			Logger.WriteTrace(exception2, "UnauthorizedAccessException while trying to read/write registry value MaxSize", name, methodName);
		}
		catch (SecurityException exception3)
		{
			Logger.WriteTrace(exception3, "SecurityException while trying to read/write registry value MaxSize", name, methodName);
		}
	}

	private void FireEventLogClearedEvent()
	{
		if (this.OnClearedEventLog != null)
		{
			Delegate[] invocationList = this.OnClearedEventLog.GetInvocationList();
			for (int i = 0; i < invocationList.Length; i++)
			{
				EventHandler eventHandler = (EventHandler)invocationList[i];
				eventHandler(this, null);
			}
		}
	}
}
