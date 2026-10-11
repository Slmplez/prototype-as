using System.Runtime.InteropServices;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("AFFCD72E-87B8-11D3-8A08-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.DistributionData")]
public class DistributionData : ArrayData, DistributionData_Dispatch, IDistributionData, IArrayData, IReadOnlyArrayData, IDataItem, IConfigurationItem
{
	public const string X = "x";

	public const string Y = "y";

	protected internal string direction;

	bool DistributionData_Dispatch.SetBooleanValue(object value_Renamed)
	{
		bool[] booleanValue = Adapter.ToArray1Number<bool>(value_Renamed);
		return SetBooleanValue(booleanValue);
	}

	bool DistributionData_Dispatch.SetDoubleValue(object value_Renamed)
	{
		double[] doubleValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoubleValue(doubleValue);
	}

	bool DistributionData_Dispatch.SetFloatValue(object value_Renamed)
	{
		float[] floatValue = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatValue(floatValue);
	}

	bool DistributionData_Dispatch.SetIntegerValue(object value_Renamed)
	{
		int[] integerValue = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerValue(integerValue);
	}

	bool DistributionData_Dispatch.SetLongValue(object value_Renamed)
	{
		long[] longValue = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongValue(longValue);
	}

	object DistributionData_Dispatch.GetBooleanValue()
	{
		bool[] booleanValue = GetBooleanValue();
		return Adapter.ToObject(booleanValue);
	}

	object DistributionData_Dispatch.GetDoubleValue()
	{
		double[] doubleValue = GetDoubleValue();
		return Adapter.ToObject(doubleValue);
	}

	object DistributionData_Dispatch.GetFloatValue()
	{
		float[] floatValue = GetFloatValue();
		return Adapter.ToObject(floatValue);
	}

	object DistributionData_Dispatch.GetIntegerValue()
	{
		int[] integerValue = GetIntegerValue();
		return Adapter.ToObject(integerValue);
	}

	object DistributionData_Dispatch.GetLongValue()
	{
		long[] longValue = GetLongValue();
		return Adapter.ToObject(longValue);
	}

	object DistributionData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public DistributionData(Configuration config, PersistentItem modelElement, DataItem di, string d, Identifiable h)
		: base(config, modelElement, di, h)
	{
		direction = d;
	}

	public DistributionData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public override bool IsDistribution()
	{
		return true;
	}

	protected internal override void setVal()
	{
		if (configuration == null || configuration.nullHandle() || primitiveModelElement == null || primitiveModelElement.nullHandle())
		{
			return;
		}
		if (dataItem == null)
		{
			base.setVal();
		}
		else if (dataItem != null && !dataItem.nullHandle())
		{
			if (dataItem.IsOneDTable())
			{
				((OneDTableData)dataItem).SetDistribution(this);
			}
			else if ((object)direction == "x")
			{
				((TwoDTableData)dataItem).SetXDistribution(this);
			}
			else
			{
				((TwoDTableData)dataItem).SetYDistribution(this);
			}
			configuration.SetItem(dataItem, primitiveModelElement);
		}
	}
}
