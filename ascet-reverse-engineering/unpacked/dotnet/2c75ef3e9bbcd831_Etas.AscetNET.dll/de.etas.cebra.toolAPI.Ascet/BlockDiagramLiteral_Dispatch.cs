using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface BlockDiagramLiteral_Dispatch
{
	string GetContents();

	bool IsBlockDiagramLiteral();

	bool SetContents(string newContents);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllPins();

	int GetGraphicalObjectIdentifier();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetPosition();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetSize();

	bool IsBlockDiagramControlElement();

	bool IsBlockDiagramElement();

	bool IsBlockDiagramFunctionalElement();

	bool IsBlockDiagramHierarchy();

	bool IsBlockDiagramHierarchyPin();

	bool IsBlockDiagramOperator();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAvailableViews();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAvailableViewTypes();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeComponent();

	string GetCustomerDataString();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetHierarchy();

	string GetUserDataString();

	string GetViewTypeForViewNamed(string viewName);

	bool IsAbstractBlockDiagramElement();

	bool IsBlockDiagramComment();

	bool IsBlockDiagramFlowElement();

	bool SetCustomerDataString(string newContents);

	bool SetUserDataString(string newContents);

	string SetViewTypeForViewNamed(string viewType, string viewName);

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

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
