using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationArrayData : ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	bool SetBooleanPhysValue(bool[] value_Renamed);

	bool SetDoublePhysValue(double[] value_Renamed);

	bool SetFloatPhysValue(float[] value_Renamed);

	bool SetImplValue(double[] value_Renamed);

	bool SetIntegerPhysValue(int[] value_Renamed);

	bool SetLongPhysValue(long[] value_Renamed);

	bool SetSize(int size);
}
