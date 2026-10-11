using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface CalibrationMatrixData_Dispatch
{
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

	int GetMaxXSize();

	int GetMaxYSize();

	string GetPhysType();

	int GetXSize();

	int GetYSize();

	bool IsMatrix();

	bool IsWriteProtected();

	bool SetBooleanPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetDoublePhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetFloatPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetImplValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetIntegerPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetLongPhysValue([MarshalAs(UnmanagedType.Struct)] object value_Renamed);

	bool SetXSize(int xSize);

	bool SetYSize(int ySize);

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

	bool IsArray();

	bool IsCurveAxis();

	bool IsCurveAxisOneDTable();

	bool IsCurveAxisTwoDTable();

	bool IsDistribution();

	bool IsExperimentDataItem();

	bool IsMeasureDataItem();

	bool IsOneDTable();

	bool IsReadOnly();

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
