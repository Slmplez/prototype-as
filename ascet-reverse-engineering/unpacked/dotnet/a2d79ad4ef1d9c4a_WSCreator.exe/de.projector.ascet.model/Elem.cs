using System.Xml;

namespace de.projector.ascet.model;

public class Elem : Declaration
{
	public delegate void Visitor(Elem e);

	private OID _type;

	public Elem(Context context, XmlElement el)
		: base(context, el)
	{
		XmlElement xmlElement = el["ElementAttributes"];
		XmlElement xmlElement2;
		if ((xmlElement2 = xmlElement["ScalarType"]) != null)
		{
			XmlElement xmlElement3 = xmlElement2["EnumerationAttributes"];
			if (xmlElement3 != null)
			{
				_type = context.oid(xmlElement3.GetAttribute("enumerationOID"));
			}
		}
		else if ((xmlElement2 = xmlElement["ComplexType"]) != null)
		{
			XmlElement xmlElement4 = xmlElement2["ComplexAttributes"];
			if (xmlElement4 == null)
			{
				xmlElement4 = xmlElement2["RecordAttributes"];
			}
			_type = context.oid(xmlElement4.GetAttribute("componentID"));
		}
	}

	public OID getType()
	{
		return _type;
	}
}
