using System;
using System.Collections.Specialized;
using System.Globalization;
using System.Resources;
using System.Text;

namespace Etas.Base.Shared;

public class ResourceEntry : ILogEntry
{
	private readonly ResourceManager m_ResourceManager;

	private readonly string m_MessageId;

	private readonly object[] m_Args;

	public ILogContext Context { get; protected set; }

	public LogCategory Category { get; protected set; }

	public NameValueCollection AdditionalInfo { get; set; }

	public ResourceEntry(ResourceManager resourceManager, LogCategory category, string messageId)
		: this(resourceManager, category, messageId, LogContext.Emtpy)
	{
	}

	public ResourceEntry(ResourceManager resourceManager, LogCategory category, string messageId, params object[] args)
		: this(resourceManager, category, messageId)
	{
		m_Args = args;
	}

	public ResourceEntry(ResourceManager resourceManager, LogCategory category, string messageId, ILogContext context)
	{
		m_ResourceManager = resourceManager;
		Category = category;
		m_MessageId = messageId;
		Context = context;
	}

	public ResourceEntry(ResourceManager resourceManager, LogCategory category, string messageId, ILogContext context, params object[] args)
		: this(resourceManager, category, messageId, context)
	{
		m_Args = args;
	}

	public string ToString(CultureInfo formatProvider)
	{
		return GetMessage(formatProvider);
	}

	private string GetMessage(CultureInfo cultureInfo)
	{
		try
		{
			string text = m_ResourceManager.GetString(m_MessageId, cultureInfo);
			if (string.IsNullOrEmpty(text))
			{
				return m_MessageId;
			}
			try
			{
				return (m_Args != null) ? string.Format(cultureInfo.IsNeutralCulture ? CultureInfo.InvariantCulture : cultureInfo, text, m_Args) : text;
			}
			catch (FormatException ex)
			{
				if (m_Args != null)
				{
					StringBuilder stringBuilder = new StringBuilder();
					object[] args = m_Args;
					foreach (object obj in args)
					{
						stringBuilder.AppendFormat(CultureInfo.InvariantCulture, "'{0}' ", new object[1] { obj });
					}
					return $"<FormatException: {ex.Message}>\nOriginal message: '{text}'\nArguments: ({stringBuilder})";
				}
				return text;
			}
		}
		catch (Exception)
		{
			return m_MessageId;
		}
	}
}
