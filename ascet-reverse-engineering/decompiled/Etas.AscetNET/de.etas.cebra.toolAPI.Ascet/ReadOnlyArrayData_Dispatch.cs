using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface ReadOnlyArrayData_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object GetBooleanValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetDoubleValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFloatValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIntegerValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLongValue();

	int GetMaxSize();

	int GetSize();

	bool IsArray();

	bool IsDataItem();

	bool IsDistribution();

	bool IsMatrix();

	bool IsOneDTable();

	bool IsScalar();

	bool IsTwoDTable();

	bool IsConfigurationItem();

	bool IsImplItem();

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
