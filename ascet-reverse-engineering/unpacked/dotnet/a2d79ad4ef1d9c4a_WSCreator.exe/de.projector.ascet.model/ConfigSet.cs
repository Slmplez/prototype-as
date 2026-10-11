using System.Collections.Generic;
using System.Xml;

namespace de.projector.ascet.model;

public class ConfigSet : DBO
{
	public class Data : ConfigSet
	{
		public static Item.Configs<Data>.Creator _creator = (Context c, XmlElement root) => new Data(c, root);

		public Data(Context context, XmlElement el)
			: base(context, el)
		{
			foreach (XmlElement item in el.SelectNodes("DataEntry"))
			{
				XmlElement xmlElement2 = item["DataVariant"]["ComplexType"];
				if (xmlElement2 != null)
				{
					_complex.Add(context.oid(xmlElement2.GetAttribute("dataOID")));
				}
			}
		}
	}

	public class Impl : ConfigSet
	{
		public static Item.Configs<Impl>.Creator _creator = (Context c, XmlElement root) => new Impl(c, root);

		public Impl(Context context, XmlElement el)
			: base(context, el)
		{
			foreach (XmlElement item in el.SelectNodes("ImplementationEntry"))
			{
				XmlElement xmlElement2 = item["ImplementationVariant"]["ElementImplementation"];
				if (xmlElement2 != null)
				{
					XmlElement xmlElement3 = xmlElement2["ComplexImplementation"];
					if (xmlElement3 != null)
					{
						_complex.Add(context.oid(xmlElement3.GetAttribute("implementationOID")));
					}
				}
			}
		}
	}

	public readonly bool _isClassConfig;

	public readonly bool _isDefault;

	private HashSet<OID> _complex = new HashSet<OID>();

	public ConfigSet(Context context, XmlElement el)
		: base(context, el)
	{
		_isClassConfig = bool.Parse(el.GetAttribute("classConfig"));
		_isDefault = bool.Parse(el.GetAttribute("default"));
	}

	public void updateReferences(Context context)
	{
		foreach (OID item in _complex)
		{
			context._db.addReference(context, this, item);
		}
	}

	public XmlElement wsDesc(XmlDocument doc)
	{
		string tag = (_isClassConfig ? "class" : (_isDefault ? "default" : "config"));
		return base.wsDesc(doc, tag);
	}
}
