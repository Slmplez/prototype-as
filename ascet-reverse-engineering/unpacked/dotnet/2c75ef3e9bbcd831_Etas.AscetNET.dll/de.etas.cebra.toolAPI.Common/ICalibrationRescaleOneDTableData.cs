using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationRescaleOneDTableData : ICalibrationOneDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationReadOnlyDistributionData GetCalculatedDistribution();
}
