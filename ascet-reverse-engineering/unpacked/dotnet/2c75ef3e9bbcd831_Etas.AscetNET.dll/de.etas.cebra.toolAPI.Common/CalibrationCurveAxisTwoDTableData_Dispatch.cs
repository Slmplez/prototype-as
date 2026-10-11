using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
public interface CalibrationCurveAxisTwoDTableData_Dispatch
{
	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCalculatedXDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetCalculatedYDistribution();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetValue();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetXCurveAxis();

	[return: MarshalAs(UnmanagedType.IDispatch)]
	object GetYCurveAxis();

	bool IsCurveAxisTwoDTable();

	bool SetValue(object dispatch_matrix);

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
