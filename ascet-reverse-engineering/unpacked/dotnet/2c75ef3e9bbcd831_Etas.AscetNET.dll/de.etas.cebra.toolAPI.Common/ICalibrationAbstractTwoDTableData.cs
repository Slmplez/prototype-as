using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationAbstractTwoDTableData : ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	double GetCalibrationImplYAxisMinIncrement();

	double GetCalibrationImplYAxisWeakBoundMax();

	double GetCalibrationImplYAxisWeakBoundMin();

	double GetCalibrationYAxisMinIncrement();

	string GetCalibrationYAxisSourceLabel();

	double GetCalibrationYAxisWeakBoundMax();

	double GetCalibrationYAxisWeakBoundMin();

	bool SetYAxisWeakBoundtoHardBound();
}
