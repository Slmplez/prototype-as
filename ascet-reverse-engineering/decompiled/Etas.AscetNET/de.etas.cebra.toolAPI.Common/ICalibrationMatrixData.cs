using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(false)]
public interface ICalibrationMatrixData : ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	bool[][] GetBooleanPhysValue();

	double[][] GetDoublePhysValue();

	float[][] GetFloatPhysValue();

	double[][] GetImplValue();

	int[][] GetIntegerPhysValue();

	long[][] GetLongPhysValue();

	int GetMaxXSize();

	int GetMaxYSize();

	string GetPhysType();

	int GetXSize();

	int GetYSize();

	bool IsWriteProtected();

	bool SetBooleanPhysValue(bool[][] value_Renamed);

	bool SetDoublePhysValue(double[][] value_Renamed);

	bool SetFloatPhysValue(float[][] value_Renamed);

	bool SetImplValue(double[][] value_Renamed);

	bool SetIntegerPhysValue(int[][] value_Renamed);

	bool SetLongPhysValue(long[][] value_Renamed);

	bool SetXSize(int xSize);

	bool SetYSize(int ySize);
}
