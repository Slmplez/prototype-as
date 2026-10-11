using System;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Resources;

namespace Etas.Base.Shared;

public sealed class ResourceLogger
{
	private readonly ResourceManager m_ResourceManger;

	public ResourceLogger(ResourceManager resourceManager)
	{
		m_ResourceManger = resourceManager;
	}

	public ResourceLogger(Type resourceType)
	{
		m_ResourceManger = new ResourceManager(resourceType);
	}

	public void LogMessage(LogCategory category, string messageId)
	{
		Logger.LogMessage(new ResourceEntry(m_ResourceManger, category, messageId, new LogContext(AppDomain.CurrentDomain.FriendlyName, Assembly.GetCallingAssembly().GetName().Name, GetCallingMethodString())));
	}

	public void LogMessage(LogCategory category, string messageId, params object[] args)
	{
		Logger.LogMessage(new ResourceEntry(m_ResourceManger, category, messageId, new LogContext(AppDomain.CurrentDomain.FriendlyName, Assembly.GetCallingAssembly().GetName().Name, GetCallingMethodString()), args));
	}

	public void LogMessage(LogCategory category, string messageId, ILogContext context)
	{
		Logger.LogMessage(new ResourceEntry(m_ResourceManger, category, messageId, context));
	}

	public void LogMessage(LogCategory category, string messageId, ILogContext context, params object[] args)
	{
		Logger.LogMessage(new ResourceEntry(m_ResourceManger, category, messageId, context, args));
	}

	private static string GetCallingMethodString()
	{
		StackTrace stackTrace = new StackTrace(fNeedFileInfo: true);
		StackFrame frame = stackTrace.GetFrame(2);
		MethodBase method = frame.GetMethod();
		return string.Format(CultureInfo.InvariantCulture, "{0}.{1}() in {2}:line {3}", method.DeclaringType.FullName, method.Name, Path.GetFileName(frame.GetFileName()), frame.GetFileLineNumber());
	}
}
