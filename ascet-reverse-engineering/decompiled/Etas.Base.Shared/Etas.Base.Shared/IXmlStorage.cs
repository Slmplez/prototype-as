using System.Xml.XPath;

namespace Etas.Base.Shared;

public interface IXmlStorage
{
	string XmlNodeTag { get; }

	void WriteXmlNode(IXPathNavigable node, IsolatedXmlDocument document);

	void ReadXmlNode(IXPathNavigable node);
}
