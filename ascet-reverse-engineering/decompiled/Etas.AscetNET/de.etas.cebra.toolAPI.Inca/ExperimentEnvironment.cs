using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Inca;

[Guid("AFFCD73E-87B8-11D3-8A08-00A0247767D8")]
[ProgId("Ascet.ExperimentEnvironment")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
public class ExperimentEnvironment : Component, ExperimentEnvironment_Dispatch, IExperimentEnvironment, IComponent, IDataBaseItem
{
	bool ExperimentEnvironment_Dispatch.AddTextSegment(string textSegment, object views)
	{
		string[] views2 = Adapter.ToArray1Object<string>(views);
		return AddTextSegment(textSegment, views2);
	}

	object ExperimentEnvironment_Dispatch.Edit()
	{
		return Edit();
	}

	object ExperimentEnvironment_Dispatch.EditInFront()
	{
		return EditInFront();
	}

	object ExperimentEnvironment_Dispatch.GetTextSegments()
	{
		string[] textSegments = GetTextSegments();
		return Adapter.ToObject(textSegments);
	}

	object ExperimentEnvironment_Dispatch.GetViewsForTextSegment(string textSegment)
	{
		string[] viewsForTextSegment = GetViewsForTextSegment(textSegment);
		return Adapter.ToObject(viewsForTextSegment);
	}

	object ExperimentEnvironment_Dispatch.Copy(string name)
	{
		return Copy(name);
	}

	object ExperimentEnvironment_Dispatch.CopyToFolder(string name, object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return CopyToFolder(name, folder);
	}

	object ExperimentEnvironment_Dispatch.GetAllReferecedDataBaseItems()
	{
		DataBaseItem[] allReferecedDataBaseItems = GetAllReferecedDataBaseItems();
		return Adapter.ToObject(allReferecedDataBaseItems);
	}

	object ExperimentEnvironment_Dispatch.GetParentFolder()
	{
		return GetParentFolder();
	}

	string ExperimentEnvironment_Dispatch.GetType()
	{
		return GetComponentType_Obsolete();
	}

	bool ExperimentEnvironment_Dispatch.Move(object dispatch_folder)
	{
		Folder folder = (Folder)dispatch_folder;
		return Move(folder);
	}

	object ExperimentEnvironment_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ExperimentEnvironment(DataBase db, Identifiable h)
		: base(db, h)
	{
	}

	public ExperimentEnvironment(Folder f, Identifiable h)
		: base(f, h)
	{
	}

	public override bool IsExperimentEnvironment()
	{
		return true;
	}
}
