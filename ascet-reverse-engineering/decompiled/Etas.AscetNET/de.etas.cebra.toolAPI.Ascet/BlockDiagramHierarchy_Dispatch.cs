using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface BlockDiagramHierarchy_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddInputPin(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddOutputPin(string aName);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramComments();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramConnections();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllInternalPins();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetInternalPin(string aName);

	string GetName();

	bool IsBlockDiagramHierarchy();

	bool SaveAsBitmap(string fileName, string view);

	bool SaveAsGIF(string fileName, string view);

	bool SaveAsPostscript(string fileName, string view);

	bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view);

	bool SaveAsRTF(string fileName, string view);

	bool SetName(string aName);

	bool SwitchSequenceVisibilityOff();

	bool SwitchSequenceVisibilityOn();

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
