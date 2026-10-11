using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("7F05AC60-C813-11D3-8A2E-00A0247767D8")]
[ProgId("Ascet.CalibrationReadOnlyDistributionData")]
[ClassInterface(ClassInterfaceType.None)]
public class CalibrationReadOnlyDistributionData : CalibrationReadOnlyArray, CalibrationReadOnlyDistributionData_Dispatch, ICalibrationReadOnlyDistributionData, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationReadOnlyDistributionData_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationReadOnlyDistributionData_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationReadOnlyDistributionData_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationReadOnlyDistributionData_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationReadOnlyDistributionData_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationReadOnlyDistributionData_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	public CalibrationReadOnlyDistributionData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationReadOnlyDistributionData(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
	}

	public CalibrationReadOnlyDistributionData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public override bool IsArray()
	{
		return false;
	}

	public override bool IsDistribution()
	{
		return true;
	}
}
