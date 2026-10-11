using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface BlockDiagramFunctionalElement_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetModelElement();

	bool IsBlockDiagramFunctionalElement();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllPins();

	int GetGraphicalObjectIdentifier();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetPosition();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetSize();

	bool IsBlockDiagramControlElement();

	bool IsBlockDiagramElement();

	bool IsBlockDiagramHierarchy();

	bool IsBlockDiagramHierarchyPin();

	bool IsBlockDiagramLiteral();

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
