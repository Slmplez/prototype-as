using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml;

namespace de.projector.ascet.model;

public class Code
{
	public abstract class CodeKey
	{
		public class ESDL : CodeKey
		{
			public static readonly ESDL _theKey = new ESDL();

			private ESDL()
			{
			}

			public override XmlElement wsDesc(XmlDocument doc)
			{
				return doc.CreateElement("esdlKey");
			}
		}

		public class DefaultC : CodeKey
		{
			public static readonly DefaultC _theKey = new DefaultC();

			private DefaultC()
			{
			}

			public override XmlElement wsDesc(XmlDocument doc)
			{
				return doc.CreateElement("defaultCKey");
			}
		}

		public class Target : CodeKey
		{
			private string _target;

			private string _generator;

			public Target(string target, string generator)
			{
				_target = target;
				_generator = generator;
			}

			public override XmlElement wsDesc(XmlDocument doc)
			{
				XmlElement xmlElement = doc.CreateElement("codeKey");
				xmlElement.SetAttribute("target", _target);
				xmlElement.SetAttribute("generator", _generator);
				return xmlElement;
			}

			public override bool Equals(object obj)
			{
				if (!(obj is Target))
				{
					return false;
				}
				Target target = (Target)obj;
				if (_target.Equals(target._target))
				{
					return _generator.Equals(target._generator);
				}
				return false;
			}

			public override int GetHashCode()
			{
				return _target.GetHashCode() + _generator.GetHashCode();
			}
		}

		public static CodeKey fromXML(XmlElement el)
		{
			string attribute = el.GetAttribute("target");
			string attribute2 = el.GetAttribute("generator");
			if ("undefined".Equals(attribute2))
			{
				if ("undefined".Equals(attribute))
				{
					return ESDL._theKey;
				}
				if ("Default".Equals(attribute))
				{
					return DefaultC._theKey;
				}
			}
			return new Target(attribute, attribute2);
		}

		public abstract XmlElement wsDesc(XmlDocument doc);
	}

	public class Archive : HashSet<CodeKey>
	{
		public XmlElement wsDesc(XmlDocument doc, string impl)
		{
			XmlElement xmlElement = doc.CreateElement("codeArchive");
			if (impl != null)
			{
				xmlElement.SetAttribute("impl", impl.ToString());
			}
			using Enumerator enumerator = GetEnumerator();
			while (enumerator.MoveNext())
			{
				CodeKey current = enumerator.Current;
				xmlElement.AppendChild(current.wsDesc(doc));
			}
			return xmlElement;
		}
	}

	public class Map : Dictionary<string, Archive>
	{
		public const string _noImpl = "<no impl>";

		public XmlElement wsDesc(XmlDocument doc)
		{
			XmlElement xmlElement = doc.CreateElement("code");
			string[] array = base.Keys.ToArray();
			Array.Sort(array, delegate(string a, string b)
			{
				if (a == "<no impl>")
				{
					if (!(b == "<no impl>"))
					{
						return -1;
					}
					return 0;
				}
				return (b == "<no impl>") ? 1 : a.CompareTo(b);
			});
			string[] array2 = array;
			foreach (string text in array2)
			{
				xmlElement.AppendChild(base[text].wsDesc(doc, (text == "<no impl>") ? null : text));
			}
			return xmlElement;
		}

		public Archive archiveFor(string impl)
		{
			if (impl == null || impl.Length == 0)
			{
				impl = "<no impl>";
			}
			if (!ContainsKey(impl))
			{
				return base[impl] = new Archive();
			}
			return base[impl];
		}

		private void TryGetValue(string impl, Archive ret)
		{
			throw new NotImplementedException();
		}
	}
}
