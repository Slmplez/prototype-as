using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface ScalarData_Dispatch
{
	bool IsScalar();

	bool SetStringValue(string value_Renamed);

	bool SetBooleanValue(bool value_Renamed);

	bool SetDoubleValue(double value_Renamed);

	bool SetFloatValue(double value_Renamed);

	bool SetIntegerValue(int value_Renamed);

	bool SetLongValue(int value_Renamed);

	string GetStringValue();

	bool GetBooleanValue();

	double GetDoubleValue();

	double GetFloatValue();

	int GetIntegerValue();

	int GetLongValue();

	bool IsArray();

	bool IsDataItem();

	bool IsDistribution();

	bool IsMatrix();

	bool IsOneDTable();

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
