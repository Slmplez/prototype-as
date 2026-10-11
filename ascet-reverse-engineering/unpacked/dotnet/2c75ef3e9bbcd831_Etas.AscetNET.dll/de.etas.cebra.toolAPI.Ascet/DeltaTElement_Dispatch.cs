using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface DeltaTElement_Dispatch
{
	bool IsDeltaTElement();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetEnumerator();

	bool IsConstant();

	bool IsParameter();

	bool IsScalar();

	bool IsSystemConstant();

	bool IsVariable();

	bool SetEnumerator(object dispatch_enumerator);

	bool SetToConstant();

	bool SetToParameter();

	bool SetToSystemConstant();

	bool SetToVariable();

	bool IsPrimitiveDiscreteModelElement();

	bool ClearCalibration();

	bool ClearVariant();

	bool ClearVolatile();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetImplementation();

	string GetModelType();

	string GetUnit();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	bool IsPrimitive();

	bool SetCalibration();

	bool SetModelType(string type);

	bool SetUnit(string u);

	bool SetVariant();

	bool SetVolatile();

	bool CouldEnableGetAccess();

	bool CouldEnableSetAccess();

	bool DisableGetAccess();

	bool DisableSetAccess();

	bool EnableGetAccess();

	bool EnableSetAccess();

	string GetAliasNameString();

	string GetComment();

	string GetCustomerDataString();

	string GetName();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetOwnerForElement();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetRepresentedClass();

	string GetScope();

	string GetUserDataString();

	bool HasGetAccess();

	bool HasSetAccess();

	bool IsArray();

	bool IsAscetModelElement();

	bool IsCalibration();

	bool IsComplex();

	bool IsContinuousState();

	bool IsDependentParameter();

	bool IsDiscreteState();

	bool IsDistribution();

	bool IsEnumeration();

	bool IsExported();

	bool IsImplementationCast();

	bool IsImported();

	bool IsInput();

	bool IsLocal();

	bool IsMatrix();

	bool IsMessage();

	bool IsMethodArgument();

	bool IsMethodLocal();

	bool IsMethodReturn();

	bool IsOneDTable();

	bool IsOutput();

	bool IsPrimitiveCTModelElement();

	bool IsReceiveMessage();

	bool IsModelResource();

	bool IsSendMessage();

	bool IsSendReceiveMessage();

	bool IsStepLocal();

	bool IsTwoDTable();

	bool IsVariant();

	bool IsVolatile();

	bool SetComment(string comment);

	bool SetCustomerDataString(string newContents);

	bool SetName(string name);

	bool SetScope(string scope);

	bool SetUserDataString(string newContents);

	bool IsModelElement();

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

	bool IsSubDeviceDescription();

	bool IsSystemDescription();

	bool IsTarget();

	bool IsTask();

	bool IsToolErrorAvailable();

	new bool Equals(object hndl);

	new int GetHashCode();
}
