using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface BlockDiagram_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ConnectDiagramElementPins(object dispatch_outputPin, object dispatch_inputPin, [MarshalAs(UnmanagedType.Struct)] object x, [MarshalAs(UnmanagedType.Struct)] object y);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramConnections();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllOperatorsWithImplementation();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllOperatorsWithImplementationIn(object dispatch_impl);

	bool IsBlockDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceBooleanLiteral(bool b, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceComment(string comment, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceControlElement(string ctrl, int x, int y, int numberOfArguments, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceDoubleLiteral(double b, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceHierarchy(string name, int x, int y, [MarshalAs(UnmanagedType.Struct)] object inputPins, [MarshalAs(UnmanagedType.Struct)] object outputPins, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceIntegerLiteral(int b, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceModelElement(object dispatch_element, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceOperator(string op, int x, int y, int numberOfArguments, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceStringLiteral(string contents, int x, int y, object dispatch_hierarchy);

	bool RemoveDiagramComment(object dispatch_diagComment);

	bool RemoveDiagramConnection(object dispatch_diagConnection);

	bool RemoveDiagramElement(object dispatch_diagElement);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramComments();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeComponent();

	string GetName();

	string GetOID();

	bool IsActionConditionDiagram();

	bool IsAscetDiagram();

	bool IsContinuousMethodDiagram();

	bool IsDiscreteMethodDiagram();

	bool IsProcessDiagram();

	bool IsStateMachineDiagram();

	bool SaveAsBitmap(string fileName, string view);

	bool SaveAsGIF(string fileName, string view);

	bool SaveAsPostscript(string fileName, string view);

	bool SaveAsPostscriptAndRescale(string fileName, double scaleFactor, string view);

	bool SaveAsRTF(string fileName, string view);

	bool SetName(string aName);

	bool StoreToCache();

	bool SwitchSequenceVisibilityOff();

	bool SwitchSequenceVisibilityOn();

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

	bool IsAbstractMethod();

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
