using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface IMeasureDataItem : IExperimentDataItem, ITransientItem
{
	sbyte[] ActivateRci2();

	bool DeActivateRci2();

	string GetCurrentAcquisitionRate();

	double GetMeasureRangeMax();

	double GetMeasureRangeMin();

	string GetPhysType();

	bool SetCurrentAcquisitionRate(string rate);
}
