using System.IO;
using System.Xml;
using de.kandid.io;

namespace de.projector.ascet;

public class Types
{
	public delegate void Worker(XmlElement root);

	public class Type
	{
		private readonly string _suffix;

		private Types _container;

		public Type(Types container, string suffix)
		{
			_container = container;
			_suffix = suffix;
		}

		public void read(string baseName, string ext, Worker worker)
		{
			read(new de.kandid.io.File(baseName + "." + _suffix + "." + ext), worker);
		}

		public void read(de.kandid.io.File subPath, Worker worker)
		{
			XmlDocument xmlDocument = new XmlDocument();
			Stream inputStream = _container._src.getInputStream(subPath);
			try
			{
				xmlDocument.Load(inputStream);
				worker((XmlElement)xmlDocument.SelectSingleNode("*"));
			}
			finally
			{
				inputStream.Close();
			}
		}

		public bool exists(string baseName, string ext)
		{
			return _container._src.exists(new de.kandid.io.File(baseName + "." + _suffix + "." + ext));
		}
	}

	public readonly Type _main;

	public readonly Type _specification;

	public readonly Type _implementation;

	public readonly Type _data;

	public readonly Type _project;

	public readonly Type _formulas;

	public readonly Type _implementationtypes;

	public readonly Type _experiments;

	public readonly Type _folder;

	public RootFile _src;

	public RootFile _dest;

	public Types(de.kandid.io.File src, de.kandid.io.File dest)
		: this(RootFile.makeFrom(src), RootFile.makeFrom(dest))
	{
	}

	public Types(RootFile src, RootFile dest)
	{
		_main = new Type(this, "main");
		_specification = new Type(this, "specification");
		_implementation = new Type(this, "implementation");
		_data = new Type(this, "data");
		_project = new Type(this, "project");
		_formulas = new Type(this, "formulas");
		_implementationtypes = new Type(this, "implementationtypes");
		_experiments = new Type(this, "experiments");
		_folder = new Type(this, "folder");
		_src = src;
		_dest = dest;
	}
}
