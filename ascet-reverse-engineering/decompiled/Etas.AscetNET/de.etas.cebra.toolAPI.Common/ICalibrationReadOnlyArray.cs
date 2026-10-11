using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationReadOnlyArray : ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	bool[] GetBooleanPhysValue();

	double[] GetDoublePhysValue();

	float[] GetFloatPhysValue();

	double[] GetImplValue();

	int[] GetIntegerPhysValue();

	long[] GetLongPhysValue();

	int GetMaxSize();

	string GetPhysType();

	int GetSize();
}
