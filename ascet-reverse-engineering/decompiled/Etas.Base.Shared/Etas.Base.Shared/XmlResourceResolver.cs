using System;
using System.Globalization;
using System.IO;
using System.Reflection;
using System.Xml;

namespace Etas.Base.Shared;

internal class XmlResourceResolver : XmlUrlResolver
{
	public override object GetEntity(Uri absoluteUri, string role, Type ofObjectToReturn)
	{
		if (null == absoluteUri)
		{
			throw new ArgumentNullException("absoluteUri");
		}
		Stream result = null;
		string originalString = absoluteUri.OriginalString;
		int num = originalString.LastIndexOf("/") + 1;
		int num2 = originalString.IndexOf('?');
		Console.WriteLine("Attempting to retrieve: {0}", absoluteUri);
		string scheme;
		if ((scheme = absoluteUri.Scheme) != null && scheme == "res")
		{
			Assembly assembly = null;
			string text = originalString.Substring(num, num2 - num);
			try
			{
				assembly = ((string.Compare(Assembly.GetEntryAssembly().GetName().Name, text, ignoreCase: true, CultureInfo.CurrentCulture) != 0) ? Assembly.Load(AssemblyName.GetAssemblyName(text + ".dll")) : Assembly.GetEntryAssembly());
				string name = text + "." + absoluteUri.Query.Substring(absoluteUri.Query.IndexOf('?') + 1);
				result = assembly.GetManifestResourceStream(name);
			}
			catch (Exception ex)
			{
				Console.Out.WriteLine(ex.Message);
			}
			return result;
		}
		return (Stream)base.GetEntity(absoluteUri, role, ofObjectToReturn);
	}
}
