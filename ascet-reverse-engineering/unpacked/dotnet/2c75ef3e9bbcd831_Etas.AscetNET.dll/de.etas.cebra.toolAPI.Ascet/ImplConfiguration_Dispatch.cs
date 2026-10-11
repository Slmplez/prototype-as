using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface ImplConfiguration_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CopyRecursiveWithPrefix(string prefix);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object CopyWithName(string name);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object Get(object dispatch_comp);

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetItem(object dispatch_comp);

	string GetMemoryLocation();

	bool GetOptionGenerateMethodBody();

	bool GetOptionOptimizeMethodCalls();

	bool IsChoicePrototypeImplementation();

	bool IsChoiceServiceRoutine();

	bool IsImplConfiguration();

	bool Set(object dispatch_impl, object dispatch_comp);

	bool SetChoicePrototypeImplementation();

	bool SetChoiceServiceRoutine();

	bool SetItem(object dispatch_impl, object dispatch_comp);

	bool SetMemoryLocation(string memoryLocation);

	bool SetOptionGenerateMethodBody(bool option);

	bool SetOptionOptimizeMethodCalls(bool option);

	string GetAliasNameString();

	string GetCustomerDataString();

	string GetName();

	string GetOID();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetReferencedClass();

	string GetUserDataString();

	string GetCustomerDataStringForElement(object dispatch_element);

	string GetUserDataStringForElement(object dispatch_element);

	bool IsConfiguration();

	bool IsDataConfiguration();

	bool SetCustomerDataString(string newContents);

	bool SetCustomerDataStringForElement(string newContents, object dispatch_element);

	bool SetUserDataStringForElement(string newContents, object dispatch_element);

	bool SetName(string aName);

	bool SetUserDataString(string newContents);

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
