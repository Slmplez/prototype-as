using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("00BFE0B2-79FC-11d5-98FE-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.AscetIcon")]
public class AscetIcon : Component, IAscetIcon, IComponent, IDataBaseItem, AscetIcon_Dispatch
{
	public AscetIcon(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetIcon(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsIcon()
	{
		return true;
	}

	bool AscetIcon_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetIcon_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetIcon_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetIcon_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetIcon_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetIcon_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetIcon_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetIcon_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetIcon_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetIcon_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetIcon_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetIcon_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
