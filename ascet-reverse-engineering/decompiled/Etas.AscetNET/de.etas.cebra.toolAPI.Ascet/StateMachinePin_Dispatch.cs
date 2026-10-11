using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface StateMachinePin_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object GetConnectedTransitions();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetHierarchy();

	bool IsStateMachinePin();

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

	bool IsState();

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
