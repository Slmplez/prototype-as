using System.Xml;

namespace de.projector.ascet.model;

public abstract class TreeItem : DBO
{
	public delegate void FolderVisitor(Folder folder);

	public TreeItem(Context context, XmlElement el)
		: base(context, el)
	{
	}

	public TreeItem(Context context, OID oid, string name)
		: base(context, oid, name)
	{
	}

	public abstract void visitItems(Item.Visitor iv);

	public abstract XmlElement wsDesc(XmlDocument doc);
}
