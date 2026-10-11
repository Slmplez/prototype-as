using System.Xml;
using System.Xml.Serialization;

namespace Microsoft.Xml.Serialization.GeneratedAssembly;

public sealed class GridProgressBarInfoStoreSerializer : XmlSerializer1
{
	public override bool CanDeserialize(XmlReader xmlReader)
	{
		return xmlReader.IsStartElement("GridProgressBarInfoStore", "");
	}

	protected override void Serialize(object objectToSerialize, XmlSerializationWriter writer)
	{
		((XmlSerializationWriter1)writer).Write282_GridProgressBarInfoStore(objectToSerialize);
	}

	protected override object Deserialize(XmlSerializationReader reader)
	{
		return ((XmlSerializationReader1)reader).Read282_GridProgressBarInfoStore();
	}
}
