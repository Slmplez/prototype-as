using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationTwoDTableData : ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationMatrixData GetValue();

	CalibrationDistributionData GetXDistribution();

	CalibrationDistributionData GetYDistribution();

	bool SetValue(CalibrationMatrixData matrix);

	bool SetXDistribution(CalibrationDistributionData dis);

	bool SetYDistribution(CalibrationDistributionData dis);
}
