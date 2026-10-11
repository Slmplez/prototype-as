using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.Asap2Project")]
[Guid("AFFCD73D-87B8-11D3-8A08-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class Asap2Project : Asap2Item, IAsap2Project, IAsap2Item, IComponent, IDataBaseItem, Asap2Project_Dispatch
{
	public Asap2Project(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public Asap2Project(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public override bool IsAsap2Project()
	{
		return true;
	}

	bool Asap2Project_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object Asap2Project_Dispatch.Edit()
	{
		return Edit();
	}

	object Asap2Project_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object Asap2Project_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object Asap2Project_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object Asap2Project_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object Asap2Project_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object Asap2Project_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object Asap2Project_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string Asap2Project_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool Asap2Project_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object Asap2Project_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
