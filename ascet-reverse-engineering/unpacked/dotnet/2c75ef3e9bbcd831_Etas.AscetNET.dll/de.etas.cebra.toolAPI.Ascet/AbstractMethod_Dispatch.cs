using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface AbstractMethod_Dispatch
{
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

	bool IsActionCompatible();

	bool IsCondition();

	bool IsConditionCompatible();

	bool IsContinuousMethod();

	bool IsDiscreteMethod();

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
