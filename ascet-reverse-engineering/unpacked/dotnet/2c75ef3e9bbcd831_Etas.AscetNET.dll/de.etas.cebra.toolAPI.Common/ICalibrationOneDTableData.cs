using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationOneDTableData : ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	CalibrationDistributionData GetDistribution();

	CalibrationArrayData GetValue();

	bool SetDistribution(CalibrationDistributionData dis);

	bool SetValue(CalibrationArrayData array);
}
