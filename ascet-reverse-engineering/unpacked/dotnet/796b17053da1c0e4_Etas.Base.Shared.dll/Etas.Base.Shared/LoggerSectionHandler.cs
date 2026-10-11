using System;
using System.Configuration;
using System.Globalization;
using System.Xml;

namespace Etas.Base.Shared;

public class LoggerSectionHandler : IConfigurationSectionHandler
{
	private const string TRACEFILENAME = "traceFileName";

	private const string NEWTRACEFILE = "newFile";

	private const string PUBLISHER_NODENAME = "publisher";

	private const string PUBLISHER_NAME = "name";

	private const string PUBLISHER_ASSEMBLY = "assembly";

	private const string PUBLISHER_TYPE = "type";

	private const string PUBLISHER_LOGCATEGORYFILTER = "logCategoryFilter";

	private const string PUBLISHER_TARGETCULTURE = "targetCulture";

	private const string PUBLISHER_UICULTURE = "CURRENT_UI";

	public object Create(object parent, object configContext, XmlNode section)
	{
		LoggerSettings loggerSettings = new LoggerSettings();
		try
		{
			if (section == null)
			{
				return loggerSettings;
			}
			XmlAttributeCollection attributes = section.Attributes;
			XmlNode xmlNode = attributes.RemoveNamedItem("traceFileName");
			if (xmlNode != null)
			{
				loggerSettings.TraceFileName = xmlNode.Value;
			}
			xmlNode = attributes.RemoveNamedItem("newFile");
			if (xmlNode != null)
			{
				loggerSettings.NewTraceFile = Convert.ToBoolean(xmlNode.Value);
			}
			foreach (XmlNode childNode in section.ChildNodes)
			{
				if (!(childNode.Name == "publisher"))
				{
					continue;
				}
				PublisherSettings publisherSettings = new PublisherSettings();
				attributes = childNode.Attributes;
				xmlNode = attributes.RemoveNamedItem("name");
				if (xmlNode != null)
				{
					publisherSettings.Name = xmlNode.Value;
				}
				xmlNode = attributes.RemoveNamedItem("assembly");
				if (xmlNode != null)
				{
					publisherSettings.AssemblyName = xmlNode.Value;
				}
				xmlNode = attributes.RemoveNamedItem("type");
				if (xmlNode != null)
				{
					publisherSettings.TypeName = xmlNode.Value;
				}
				xmlNode = attributes.RemoveNamedItem("logCategoryFilter");
				if (xmlNode != null)
				{
					uint logCategoryFilter = Convert.ToUInt16(xmlNode.Value);
					publisherSettings.LogCategoryFilter = (LogCategory)logCategoryFilter;
				}
				xmlNode = attributes.RemoveNamedItem("targetCulture");
				if (xmlNode != null)
				{
					try
					{
						if ("CURRENT_UI".CompareTo(xmlNode.Value) == 0)
						{
							publisherSettings.TargetCulture = CultureInfo.CurrentUICulture;
						}
						else
						{
							publisherSettings.TargetCulture = CultureInfo.GetCultureInfo(xmlNode.Value);
						}
					}
					catch (Exception)
					{
						publisherSettings.TargetCulture = CultureInfo.InvariantCulture;
					}
				}
				for (int i = 0; i < attributes.Count; i++)
				{
					publisherSettings.AddOtherAttributes(attributes.Item(i).Name, attributes.Item(i).Value);
				}
				loggerSettings.Publishers.Add(publisherSettings);
			}
			loggerSettings.Publishers.TrimToSize();
		}
		catch (Exception)
		{
		}
		return loggerSettings;
	}
}
