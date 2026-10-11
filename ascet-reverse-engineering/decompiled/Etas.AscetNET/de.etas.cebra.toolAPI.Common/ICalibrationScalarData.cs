using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationScalarData : ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	bool GetBooleanPhysValue();

	string GetCharPhysValue();

	double GetDoublePhysValue();

	float GetFloatPhysValue();

	double GetImplValue();

	int GetIntegerPhysValue();

	long GetLongPhysValue();

	string GetPhysType();

	bool IsWriteProtected();

	bool SetBooleanPhysValue(bool value_Renamed);

	bool SetCharPhysValue(string value_Renamed);

	bool SetDoublePhysValue(double value_Renamed);

	bool SetFloatPhysValue(float value_Renamed);

	bool SetImplValue(double value_Renamed);

	bool SetIntegerPhysValue(int value_Renamed);

	bool SetLongPhysValue(long value_Renamed);
}
