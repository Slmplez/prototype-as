using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationRescaleDistributionData : ICalibrationDistributionData, ICalibrationArrayData, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	double[] GetDoublePhysScales();

	float[] GetFloatPhysScales();

	int[] GetIntegerPhysScales();

	long[] GetLongPhysScales();

	bool SetDoublePhysScales(double[] value_Renamed);

	bool SetFloatPhysScales(float[] value_Renamed);

	bool SetIntegerPhysScales(int[] value_Renamed);

	bool SetLongPhysScales(long[] value_Renamed);
}
