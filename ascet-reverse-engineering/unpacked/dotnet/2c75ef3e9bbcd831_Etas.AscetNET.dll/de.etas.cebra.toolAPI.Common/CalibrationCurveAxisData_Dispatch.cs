using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface CalibrationCurveAxisData_Dispatch
{
	bool IsCurveAxis();

	bool IsOneDTable();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	bool SetDistribution(object dispatch_dis);

	bool SetValue(object dispatch_array);

	double GetCalibrationImplXAxisMinIncrement();

	double GetCalibrationImplXAxisWeakBoundMax();

	double GetCalibrationImplXAxisWeakBoundMin();

	double GetCalibrationXAxisMinIncrement();

	string GetCalibrationXAxisSourceLabel();

	double GetCalibrationXAxisWeakBoundMax();

	double GetCalibrationXAxisWeakBoundMin();

	bool SetXAxisWeakBoundtoHardBound();

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

	bool IsCurveAxisOneDTable();

	bool IsCurveAxisTwoDTable();

	bool IsDistribution();

	bool IsExperimentDataItem();

	bool IsMatrix();

	bool IsMeasureDataItem();

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
