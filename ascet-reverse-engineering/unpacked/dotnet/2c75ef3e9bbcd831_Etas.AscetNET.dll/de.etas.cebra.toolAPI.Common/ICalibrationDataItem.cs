using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationDataItem : IExperimentDataItem, ITransientItem
{
	int GetAddress();

	double GetCalibrationHardBoundMax();

	double GetCalibrationHardBoundMin();

	double GetCalibrationImplHardBoundMax();

	double GetCalibrationImplHardBoundMin();

	double GetCalibrationImplMinIncrement();

	double GetCalibrationImplWeakBoundMax();

	double GetCalibrationImplWeakBoundMin();

	double GetCalibrationMinIncrement();

	double GetCalibrationWeakBoundMax();

	double GetCalibrationWeakBoundMin();

	bool SetWeakBoundtoHardBound();
}
