using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface CalibrationScalarData_Dispatch
{
	bool GetBooleanPhysValue();

	string GetCharPhysValue();

	double GetDoublePhysValue();

	double GetFloatPhysValue();

	double GetImplValue();

	int GetIntegerPhysValue();

	int GetLongPhysValue();

	string GetPhysType();

	bool IsScalar();

	bool IsWriteProtected();

	bool SetBooleanPhysValue(bool value_Renamed);

	bool SetCharPhysValue(string value_Renamed);

	bool SetDoublePhysValue(double value_Renamed);

	bool SetFloatPhysValue(double value_Renamed);

	bool SetImplValue(double value_Renamed);

	bool SetIntegerPhysValue(int value_Renamed);

	bool SetLongPhysValue(int value_Renamed);

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

	bool IsMatrix();

	bool IsMeasureDataItem();

	bool IsOneDTable();

	bool IsReadOnly();

	bool IsRescaleDistribution();

	bool IsRescaleOneDTable();

	bool IsRescaleTwoDTable();

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
