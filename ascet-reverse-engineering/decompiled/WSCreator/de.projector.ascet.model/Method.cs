using System.Collections.Generic;
using System.Xml;

namespace de.projector.ascet.model;

public class Method : Declaration
{
	private static readonly List<Elem> _empty = new List<Elem>();

	private List<Elem> _args;

	private List<Elem> _locals;

	private Elem _return;

	public Method(Context context, XmlElement el)
		: base(context, el)
	{
		_locals = readElementList(context, el["Locals"]);
		_args = readElementList(context, el["Arguments"]);
		XmlElement xmlElement = el["Return"];
		if (xmlElement != null)
		{
			_return = new Elem(context, xmlElement);
		}
	}

	public void visitElements(Elem.Visitor visitor)
	{
		foreach (Elem arg in _args)
		{
			visitor(arg);
		}
		foreach (Elem local in _locals)
		{
			visitor(local);
		}
		if (_return != null)
		{
			visitor(_return);
		}
	}

	private static List<Elem> readElementList(Context context, XmlElement el)
	{
		if (el == null || el.ChildNodes.Count == 0)
		{
			return _empty;
		}
		List<Elem> list = new List<Elem>();
		foreach (XmlElement childNode in el.ChildNodes)
		{
			list.Add(new Elem(context, childNode));
		}
		return list;
	}
}
