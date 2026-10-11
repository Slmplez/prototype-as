using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationCurveAxisOneDTableData : ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationReadOnlyDistributionData GetCalculatedDistribution();

	CalibrationCurveAxisData GetCurveAxis();

	CalibrationArrayData GetValue();

	bool SetValue(CalibrationArrayData array);
}
