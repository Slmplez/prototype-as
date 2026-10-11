using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IImplInfo
{
	double[] GetDoubleImplRange();

	double[] GetDoublePhysicalRange();

	float[] GetFloatImplRange();

	float[] GetFloatPhysicalRange();

	int[] GetIntegerImplRange();

	int[] GetIntegerPhysicalRange();

	long[] GetLongImplRange();

	long[] GetLongPhysicalRange();
}
