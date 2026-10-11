using System.Collections.Generic;
using System.Xml;
using de.kandid.io;

namespace de.projector.ascet.model;

public class Item : TreeItem
{
	public delegate void Visitor(Item item);

	private class Experiment : DBO
	{
		public Experiment(Context context, XmlElement el)
			: base(context, context.oid(el.GetAttribute("ID")), el.GetAttribute("Name"))
		{
		}
	}

	public class Configs<T> where T : ConfigSet
	{
		public delegate T Creator(Context context, XmlElement root);

		private T _class;

		private T _default;

		private List<T> _normal = new List<T>();

		public Configs(Context context, XmlElement el, string tag, Creator creator)
		{
			foreach (XmlElement item in el.SelectNodes(tag))
			{
				T val = creator(context, item);
				if (val._isClassConfig)
				{
					_class = val;
				}
				else if (val._isDefault)
				{
					_default = val;
				}
				else
				{
					_normal.Add(val);
				}
			}
		}

		public XmlElement wsDesc(XmlDocument doc, string tag)
		{
			XmlElement xmlElement = doc.CreateElement(tag);
			if (_class != null)
			{
				xmlElement.AppendChild(_class.wsDesc(doc, "class"));
			}
			if (_default != null)
			{
				xmlElement.AppendChild(_default.wsDesc(doc, "default"));
			}
			foreach (T item in _normal)
			{
				T current = item;
				xmlElement.AppendChild(current.wsDesc(doc, "config"));
			}
			return xmlElement;
		}

		public void updateReferences(Context context)
		{
			if (_class != null)
			{
				_class.updateReferences(context);
			}
			if (_default != null)
			{
				_default.updateReferences(context);
			}
			foreach (T item in _normal)
			{
				T current = item;
				current.updateReferences(context);
			}
		}
	}

	public class WithSpec : Item
	{
		private static readonly HashSet<string> _validTags = new HashSet<string>(new string[2] { "Component", "AtomicSoftwareComponent" });

		private bool _hasLayout;

		private List<Specification> _publicSpecs = new List<Specification>();

		private List<Specification> _privateSpecs = new List<Specification>();

		private List<Experiment> _experiments;

		private Configs<ConfigSet.Impl> _impls;

		private Configs<ConfigSet.Data> _datas;

		private Project _defaultProject;

		private Code.Map _codeArchives = new Code.Map();

		private List<Elem> _elements;

		private List<Method> _methods;

		public WithSpec(Context context, XmlElement el, WithSpec parent, Types types, string baseName)
			: base(context, el)
		{
			WithSpec withSpec = this;
			setParent(parent);
			XmlElement xmlElement = el["Elements"];
			if (xmlElement != null)
			{
				_elements = new List<Elem>();
				foreach (XmlElement childNode in xmlElement.ChildNodes)
				{
					_elements.Add(new Elem(context, childNode));
				}
			}
			XmlElement xmlElement2 = el["MethodSignatures"];
			if (xmlElement2 != null)
			{
				_methods = new List<Method>();
				foreach (XmlElement childNode2 in xmlElement2.ChildNodes)
				{
					_methods.Add(new Method(context, childNode2));
				}
			}
			types._specification.read(baseName, ext(), delegate(XmlElement specs)
			{
				_hasLayout = specs["Layout"] != null;
				foreach (XmlElement item in specs.SelectNodes("Specification"))
				{
					Specification specification = new Specification(item, _codeArchives);
					(specification._isPublic ? _publicSpecs : _privateSpecs).Add(specification);
				}
				processSpecs(specs);
			});
			types._implementation.read(baseName, ext(), delegate(XmlElement impls)
			{
				withSpec._impls = new Configs<ConfigSet.Impl>(context, impls, "ImplementationSet", ConfigSet.Impl._creator);
			});
			types._data.read(baseName, ext(), delegate(XmlElement datas)
			{
				withSpec._datas = new Configs<ConfigSet.Data>(context, datas, "DataSet", ConfigSet.Data._creator);
			});
			if (parent == null && types._src.exists(new File(baseName + ".main.dp.amd")))
			{
				types._main.read(baseName, "dp.amd", delegate(XmlElement dp)
				{
					withSpec._defaultProject = new Project(context, DBO.getTop(dp), withSpec, types, baseName);
				});
			}
			if (!types._experiments.exists(baseName, ext()))
			{
				return;
			}
			types._experiments.read(baseName, ext(), delegate(XmlElement exps)
			{
				withSpec._experiments = new List<Experiment>();
				foreach (XmlElement item2 in exps.SelectNodes("Experiment"))
				{
					withSpec._experiments.Add(new Experiment(context, item2));
				}
			});
		}

		public override XmlElement wsDesc(XmlDocument doc)
		{
			return wsDesc(doc, "itemWithSpec");
		}

