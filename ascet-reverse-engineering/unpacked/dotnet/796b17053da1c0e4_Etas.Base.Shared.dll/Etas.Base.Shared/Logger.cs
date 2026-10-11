#define TRACE
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Remoting;
using System.Security;
using System.Security.Principal;
using System.Text;

namespace Etas.Base.Shared;

public sealed class Logger
{
	private static bool s_initialized;

	private static bool s_traceLogOutput = true;

	private static List<ILoggerPublisher> s_publishers = new List<ILoggerPublisher>();

	private static Dictionary<CultureInfo, List<ILoggerPublisher>> s_publishersByCulture = new Dictionary<CultureInfo, List<ILoggerPublisher>>();

	public static List<ILoggerPublisher> Publishers
	{
		get
		{
			if (!s_initialized)
			{
				InitializePublishers();
			}
			return s_publishers;
		}
	}

	private Logger()
	{
	}

	public static void LogError(string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(LogCategory.Error, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void LogWarning(string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(LogCategory.Warning, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void LogInfo(string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(LogCategory.Info, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void LogException(Exception exception)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		string empty = string.Empty;
		Publish(LogCategory.Exception, exception, empty, null, friendlyName, name, callingMethodString);
	}

	public static void LogException(Exception exception, string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(LogCategory.Exception, exception, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void Write(LogCategory category, string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(category, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void Write(LogCategory category, Exception exception, string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(category, exception, message, null, friendlyName, name, callingMethodString, args);
	}

	public static void TraceImHere()
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		string message = "Executing " + callingMethodString;
		Publish(LogCategory.TraceLoop, message, null, friendlyName, name, callingMethodString);
	}

	public static void TraceMethodStart()
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		string message = "Start of " + callingMethodString;
		Publish(LogCategory.TraceFunction, message, null, friendlyName, name, callingMethodString);
	}

	public static void TraceMethodEnd()
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		string message = "End of " + callingMethodString;
		Publish(LogCategory.TraceFunction, message, null, friendlyName, name, callingMethodString);
	}

	public static void LogMessage(ILogEntry logEntry)
	{
		if (logEntry == null)
		{
			throw new ArgumentNullException("logEntry");
		}
		if (logEntry.Context == null)
		{
			throw new ArgumentNullException("logEntry.Context");
		}
		Publish(logEntry);
	}

	public static void TraceData(string message, params object[] args)
	{
		string friendlyName = AppDomain.CurrentDomain.FriendlyName;
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		Publish(LogCategory.TraceData, message, null, friendlyName, name, callingMethodString, args);
	}

	public static bool IsCategoryEnabled(LogCategory category)
	{
		return s_publishers.Any((ILoggerPublisher p) => p.LogCategoryFilter >= category);
	}

	internal static void WriteTrace(LogCategory category, string message, string module, string methodName)
	{
		WriteTrace(category switch
		{
			LogCategory.Error => "Error: ", 
			LogCategory.Warning => "Warning: ", 
			LogCategory.Info => "Info: ", 
			_ => "", 
		} + message, module, methodName);
	}

	internal static void WriteTrace(string message, string module, string methodName)
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.AppendFormat("{0}{1} <{2}> {4}{0}{3}", Environment.NewLine, DateTime.Now.ToString(CultureInfo.InvariantCulture), module, message, methodName);
		Trace.WriteLine(stringBuilder.ToString());
	}

	internal static void WriteTrace(Exception exception, string message, string module, string methodName)
	{
		string text = "Exception";
		string text2 = "*********************************************";
		string newLine = Environment.NewLine;
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{1} <{2}> {3}{0}", newLine, DateTime.Now.ToString(CultureInfo.InvariantCulture), module, methodName);
		if (message != null && message.Length != 0)
		{
			stringBuilder.AppendFormat("{0}: {1}{2}{3}", text, message, newLine, exception.Message);
		}
		else
		{
			stringBuilder.AppendFormat("{0}: {1}", text, exception.Message);
		}
		Exception ex = exception;
		int num = 1;
		do
		{
			stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}{0}Exception No. {1}{0}{2}", new object[3]
			{
				newLine,
				num.ToString(CultureInfo.InvariantCulture),
				text2
			});
			stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "{0}Type: {1}", new object[2]
			{
				newLine,
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
						stringBuilder.AppendFormat("{0}AdditionalInformation:", newLine);
						for (int j = 0; j < nameValueCollection.Count; j++)
						{
							stringBuilder.AppendFormat("{0}{1}: {2}", newLine, nameValueCollection.GetKey(j), nameValueCollection[j]);
						}
					}
				}
				else
				{
					stringBuilder.AppendFormat("{0}{1}: {2}", newLine, propertyInfo.Name, propertyInfo.GetValue(ex, null));
				}
			}
			if (ex.StackTrace != null)
			{
				stringBuilder.AppendFormat("{0}{0}StackTrace Information:{0}", newLine);
				stringBuilder.Append(ex.StackTrace);
			}
			ex = ex.InnerException;
			num++;
		}
		while (ex != null);
		Trace.WriteLine(stringBuilder.ToString());
	}

	private static void Publish(LogCategory category, Exception exception, string message, NameValueCollection additionalInfo, string application, string module, string methodName, params object[] args)
	{
		if (!s_initialized)
		{
			InitializePublishers();
		}
		if (additionalInfo == null)
		{
			additionalInfo = new NameValueCollection();
		}
		try
		{
			additionalInfo.Add("WindowsIdentity", WindowsIdentity.GetCurrent().Name);
		}
		catch (SecurityException)
		{
			additionalInfo.Add("WindowsIdentity", "(Permission Denied)");
		}
		try
		{
			string message2 = FormatMessage(message, args);
			foreach (ILoggerPublisher publisher in Publishers)
			{
				publisher.Publish(category, exception, message2, application, module, methodName, additionalInfo);
			}
		}
		catch (Win32Exception exception2)
		{
			PublishInternalException(exception2);
			WriteTrace(exception, "Original exception was:", module, "");
		}
		if (s_traceLogOutput)
		{
			WriteTrace(exception, message, module, methodName);
		}
	}

	private static void PublishInternalException(Exception exception)
	{
		string name = Assembly.GetCallingAssembly().GetName().Name;
		string callingMethodString = GetCallingMethodString();
		WriteTrace(exception, "Exception occurred while publishing log message", name, callingMethodString);
	}

	private static void Publish(LogCategory category, string message, NameValueCollection additionalInfo, string application, string module, string methodName, params object[] args)
	{
		if (!s_initialized)
		{
			InitializePublishers();
		}
		if (additionalInfo == null)
		{
			additionalInfo = new NameValueCollection();
		}
		try
		{
			string message2 = FormatMessage(message, args);
			foreach (ILoggerPublisher publisher in Publishers)
			{
				publisher.Publish(category, message2, application, module, methodName, additionalInfo);
			}
			if (s_traceLogOutput)
			{
				WriteTrace(category, message2, module, methodName);
			}
		}
		catch (Win32Exception exception)
		{
			PublishInternalException(exception);
			WriteTrace(LogCategory.Info, "Original message was: \r\n\t" + message, module, methodName);
		}
	}

	private static void Publish(ILogEntry logEntry)
	{
		if (!s_initialized)
		{
			InitializePublishers();
		}
		try
		{
			foreach (CultureInfo key in s_publishersByCulture.Keys)
			{
				string message = logEntry.ToString(key);
				foreach (ILoggerPublisher item in s_publishersByCulture[key])
				{
					item.Publish(logEntry.Category, message, logEntry.Context.Application, logEntry.Context.Module, logEntry.Context.Method, logEntry.AdditionalInfo);
				}
			}
		}
		catch (Win32Exception exception)
		{
			PublishInternalException(exception);
			try
			{
				WriteTrace(LogCategory.Info, "Original message was: \r\n\t" + logEntry.ToString(CultureInfo.InvariantCulture), logEntry.Context.Module, logEntry.Context.Method);
			}
			catch (Exception)
			{
			}
		}
		if (s_traceLogOutput)
		{
			try
			{
				WriteTrace(logEntry.Category, logEntry.ToString(CultureInfo.InvariantCulture), logEntry.Context.Module, logEntry.Context.Method);
			}
			catch (Exception)
			{
			}
		}
	}

	private static string GetCallingMethodString()
	{
		StackTrace stackTrace = new StackTrace(fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(2);
		MethodBase method = frame.GetMethod();
		return string.Format(CultureInfo.InvariantCulture, "{0}.{1}() in {2}:line {3}", method.DeclaringType.FullName, method.Name, Path.GetFileName(frame.GetFileName()), frame.GetFileLineNumber().ToString(CultureInfo.InvariantCulture));
	}

	private static string CreateMethodString(string fileName, long lineNumber)
	{
		return string.Format(CultureInfo.InvariantCulture, "{0}:line {1}", new object[2] { fileName, lineNumber });
	}

	private static string FormatMessage(string message, params object[] args)
	{
		try
		{
			return string.Format(CultureInfo.InvariantCulture, message, args);
		}
		catch (FormatException ex)
		{
			StringBuilder stringBuilder = new StringBuilder();
			foreach (object obj in args)
			{
				stringBuilder.AppendFormat("'{0}' ", obj.ToString());
			}
			return $"<FormatException: {ex.Message}>\nOriginal message: '{message}'\nArguments: ({stringBuilder.ToString()})";
		}
	}

	private static bool InitializePublishers()
	{
		ReadConfigSettings();
		if (s_publishers.Count == 0)
		{
			ILoggerPublisher loggerPublisher = new CfwLoggerPublisher();
			if (!loggerPublisher.InitializePublisher())
			{
				loggerPublisher = new EventLoggerPublisher();
				if (!loggerPublisher.InitializePublisher())
				{
					return false;
				}
			}
			loggerPublisher.Name = "Default";
			s_publishers.Add(loggerPublisher);
			CultureInfo key = ((loggerPublisher is INLSLoggerPublisher) ? ((INLSLoggerPublisher)loggerPublisher).TargetCulture : CultureInfo.InvariantCulture);
			if (!s_publishersByCulture.TryGetValue(key, out var value))
			{
				value = new List<ILoggerPublisher>();
				s_publishersByCulture.Add(key, value);
			}
			value.Add(loggerPublisher);
		}
		s_initialized = true;
		return true;
	}

	private static void ReadConfigSettings()
	{
		LoggerSettings loggerSettings = null;
		try
		{
			loggerSettings = (LoggerSettings)ConfigurationManager.GetSection("logger");
		}
		catch (ConfigurationException exception)
		{
			WriteTrace(exception, "Exception while reading app.config file", "Logger.cs", "ReadConfigSettings");
			return;
		}
		catch (InvalidCastException exception2)
		{
			WriteTrace(exception2, "Exception while casting LoggerSettings", "Logger.cs", "ReadConfigSettings");
			return;
		}
		if (loggerSettings == null)
		{
			return;
		}
		if (loggerSettings.Publishers != null && loggerSettings.Publishers.Count > 0)
		{
			foreach (PublisherSettings publisher in loggerSettings.Publishers)
			{
				try
				{
					ObjectHandle objectHandle = Activator.CreateInstance(publisher.AssemblyName, publisher.TypeName);
					if (objectHandle != null && objectHandle.Unwrap() is ILoggerPublisher loggerPublisher && loggerPublisher.InitializePublisher())
					{
						if (!string.IsNullOrEmpty(publisher.Name))
						{
							loggerPublisher.Name = publisher.Name;
						}
						loggerPublisher.LogCategoryFilter = publisher.LogCategoryFilter;
						s_publishers.Add(loggerPublisher);
						CultureInfo targetCulture = publisher.TargetCulture;
						if (loggerPublisher is INLSLoggerPublisher)
						{
							((INLSLoggerPublisher)loggerPublisher).TargetCulture = targetCulture;
						}
						if (!s_publishersByCulture.TryGetValue(targetCulture, out var value))
						{
							value = new List<ILoggerPublisher>();
							s_publishersByCulture.Add(targetCulture, value);
						}
						value.Add(loggerPublisher);
					}
				}
				catch (Exception exception3)
				{
					WriteTrace(exception3, "Exception while instantiating LoggerPublisher", "Logger.cs", "ReadConfigSettings()");
				}
			}
		}
		string traceFileName = loggerSettings.TraceFileName;
		if (!string.IsNullOrEmpty(traceFileName))
		{
			EtasTextWriterTraceListener listener = new EtasTextWriterTraceListener(traceFileName, "EtasTextWriterTraceListener", loggerSettings.NewTraceFile);
			Trace.AutoFlush = true;
			Trace.Listeners.Add(listener);
		}
	}
}
