using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface CalibrationRescaleDistributionData_Dispatch
{
	[return: MarshalAs(UnmanagedType.Struct)]
	object GetDoublePhysScales();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetFloatPhysScales();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetIntegerPhysScales();

	[return: MarshalAs(UnmanagedType.Struct)]
	object GetLongPhysScales();

	bool IsRescaleDistribution();

	bool SetDoublePhysScales([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetFloatPhysScales([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetIntegerPhysScales([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetLongPhysScales([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool IsArray();

	bool IsDistribution();

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

	bool IsExperimentDataItem();

	bool IsMatrix();

	bool IsMeasureDataItem();

	bool IsOneDTable();

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
