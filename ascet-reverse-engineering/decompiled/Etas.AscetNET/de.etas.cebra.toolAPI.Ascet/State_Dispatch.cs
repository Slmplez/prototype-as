using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface State_Dispatch
{
	bool ClearEntryAction();

	bool ClearExitAction();

	bool ClearStartState();

	bool ClearStaticAction();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CreateHierarchyState();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAvailableColors();

	string GetColor();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetEntryAction();

	string GetEntryActionESDL();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetExitAction();

	string GetExitActionESDL();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetStaticAction();

	string GetStaticActionESDL();

	int Height();

	bool IsEntryActionDefined();

	bool IsEntryActionESDL();

	bool IsExitActionDefined();

	bool IsExitActionESDL();

	bool IsStartState();

	bool IsState();

	bool IsStaticActionDefined();

	bool IsStaticActionESDL();

	bool SetColor(string colorName);

	bool SetEntryAction(object dispatch_method);

	bool SetEntryActionESDL(string esdlCode);

	bool SetExitAction(object dispatch_method);

	bool SetExitActionESDL(string esdlCode);

	bool SetSize(int width, int height);

	bool SetStartState();

	bool SetStaticAction(object dispatch_method);

	bool SetStaticActionESDL(string esdlCode);

	int Width();

	string GetCustomerDataString();

	int GetGraphicalObjectIdentifier();

	string GetName();

	string GetUserDataString();

	bool IsStateMachineDiagramElement();

	bool SetCustomerDataString(string newContents);

	bool SetName(string aName);

	bool SetUserDataString(string newContents);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeComponent();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetHierarchyState();

	bool IsAbstractStateMachineElement();

	bool IsHierarchyState();

	bool IsStateMachinePin();

	bool IsTransition();

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

	bool IsAscetDiagram();

	bool IsAscetProjectFile();

	bool IsCodeGenerator();

	bool IsConfiguration();

	bool IsConfigurationItem();

	bool IsDataBaseItem();

	bool IsDeviceDescription();

	bool IsFormula();

	bool IsHWDevice();

	bool IsHWSubDevice();

	bool IsHWSystem();

	bool IsImplInfo();

	bool IsModelElement();

	bool IsSubDeviceDescription();

	bool IsSystemDescription();

	bool IsTarget();

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