		public override XmlElement wsDesc(XmlDocument doc, string tag)
		{
			XmlElement xmlElement = base.wsDesc(doc, tag);
			xmlElement.SetAttribute("hasLayout", _hasLayout ? "true" : "false");
			XmlElement xmlElement2 = doc.CreateElement("publicSpecs");
			foreach (Specification publicSpec in _publicSpecs)
			{
				xmlElement2.AppendChild(publicSpec.wsDesc(doc));
			}
			xmlElement.AppendChild(xmlElement2);
			if (_privateSpecs.Count > 0)
			{
				XmlElement xmlElement3 = doc.CreateElement("privateSpecs");
				foreach (Specification privateSpec in _privateSpecs)
				{
					xmlElement3.AppendChild(privateSpec.wsDesc(doc));
				}
				xmlElement.AppendChild(xmlElement3);
			}
			xmlElement.AppendChild(_impls.wsDesc(doc, "implementations"));
			xmlElement.AppendChild(_datas.wsDesc(doc, "datas"));
			if (_defaultProject != null)
			{
				xmlElement.AppendChild(_defaultProject.wsDesc(doc, "defaultProject"));
			}
			if (_codeArchives.Count > 0)
			{
				xmlElement.AppendChild(_codeArchives.wsDesc(doc));
			}
			if (_experiments != null)
			{
				XmlElement xmlElement4 = doc.CreateElement("experiments");
				foreach (Experiment experiment in _experiments)
				{
					xmlElement4.AppendChild(experiment.wsDesc(doc, "experiment"));
				}
				xmlElement.AppendChild(xmlElement4);
			}
			return xmlElement;
		}

		public virtual string ext()
		{
			return "amd";
		}

		public override void visitElements(Elem.Visitor visitor)
		{
			foreach (Method method in _methods)
			{
				method.visitElements(visitor);
			}
			foreach (Elem element in _elements)
			{
				visitor(element);
			}
		}

		public override void updateReferences(Context context)
		{
			visitElements(delegate(Elem e)
			{
				context._db.addReference(context, this, e.getType());
			});
			_datas.updateReferences(context);
			_impls.updateReferences(context);
			if (_defaultProject != null)
			{
				_defaultProject.updateReferences(context);
			}
		}

		public new static WithSpec fromXML(Context context, XmlElement el, Types types, string baseName)
		{
			if (el.Name.Equals("GenericComponent"))
			{
				return new Generic(context, el, null, types, baseName);
			}
			if (!_validTags.Contains(el.Name))
			{
				return null;
			}
			if (el.GetAttribute("componentType").Equals("ASCET_Project"))
			{
				return new Project(context, el, null, types, baseName);
			}
			return new WithSpec(context, el, null, types, baseName);
		}

		protected virtual void setParent(WithSpec parent)
		{
		}

		protected virtual void processSpecs(XmlElement specs)
		{
		}
	}

	public class Generic : WithSpec
	{
		private bool _hasFileList;

		public Generic(Context context, XmlElement el, WithSpec parent, Types types, string baseName)
			: base(context, el, parent, types, baseName)
		{
		}

		protected override void processSpecs(XmlElement specs)
		{
			XmlElement xmlElement = specs["FileListSpecification"];
			_hasFileList = false;
			if (xmlElement != null && xmlElement.SelectNodes("File").Count != 0)
			{
				_hasFileList = true;
			}
		}

		public override XmlElement wsDesc(XmlDocument doc)
		{
			XmlElement xmlElement = wsDesc(doc, "genericComponent");
			xmlElement.SetAttribute("hasFileList", _hasFileList ? "true" : "false");
			return xmlElement;
		}
	}

	public class Project : WithSpec
	{
		private WithSpec _parent;

		public Project(Context context, XmlElement el, WithSpec parent, Types types, string baseName)
			: base(context, el, parent, types, baseName)
		{
			types._project.read(baseName, ext(), delegate
			{
			});
			_parent = parent;
		}

		public override XmlElement wsDesc(XmlDocument doc)
		{
			return wsDesc(doc, "project");
		}

		public override string baseName()
		{
			if (_parent != null)
			{
				return _parent.baseName();
			}
			return base.baseName();
		}

		public override string ext()
		{
			if (_parent != null)
			{
				return "dp.amd";
			}
			return base.ext();
		}

		protected override void setParent(WithSpec parent)
		{
			_parent = parent;
		}
	}

	public readonly string _uuid;

	public readonly string _type;

	public readonly string _namespace;

	public Item(Context context, XmlElement el)
		: base(context, el)
	{
		_namespace = el.GetAttribute("nameSpace");
		_type = el.GetAttribute("componentType");
		_uuid = el.GetAttribute("UUID");
	}

	public override XmlElement wsDesc(XmlDocument doc, string tag)
	{
		XmlElement xmlElement = base.wsDesc(doc, tag);
		xmlElement.SetAttribute("type", _type);
		if (_uuid != null)
		{
			xmlElement.SetAttribute("uuid", _uuid);
		}
		return xmlElement;
	}

	public override XmlElement wsDesc(XmlDocument doc)
	{
		return wsDesc(doc, "item");
	}

	public override void visitItems(Visitor iv)
	{
		iv(this);
	}

	public virtual void updateReferences(Context context)
	{
	}

	public virtual void visitElements(Elem.Visitor visitor)
	{
	}

	public virtual string baseName()
	{
		return (_namespace + "/" + _name).Substring(1);
	}

	public static Item fromXML(Context context, XmlElement el, Types types, string baseName)
	{
		el = DBO.getTop(el);
		Item item = WithSpec.fromXML(context, el, types, baseName);
		if (item != null)
		{
			return item;
		}
		return new Item(context, el);
	}
}
