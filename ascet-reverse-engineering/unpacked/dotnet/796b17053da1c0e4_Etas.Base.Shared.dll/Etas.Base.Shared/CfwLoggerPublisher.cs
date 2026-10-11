#define TRACE
using System;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Security;
using System.Text;

namespace Etas.Base.Shared;

public class CfwLoggerPublisher : ILoggerPublisher
{
	private readonly string TEXT_SEPARATOR = "*********************************************";

	private readonly string NEWLINE = Environment.NewLine;

	private object _cfwLogger;

	private MethodInfo _checkFiltersMethod;

	private MethodInfo _writeEntryMethod;

	private LogCategory _logCategoryFilter = LogCategory.TraceLoop;

	private string _name;

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

	public CfwLoggerPublisher()
	{
		Name = GetType().ToString();
		LogCategoryFilter = LogCategory.TraceLoop;
	}

	public bool InitializePublisher()
	{
		return InitializeCfwLogger();
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
		if (_cfwLogger == null || category > LogCategoryFilter)
		{
			return;
		}
		StringBuilder stringBuilder = new StringBuilder();
		if (message != null && message.Length != 0)
		{
			stringBuilder.AppendFormat("{0}{1}", message, NEWLINE);
		}
		if (exception != null)
		{
			stringBuilder.AppendFormat("{0}{1}", exception.Message, NEWLINE);
		}
		if (additionalInfo != null)
		{
			stringBuilder.AppendFormat("{0}Additional Information: {0}{1}", NEWLINE, TEXT_SEPARATOR);
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
					TEXT_SEPARATOR
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
					if (!(propertyInfo.Name != "InnerException") || !(propertyInfo.Name != "StackTrace") || !(propertyInfo.Name != "Data") || propertyInfo.GetValue(ex, null) == null)
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
		string methodName2 = SecurityElement.Escape(methodName);
		WriteEntry((byte)category, stringBuilder.ToString(), module, methodName2);
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
		if (_cfwLogger == null || category > LogCategoryFilter)
		{
			return;
		}
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(message);
		if (additionalInfo != null && additionalInfo.Count != 0)
		{
			stringBuilder.AppendFormat("{0}{1}{0}Additional Info:", NEWLINE, TEXT_SEPARATOR);
			foreach (string item in additionalInfo)
			{
				stringBuilder.AppendFormat("{0}{1}: {2}", NEWLINE, item, additionalInfo.Get(item));
			}
		}
		string methodName2 = SecurityElement.Escape(methodName);
		WriteEntry((byte)category, message, module, methodName2);
	}

	private bool InitializeCfwLogger()
	{
		bool result = false;
		try
		{
			Assembly assembly = null;
			try
			{
				assembly = Assembly.LoadWithPartialName("Cfw.Logging.interop");
			}
			catch (FileNotFoundException ex)
			{
				Trace.WriteLine(string.Format(CultureInfo.InvariantCulture, "Assembly 'Cfw.Logging.interop.dll' not found\n{0}", new object[1] { ex.ToString() }));
			}
			if (null == assembly)
			{
				return false;
			}
			_cfwLogger = assembly.CreateInstance("Cfw.Logging.CLoggerClass");
			if (_cfwLogger == null)
			{
				return false;
			}
			_checkFiltersMethod = _cfwLogger.GetType().GetMethod("CheckFilters");
			if (null == _checkFiltersMethod)
			{
				return false;
			}
			_writeEntryMethod = _cfwLogger.GetType().GetMethod("WriteEntry");
			if (null == _writeEntryMethod)
			{
				return false;
			}
		}
		catch (COMException ex2)
		{
			Trace.WriteLine(string.Format(CultureInfo.InvariantCulture, "The CHAP log client failed to create the CHAP logger. The logger will be unusable. The error message was \"{0}\"; the HRESULT was 0x{1:x8}", new object[2] { ex2.Message, ex2.ErrorCode }));
		}
		catch (Exception ex3)
		{
			Trace.WriteLine(string.Format(CultureInfo.InvariantCulture, "The CHAP log client failed to create the CHAP logger. The logger will be unusable. The error message was \"{0}\"", new object[1] { ex3.Message }));
		}
		if (_cfwLogger != null)
		{
			try
			{
				MethodInfo method = _cfwLogger.GetType().GetMethod("Initialize");
				if (null == method)
				{
					return false;
				}
				method.Invoke(_cfwLogger, null);
				result = true;
			}
			catch (COMException ex4)
			{
				Trace.WriteLine(string.Format(CultureInfo.InvariantCulture, "The CHAP log client failed to initialize the CHAP logger (the HRESULT was 0x{0:x8}). The logger will be unusable.", new object[1] { ex4.ErrorCode }));
			}
			catch (TargetInvocationException ex5)
			{
				Trace.WriteLine(string.Format(CultureInfo.InvariantCulture, "The CHAP log client failed to initialize the CHAP logger. Error message was \"{0}\"; inner exception \"{1}\". The logger will be unusable.", new object[2]
				{
					ex5.Message,
					(ex5.InnerException == null) ? "(not available)" : ex5.InnerException.Message
				}));
			}
		}
		return result;
	}

	private void WriteEntry(byte category, string message, string module, string methodName)
	{
		try
		{
			int num = 0;
			object[] parameters = new object[2] { category, module };
			if ((int)_checkFiltersMethod.Invoke(_cfwLogger, parameters) != 0)
			{
				uint num2 = NativeMethods.CoGetCurrentProcess();
				uint num3 = 0u;
				object[] parameters2 = new object[6] { module, num2, methodName, num3, category, message };
				_writeEntryMethod.Invoke(_cfwLogger, parameters2);
			}
		}
		catch (COMException exception)
		{
			Logger.WriteTrace(exception, "Caught COMException in Cfw.Logger", "CfwLoggerPublisher", "WriteEntry()");
		}
		catch (TargetInvocationException exception2)
		{
			Logger.WriteTrace(exception2, "Caught TargetInvocationException in Cfw.Logger", "CfwLoggerPublisher", "WriteEntry()");
		}
	}
}
