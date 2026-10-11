using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface CalibrationArrayData_Dispatch
{
	bool IsReadOnly();

	bool SetBooleanPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetDoublePhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetFloatPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetImplValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetIntegerPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetLongPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetSize(int size);

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetBooleanPhysValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetDoublePhysValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFloatPhysValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetImplValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIntegerPhysValue();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLongPhysValue();

	int GetMaxSize();

	string GetPhysType();

	int GetSize();

	bool IsArray();

	bool IsWriteProtected();

	int GetAddress();

	double GetCalibrationHardBoundMax();

	double GetCalibrationHardBoundMin();

	double GetCalibrationImplHardBoundMax();

	double GetCalibrationImplHardBoundMin();

	double GetCalibrationImplMinIncrement();

	double GetCalibrationImplWeakBoundMax();

	double GetCalibrationImplWeakBoundMin();

	double GetCalibrationMinIncrement();

	double GetCalibrationWeakBoundMax();

	double GetCalibrationWeakBoundMin();

	bool IsCalibrationDataItem();

	bool SetWeakBoundtoHardBound();

	bool IsCurveAxis();

	bool IsCurveAxisOneDTable();

	bool IsCurveAxisTwoDTable();

	bool IsDistribution();

	bool IsExperimentDataItem();

	bool IsMatrix();

	bool IsMeasureDataItem();

	bool IsOneDTable();

	bool IsRescaleDistribution();

	bool IsRescaleOneDTable();

	bool IsRescaleTwoDTable();

	bool IsScalar();

	bool IsTwoDTable();

	string Label();

	void CreateApplicationError();

	int GetToolErrorCode();

	string GetToolErrorMessage();

	bool IsAbstractDevice();

	bool IsExperiment();

	bool IsExperimentDevice();

	bool IsExperimentElement();

	bool IsToolErrorAvailable();

	bool IsUserInterface();

	new bool Equals(object hndl);

	new int GetHashCode();
}
