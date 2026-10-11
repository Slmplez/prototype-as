using System;
using System.Collections.Generic;
using System.Xml;
using de.kandid.io;
using de.kandid.logging;

namespace de.projector.ascet.model;

public class Folder : TreeItem
{
	private readonly List<TreeItem> _children = new List<TreeItem>();

	private string _comment;

	public void add(TreeItem ti)
	{
		_children.Add(ti);
	}

	public TreeItem search(string name)
	{
		return _children.Find((TreeItem item) => name.Equals(item._name));
	}

	public Folder(Context context, string name)
		: base(context, null, name)
	{
	}

	public Folder(File dir, Types types, Context context)
		: base(context, null, dir.getName())
	{
		Folder folder = this;
		Console.WriteLine(dir.ToString());
		File[] chidren = types._src.getChidren(dir);
		Array.Sort(chidren, (File a, File b) => a.getName().CompareTo(b.getName()));
		List<File> list = new List<File>(chidren.Length);
		File[] array = chidren;
		foreach (File file in array)
		{
			if (file.ToString().IndexOf('.') == -1 && types._src.isDirectory(file))
			{
				_children.Add(new Folder(file, types, context));
			}
			else
			{
				if (!file.ToString().EndsWith("/folder.amd"))
				{
					continue;
				}
				try
				{
					types._folder.read(file, delegate(XmlElement root)
					{
						XmlElement xmlElement = root["Folder"]["Comment"];
						if (xmlElement != null)
						{
							_comment = xmlElement.FirstChild.Value;
						}
					});
				}
				catch (Exception t)
				{
					context._logger.log(Logger.WARNING, "Unable to process " + file, t);
				}
			}
		}
		File[] array2 = chidren;
		foreach (File file2 in array2)
		{
			if (file2.ToString().EndsWith("main.amd"))
			{
				string baseName = file2.ToString().Substring(0, file2.ToString().IndexOf('.'));
				try
				{
					types._main.read(baseName, "amd", delegate(XmlElement root)
					{
						folder._children.Add(Item.fromXML(context, root, types, baseName));
					});
				}
				catch (Exception t2)
				{
					context._logger.log(Logger.WARNING, "Unable to process " + file2, t2);
				}
			}
			else
			{
				list.Add(file2);
			}
		}
	}

	public override XmlElement wsDesc(XmlDocument doc)
	{
		return wsDesc(doc, "folder");
	}

	public override XmlElement wsDesc(XmlDocument doc, string tag)
	{
		XmlElement xmlElement = doc.CreateElement(tag);
		xmlElement.SetAttribute("name", _name);
		if (_comment != null)
		{
			XmlElement xmlElement2 = doc.CreateElement("comment");
			xmlElement2.AppendChild(doc.CreateTextNode(_comment));
			xmlElement.AppendChild(xmlElement2);
		}
		foreach (TreeItem child in _children)
		{
			xmlElement.AppendChild(child.wsDesc(doc));
		}
		return xmlElement;
	}

	public override void visitItems(Item.Visitor iv)
	{
		foreach (TreeItem child in _children)
		{
			child.visitItems(iv);
		}
	}
}
