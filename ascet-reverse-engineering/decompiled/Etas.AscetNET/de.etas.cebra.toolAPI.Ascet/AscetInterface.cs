using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("DA5D59C0-84E7-4bd3-89CC-6706367E00F8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.AscetInterface")]
public class AscetInterface : Component, IAscetInterface, IComponent, IDataBaseItem, AscetInterface_Dispatch
{
	public AscetInterface(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetInterface(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsAscetInterface()
	{
		return true;
	}

	bool AscetInterface_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetInterface_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetInterface_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetInterface_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetInterface_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetInterface_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetInterface_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetInterface_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetInterface_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetInterface_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetInterface_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetInterface_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
