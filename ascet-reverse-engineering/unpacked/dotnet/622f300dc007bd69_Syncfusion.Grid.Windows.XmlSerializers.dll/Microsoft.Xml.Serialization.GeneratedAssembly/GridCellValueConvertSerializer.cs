using System.Xml;
using System.Xml.Serialization;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public sealed class GridCellValueConvertSerializer : XmlSerializer1
{
	public override bool CanDeserialize(XmlReader xmlReader)
	{
		return xmlReader.IsStartElement("GridCellValueConvert", "");
	}

	protected override void Serialize(object objectToSerialize, XmlSerializationWriter writer)
	{
		((XmlSerializationWriter1)writer).Write200_GridCellValueConvert(objectToSerialize);
	}

	protected override object Deserialize(XmlSerializationReader reader)
	{
		return ((XmlSerializationReader1)reader).Read200_GridCellValueConvert();
	}
}
