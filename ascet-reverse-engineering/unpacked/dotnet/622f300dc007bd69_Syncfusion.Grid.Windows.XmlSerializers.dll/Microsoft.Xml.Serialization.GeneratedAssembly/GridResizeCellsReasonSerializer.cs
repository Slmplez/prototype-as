using System.Xml;
using System.Xml.Serialization;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public sealed class GridResizeCellsReasonSerializer : XmlSerializer1
{
	public override bool CanDeserialize(XmlReader xmlReader)
	{
		return xmlReader.IsStartElement("GridResizeCellsReason", "");
	}

	protected override void Serialize(object objectToSerialize, XmlSerializationWriter writer)
	{
		((XmlSerializationWriter1)writer).Write172_GridResizeCellsReason(objectToSerialize);
	}

	protected override object Deserialize(XmlSerializationReader reader)
	{
		return ((XmlSerializationReader1)reader).Read172_GridResizeCellsReason();
	}
}
