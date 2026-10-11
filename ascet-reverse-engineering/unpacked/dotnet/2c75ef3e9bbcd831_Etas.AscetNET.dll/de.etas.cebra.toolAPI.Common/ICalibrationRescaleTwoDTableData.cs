using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationRescaleTwoDTableData : ICalibrationTwoDTableData, ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationReadOnlyDistributionData GetCalculatedXDistribution();

	CalibrationReadOnlyDistributionData GetCalculatedYDistribution();
}
