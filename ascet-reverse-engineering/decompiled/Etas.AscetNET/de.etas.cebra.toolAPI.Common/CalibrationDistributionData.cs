using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("707CCCE4-8869-11D3-8A09-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationDistributionData")]
[ClassInterface(ClassInterfaceType.None)]
public class CalibrationDistributionData : CalibrationArrayData, CalibrationDistributionData_Dispatch, ICalibrationDistributionData, ICalibrationArrayData, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	public const string X = "x";

	public const string Y = "y";

	protected internal string direction;

	bool CalibrationDistributionData_Dispatch.SetBooleanPhysValue(object value_Renamed)
	{
		bool[] booleanPhysValue = Adapter.ToArray1Number<bool>(value_Renamed);
		return SetBooleanPhysValue(booleanPhysValue);
	}

	bool CalibrationDistributionData_Dispatch.SetDoublePhysValue(object value_Renamed)
	{
		double[] doublePhysValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoublePhysValue(doublePhysValue);
	}

	bool CalibrationDistributionData_Dispatch.SetFloatPhysValue(object value_Renamed)
	{
		float[] floatPhysValue = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatPhysValue(floatPhysValue);
	}

	bool CalibrationDistributionData_Dispatch.SetImplValue(object value_Renamed)
	{
		double[] implValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetImplValue(implValue);
	}

	bool CalibrationDistributionData_Dispatch.SetIntegerPhysValue(object value_Renamed)
	{
		int[] integerPhysValue = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerPhysValue(integerPhysValue);
	}

	bool CalibrationDistributionData_Dispatch.SetLongPhysValue(object value_Renamed)
	{
		long[] longPhysValue = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongPhysValue(longPhysValue);
	}

	object CalibrationDistributionData_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationDistributionData_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationDistributionData_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationDistributionData_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationDistributionData_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationDistributionData_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	public CalibrationDistributionData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationDistributionData(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
	}

	public CalibrationDistributionData(ExperimentDataItem di, string d, Identifiable h)
		: base(di, h)
	{
		direction = d;
	}

	public CalibrationDistributionData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationDistributionData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
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

	protected internal override void setVal()
	{
		if (dataItem != null && !dataItem.nullHandle())
		{
			if (dataItem.IsCalibrationDataItem() && ((CalibrationDataItem)dataItem).IsOneDTable())
			{
				((CalibrationOneDTableData)dataItem).SetDistribution(this);
			}
			else if ((object)direction == "x")
			{
				((CalibrationTwoDTableData)dataItem).SetXDistribution(this);
			}
			else
			{
				((CalibrationTwoDTableData)dataItem).SetYDistribution(this);
			}
		}
	}
}
