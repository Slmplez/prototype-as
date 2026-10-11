using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IReadOnlyArrayData : IDataItem, IConfigurationItem
{
	bool[] GetBooleanValue();

	double[] GetDoubleValue();

	float[] GetFloatValue();

	int[] GetIntegerValue();

	long[] GetLongValue();
}
