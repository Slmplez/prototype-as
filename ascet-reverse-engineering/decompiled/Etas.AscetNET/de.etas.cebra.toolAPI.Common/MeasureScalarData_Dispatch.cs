using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[InterfaceType(ComInterfaceType.InterfaceIsIDispatch)]
[ComVisible(true)]
public interface MeasureScalarData_Dispatch
{
	bool GetBooleanPhysValue();

	string GetCharPhysValue();

	double GetDoublePhysValue();

	double GetFloatPhysValue();

	double GetImplValue();

	int GetIntegerPhysValue();

	int GetLongPhysValue();

	bool IsScalar();

	[return: MarshalAs(UnmanagedType.Struct)]
	object ActivateRci2();

	bool DeActivateRci2();

	string GetCurrentAcquisitionRate();

	double GetMeasureRangeMax();

	double GetMeasureRangeMin();

	string GetPhysType();

	bool IsMeasureDataItem();

	bool SetCurrentAcquisitionRate(string rate);

	bool IsArray();

	bool IsCalibrationDataItem();

	bool IsCurveAxis();

	bool IsCurveAxisOneDTable();

	bool IsCurveAxisTwoDTable();

	bool IsDistribution();

	bool IsExperimentDataItem();

	bool IsMatrix();

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
