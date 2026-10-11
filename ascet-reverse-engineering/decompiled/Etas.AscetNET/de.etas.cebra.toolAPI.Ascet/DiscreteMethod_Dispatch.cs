using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface DiscreteMethod_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddComplexArgumentElement(string aName, object dispatch_asdClass);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddComplexLocalElement(string aName, object dispatch_asdClass);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddComplexReturnElement(object dispatch_asdClass);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddPrimitiveArgumentElement(string aName, string aType);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddPrimitiveLocalElement(string aName, string aType);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object AddPrimitiveReturnElement(string aType);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllArgumentElements();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetAllLocalElements();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetArgumentElement(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDiagram();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetLocalElement(string aName);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetReturnElement();

	bool IsActionCompatible();

	bool IsConditionCompatible();

	bool IsDiscreteMethod();

	bool RemoveArgumentElement(object dispatch_element);

	bool RemoveLocalElement(object dispatch_element);

	bool RemoveReturnElement();

	bool SetName(string aName);

	string GetAliasNameString();

	string GetCode();

	string GetCodeForProject(object dispatch_prj);

	string GetCodeInProject(object dispatch_prj);

	string GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation);

	string GetCustomerDataString();

	string GetName();

	string GetUserDataString();

	bool IsAbstractMethod();

	bool IsAction();

	bool IsCondition();

	bool IsContinuousMethod();

	bool IsProcess();

	bool IsTrigger();

	bool SetCode(string code);

	bool SetCodeForProject(string code, object dispatch_prj);

	bool SetCodeInProject(string code, object dispatch_prj);

	bool SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation);

	bool SetCustomerDataString(string newContents);

	bool SetUserDataString(string newContents);

	void CreateApplicationError();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDataBase();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractBlockDiagramElement();

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
