using System;
using System.Collections.Generic;
using System.Xml;

namespace de.projector.ascet.model;

public class Specification
{
	public class Method
	{
		private string _name;

		public Method(XmlElement el)
		{
			_name = el.GetAttribute("methodName");
		}

		public XmlElement wsDesc(XmlDocument doc)
		{
			XmlElement xmlElement = doc.CreateElement("method");
			xmlElement.SetAttribute("name", _name);
			return xmlElement;
		}

		public override int GetHashCode()
		{
			return _name.GetHashCode();
		}

		public override bool Equals(object obj)
		{
			if (!(obj is Method))
			{
				return false;
			}
			return _name.Equals(((Method)obj)._name);
		}
	}

	private static Dictionary<string, string> _typeTranslation = initTypeTranslation();

	private List<Method> _methods = new List<Method>();

	private string _type;

	private string _name;

	public readonly bool _isPublic;

	public Specification(XmlElement el, Code.Map archives)
	{
		_name = el.GetAttribute("name");
		_isPublic = "public".Equals(el.GetAttribute("public"));
		int index = ((el["TimeStamp"] != null) ? 1 : 0);
		XmlElement xmlElement = (XmlElement)el.ChildNodes.Item(index);
		string name = xmlElement.Name;
		_type = _typeTranslation[name];
		if ("table".Equals(_type))
		{
			_type = ((xmlElement["ConditionalTable"] != null) ? "conditionalTable" : "booleanTable");
		}
		if (_type == null)
		{
			throw new ArgumentException("type is null: " + name);
		}
		if (_type.Equals("esdl") || _type.Equals("conditionalTable") || _type.Equals("booleanTable"))
		{
			archives.archiveFor(null).Add(Code.CodeKey.ESDL._theKey);
		}
		else if (name.Equals("CCodeSpecification"))
		{
			bool flag = false;
			foreach (XmlElement item in xmlElement["CCode"].SelectNodes("CodeVariant"))
			{
				string attribute = item.GetAttribute("implementationName");
				archives.archiveFor(attribute).Add(Code.CodeKey.fromXML(item));
				if (flag)
				{
					continue;
				}
				foreach (XmlElement childNode in item["MethodBodies"].ChildNodes)
				{
					_methods.Add(new Method(childNode));
				}
				flag = true;
			}
		}
		XmlElement xmlElement3 = xmlElement["ESDLCode"];
		if (xmlElement3 == null)
		{
			return;
		}
		foreach (XmlElement childNode2 in xmlElement3["MethodBodies"].ChildNodes)
		{
			_methods.Add(new Method(childNode2));
		}
	}

	public XmlElement wsDesc(XmlDocument doc)
	{
		XmlElement xmlElement = doc.CreateElement("spec");
		xmlElement.SetAttribute("name", _name);
		xmlElement.SetAttribute("type", _type);
		foreach (Method method in _methods)
		{
			xmlElement.AppendChild(method.wsDesc(doc));
		}
		return xmlElement;
	}

	private static Dictionary<string, string> initTypeTranslation()
	{
		Dictionary<string, string> dictionary = new Dictionary<string, string>();
		dictionary["BlockDiagramSpecification"] = "blockDiagram";
		dictionary["TableSpecification"] = "table";
		dictionary["ESDLSpecification"] = "esdl";
		dictionary["CCodeSpecification"] = "cCode";
		dictionary["StateMachineSpecification"] = "stateMachine";
		dictionary["ProjectSpecification"] = "project";
		dictionary["AtomicSoftwareComponentSpecification"] = "atomicSoftwareComponent";
		dictionary["MethodInterfaceSpecification"] = "methodInterface";
		return dictionary;
	}
}
