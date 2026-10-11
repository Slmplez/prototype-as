using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IMeasureScalarData : IMeasureDataItem, IExperimentDataItem, ITransientItem
{
	bool GetBooleanPhysValue();

	string GetCharPhysValue();

	double GetDoublePhysValue();

	float GetFloatPhysValue();

	double GetImplValue();

	int GetIntegerPhysValue();

	long GetLongPhysValue();
}
