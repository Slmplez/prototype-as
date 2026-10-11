using System;
using System.Collections.Generic;
using System.Reflection;
using System.Windows.Forms;
using System.Xml;

namespace ETAS.StandardDialogs;

internal static class SupportInformation
{
	private class SupportContactInformation
	{
		public string Location;

		public string Phone;

		public string Email;

		public SupportContactInformation(string Location, string Phone, string Email)
		{
			this.Location = Location;
			this.Phone = Phone;
			this.Email = Email;
		}
	}

	private static ELanguageType s_Language;

	private static EApplicationDialogType s_ApplicationType;

	private static XmlElement s_SupportXmlRootElement;

	public static ELanguageType Language
	{
		get
		{
			return s_Language;
		}
		set
		{
			s_Language = value;
		}
	}

	public static EApplicationDialogType ApplicationType
	{
		get
		{
			return s_ApplicationType;
		}
		set
		{
			s_ApplicationType = value;
		}
	}

	public static Location Location_Europe => GetLocation("Europe");

	public static Location Location_FrBeLux => GetLocation("FrBeLux");

	public static Location Location_Japan => GetLocation("Japan");

	public static Location Location_Korea => GetLocation("Korea");

	public static Location Location_GreatBritain => GetLocation("GreatBritain");

	public static Location Location_China => GetLocation("China");

	public static Location Location_USA => GetLocation("USA");

	public static Location Location_India => GetLocation("India");

	private static void ReadXmlFile()
	{
		XmlDocument xmlDocument = new XmlDocument();
		xmlDocument.Load(Assembly.GetExecutingAssembly().GetManifestResourceStream("ETAS.StandardDialogs.Resources.support.xml"));
		s_SupportXmlRootElement = xmlDocument.DocumentElement;
		if (s_SupportXmlRootElement == null)
		{
			throw new NullReferenceException("The embedded resource file 'support.xml' couldn't be loaded.");
		}
	}

	private static Location GetLocation(string specifiedLocation)
	{
		List<SupportContactInformation> infoFromXML = GetInfoFromXML();
		string phone = string.Empty;
		string email = string.Empty;
		foreach (SupportContactInformation item in infoFromXML)
		{
			if (item.Location == specifiedLocation)
			{
				phone = item.Phone;
				email = item.Email;
			}
		}
		return new Location(phone, email);
	}

	private static List<SupportContactInformation> GetInfoFromXML()
	{
		try
		{
			XmlDocument xmlDocument = new XmlDocument();
			xmlDocument.Load(Assembly.GetExecutingAssembly().GetManifestResourceStream("ETAS.StandardDialogs.Resources.SupportInfo.xml"));
			s_SupportXmlRootElement = xmlDocument.DocumentElement;
			if (s_SupportXmlRootElement == null)
			{
				throw new NullReferenceException("The embedded resource file 'support.xml' couldn't be loaded.");
			}
			XmlNodeList xmlNodeList = xmlDocument.SelectNodes(string.Concat("//Subsidiary[./IncludedInStdDlgs=1]/SupportInfo/Product[ProductName='", s_ApplicationType, "']"));
			List<SupportContactInformation> list = new List<SupportContactInformation>();
			int num = 0;
			foreach (XmlNode item in xmlNodeList)
			{
				_ = item;
				list.Add(new SupportContactInformation(xmlNodeList[num].ParentNode.ParentNode["SDLocation"].InnerText, xmlNodeList[num]["SupportContactPhone"].InnerText, xmlNodeList[num]["SupportContactEmail"].InnerText));
				num++;
			}
			return list;
		}
		catch (Exception ex)
		{
			MessageBox.Show("Error reading XML file SupportInfo.xml " + ex.ToString());
			return null;
		}
	}
}
