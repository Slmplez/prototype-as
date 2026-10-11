using System.Xml;
using System.Xml.Serialization;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public sealed class GridStyleInfoStoreSerializer : XmlSerializer1
{
	public override bool CanDeserialize(XmlReader xmlReader)
	{
		return xmlReader.IsStartElement("GridStyleInfoStore", "");
	}

	protected override void Serialize(object objectToSerialize, XmlSerializationWriter writer)
	{
		((XmlSerializationWriter1)writer).Write285_GridStyleInfoStore(objectToSerialize);
	}

	protected override object Deserialize(XmlSerializationReader reader)
	{
		return ((XmlSerializationReader1)reader).Read285_GridStyleInfoStore();
	}
}
