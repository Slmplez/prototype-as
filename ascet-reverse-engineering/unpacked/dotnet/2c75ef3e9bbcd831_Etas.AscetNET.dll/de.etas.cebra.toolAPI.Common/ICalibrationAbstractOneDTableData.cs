using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationAbstractOneDTableData : ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	double GetCalibrationImplXAxisMinIncrement();

	double GetCalibrationImplXAxisWeakBoundMax();

	double GetCalibrationImplXAxisWeakBoundMin();

	double GetCalibrationXAxisMinIncrement();

	string GetCalibrationXAxisSourceLabel();

	double GetCalibrationXAxisWeakBoundMax();

	double GetCalibrationXAxisWeakBoundMin();

	bool SetXAxisWeakBoundtoHardBound();
}
