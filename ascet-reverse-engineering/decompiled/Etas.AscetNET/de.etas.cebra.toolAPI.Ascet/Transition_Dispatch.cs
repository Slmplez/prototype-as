using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface Transition_Dispatch
{
	bool ClearAction();

	bool ClearCondition();

	bool ClearTrigger();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetAction();

	string GetActionESDL();

	string GetColor();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCondition();

	string GetConditionESDL();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetEndPin();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetEndState();

	int GetPriority();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetStartPin();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetStartState();

	int GetWidth();

	bool HasEndPin();

	bool HasStartPin();

	bool IsActionDefined();

	bool IsActionESDL();

	bool IsConditionDefined();

	bool IsConditionESDL();

	bool IsTransition();

	bool SetAction(object dispatch_method);

	bool SetActionESDL(string esdlCode);

	bool SetColor(string colorName);

	bool SetCondition(object dispatch_method);

	bool SetConditionESDL(string esdlCode);

	bool SetPriority(int prio);

	bool SetTrigger(object dispatch_trigger);

	bool SetWidth(int width);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCodeComponent();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetHierarchyState();

	bool IsAbstractStateMachineElement();

	bool IsHierarchyState();

	bool IsState();

	bool IsStateMachineDiagramElement();

	bool IsStateMachinePin();

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
