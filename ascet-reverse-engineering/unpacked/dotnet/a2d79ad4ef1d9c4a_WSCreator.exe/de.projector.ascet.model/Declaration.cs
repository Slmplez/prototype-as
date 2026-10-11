using System.Xml;

namespace de.projector.ascet.model;

public abstract class Declaration
{
	public readonly OID _oid;

	public readonly string _name;

	public Declaration(Context context, XmlElement el)
	{
		_oid = context.oid(el.GetAttribute("oid"));
		_name = el.GetAttribute("name");
	}
}
