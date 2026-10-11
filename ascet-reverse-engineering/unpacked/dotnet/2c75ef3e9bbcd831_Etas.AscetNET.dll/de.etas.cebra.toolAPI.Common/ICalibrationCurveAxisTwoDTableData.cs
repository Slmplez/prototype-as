using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationCurveAxisTwoDTableData : ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationReadOnlyDistributionData GetCalculatedXDistribution();

	CalibrationReadOnlyDistributionData GetCalculatedYDistribution();

	CalibrationMatrixData GetValue();

	CalibrationCurveAxisData GetXCurveAxis();

	CalibrationCurveAxisData GetYCurveAxis();

	bool SetValue(CalibrationMatrixData matrix);
}
