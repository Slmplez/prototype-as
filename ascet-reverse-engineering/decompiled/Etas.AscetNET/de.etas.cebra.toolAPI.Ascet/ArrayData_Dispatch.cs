using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface ArrayData_Dispatch
{
	bool IsArray();

	bool SetBooleanValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetDoubleValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetFloatValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetIntegerValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetLongValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetMaxSize(int maxSize);

	bool SetSize(int size);

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
