using System;
using System.Xml.Serialization;

namespace Syncfusion.XmlSerializersCreator;

public class SerialiserWrapper : XmlSerializer
{
	private XmlSerializationReader m_reader;

	private XmlSerializationWriter m_writer;

	public SerialiserWrapper(XmlSerializationReader reader, XmlSerializationWriter writer)
	{
		if (reader == null)
		{
			throw new ArgumentNullException("reader");
		}
		if (writer == null)
		{
			throw new ArgumentNullException("writer");
		}
		m_reader = reader;
		m_writer = writer;
	}

	protected override XmlSerializationReader CreateReader()
	{
		return m_reader;
	}

	protected override XmlSerializationWriter CreateWriter()
	{
		return m_writer;
	}

	protected override void Serialize(object o, XmlSerializationWriter writer)
	{
		((IXmlSerializationWriter)m_writer).WriteDataToXml(o);
	}

	protected override object Deserialize(XmlSerializationReader reader)
	{
		return ((IXmlSerializationReader)m_reader).ReadDataFromXml();
	}
}
