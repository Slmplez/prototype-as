using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface CalibrationTwoDTableData_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetXDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetYDistribution();

	bool IsTwoDTable();

	bool SetValue(object dispatch_matrix);

	bool SetXDistribution(object dispatch_dis);

	bool SetYDistribution(object dispatch_dis);

	double GetCalibrationImplYAxisMinIncrement();

	double GetCalibrationImplYAxisWeakBoundMax();

	double GetCalibrationImplYAxisWeakBoundMin();

	double GetCalibrationYAxisMinIncrement();

	string GetCalibrationYAxisSourceLabel();

	double GetCalibrationYAxisWeakBoundMax();

	double GetCalibrationYAxisWeakBoundMin();

	bool SetYAxisWeakBoundtoHardBound();

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

	bool IsScalar();

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
