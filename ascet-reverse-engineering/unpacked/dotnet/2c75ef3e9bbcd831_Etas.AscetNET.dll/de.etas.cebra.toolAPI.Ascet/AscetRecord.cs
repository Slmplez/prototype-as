using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("87D5BF8A-AA0A-4d02-9D5F-EB347B98DE02")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.AscetRecord")]
public class AscetRecord : Component, AscetRecord_Dispatch, IAscetRecord, IComponent, IDataBaseItem
{
	bool AscetRecord_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object AscetRecord_Dispatch.Edit()
	{
		return Edit();
	}

	object AscetRecord_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object AscetRecord_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object AscetRecord_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object AscetRecord_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object AscetRecord_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object AscetRecord_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object AscetRecord_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string AscetRecord_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool AscetRecord_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object AscetRecord_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AscetRecord(AscetDataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public AscetRecord(AscetFolder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsRecord()
	{
		return true;
	}
}
