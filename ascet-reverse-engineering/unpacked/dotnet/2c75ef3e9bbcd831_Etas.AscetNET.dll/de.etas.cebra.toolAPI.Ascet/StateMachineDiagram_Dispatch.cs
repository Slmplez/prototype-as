using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface StateMachineDiagram_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddTrigger(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ConnectPinToPin(object dispatch_out_Renamed, object dispatch_in_Renamed);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ConnectPinToState(object dispatch_out_Renamed, object dispatch_in_Renamed, int x, int y);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ConnectStateToPin(object dispatch_out_Renamed, int x, int y, object dispatch_in_Renamed);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object ConnectStateToState(object dispatch_out_Renamed, int xo, int yo, object dispatch_in_Renamed, int xi, int yi);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllAvailableColors();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllStates();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllTransitions();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllTriggers();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetState(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetTrigger(string name);

	bool IsStateMachineDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceHierarchyState(string aName, int x, int y, object dispatch_hierarchy);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object PlaceState(string aName, int x, int y, object dispatch_hierarchy);

	bool RemoveTrigger(object dispatch_trigger);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllDiagramComments();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeComponent();

	string GetName();

	string GetOID();

	bool IsActionConditionDiagram();

	bool IsAscetDiagram();

	bool IsBlockDiagram();

	bool IsContinuousMethodDiagram();

	bool IsDiscreteMethodDiagram();

	bool IsProcessDiagram();

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
