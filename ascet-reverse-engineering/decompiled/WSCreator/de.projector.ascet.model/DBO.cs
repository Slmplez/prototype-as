using System.Collections.Generic;
using System.Xml;

namespace de.projector.ascet.model;

public abstract class DBO
{
	public class Reference<T>
	{
		public readonly OID _oid;

		public Reference(Context context, string oid)
		{
			_oid = context.oid(oid);
		}
	}

	protected string _baseName;

	public readonly OID _oid;

	public readonly string _name;

	private readonly List<DBO> _referencedBy = new List<DBO>();

	public DBO(Context context, XmlElement el)
		: this(context, context.oid(el.GetAttribute("OID")), el.GetAttribute("name"))
	{
	}

	public DBO(Context context, OID oid, string name)
	{
		_oid = oid;
		_name = name;
		if (oid != null)
		{
			context._db.register(context, this);
		}
	}

	public void addReference(DBO dbo)
	{
		_referencedBy.Add(dbo);
	}

	public virtual XmlElement wsDesc(XmlDocument doc, string tag)
	{
		XmlElement xmlElement = doc.CreateElement(tag);
		xmlElement.SetAttribute("OID", _oid.ToString());
		if (_name != null)
		{
			xmlElement.SetAttribute("name", _name);
		}
		if (_referencedBy.Count > 0)
		{
			_referencedBy.Sort((DBO a, DBO b) => a._oid.CompareTo(b._oid));
			XmlElement xmlElement2 = doc.CreateElement("referenced");
			foreach (DBO item in _referencedBy)
			{
				XmlElement xmlElement3 = doc.CreateElement("by");
				xmlElement3.SetAttribute("oid", item._oid.ToString());
				xmlElement2.AppendChild(xmlElement3);
			}
			xmlElement.AppendChild(xmlElement2);
		}
		return xmlElement;
	}

	public static XmlElement getTop(XmlElement root)
	{
		return (XmlElement)root.ChildNodes.Item(0);
	}
}
