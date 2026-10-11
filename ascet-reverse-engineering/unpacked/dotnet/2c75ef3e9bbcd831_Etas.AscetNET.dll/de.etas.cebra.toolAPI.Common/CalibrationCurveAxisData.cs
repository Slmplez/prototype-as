using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("47DE20D3-36FE-42BC-BB8E-32280F898486")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationCurveAxisData")]
public class CalibrationCurveAxisData : CalibrationOneDTableData, CalibrationCurveAxisData_Dispatch, ICalibrationCurveAxisData, ICalibrationOneDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationCurveAxisData_Dispatch.GetDistribution()
	{
		return GetDistribution();
	}

	object CalibrationCurveAxisData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool CalibrationCurveAxisData_Dispatch.SetDistribution(object dispatch_dis)
	{
		CalibrationDistributionData distribution = (CalibrationDistributionData)dispatch_dis;
		return SetDistribution(distribution);
	}

	bool CalibrationCurveAxisData_Dispatch.SetValue(object dispatch_array)
	{
		CalibrationArrayData value = (CalibrationArrayData)dispatch_array;
		return SetValue(value);
	}

	public CalibrationCurveAxisData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationCurveAxisData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationCurveAxisData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public override bool IsCurveAxis()
	{
		return true;
	}

	public override bool IsOneDTable()
	{
		return false;
	}
}
