using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("7F05AC61-C813-11D3-8A2E-00A0247767D8")]
[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.CalibrationRescaleDistributionData")]
public class CalibrationRescaleDistributionData : CalibrationDistributionData, CalibrationRescaleDistributionData_Dispatch, ICalibrationRescaleDistributionData, ICalibrationDistributionData, ICalibrationArrayData, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationRescaleDistributionData_Dispatch.GetDoublePhysScales()
	{
		double[] doublePhysScales = GetDoublePhysScales();
		return Adapter.ToObject(doublePhysScales);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetFloatPhysScales()
	{
		float[] floatPhysScales = GetFloatPhysScales();
		return Adapter.ToObject(floatPhysScales);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetIntegerPhysScales()
	{
		int[] integerPhysScales = GetIntegerPhysScales();
		return Adapter.ToObject(integerPhysScales);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetLongPhysScales()
	{
		long[] longPhysScales = GetLongPhysScales();
		return Adapter.ToObject(longPhysScales);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetDoublePhysScales(object value_Renamed)
	{
		double[] doublePhysScales = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoublePhysScales(doublePhysScales);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetFloatPhysScales(object value_Renamed)
	{
		float[] floatPhysScales = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatPhysScales(floatPhysScales);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetIntegerPhysScales(object value_Renamed)
	{
		int[] integerPhysScales = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerPhysScales(integerPhysScales);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetLongPhysScales(object value_Renamed)
	{
		long[] longPhysScales = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongPhysScales(longPhysScales);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetBooleanPhysValue(object value_Renamed)
	{
		bool[] booleanPhysValue = Adapter.ToArray1Number<bool>(value_Renamed);
		return SetBooleanPhysValue(booleanPhysValue);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetDoublePhysValue(object value_Renamed)
	{
		double[] doublePhysValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoublePhysValue(doublePhysValue);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetFloatPhysValue(object value_Renamed)
	{
		float[] floatPhysValue = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatPhysValue(floatPhysValue);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetImplValue(object value_Renamed)
	{
		double[] implValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetImplValue(implValue);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetIntegerPhysValue(object value_Renamed)
	{
		int[] integerPhysValue = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerPhysValue(integerPhysValue);
	}

	bool CalibrationRescaleDistributionData_Dispatch.SetLongPhysValue(object value_Renamed)
	{
		long[] longPhysValue = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongPhysValue(longPhysValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationRescaleDistributionData_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	public CalibrationRescaleDistributionData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationRescaleDistributionData(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
	}

	public CalibrationRescaleDistributionData(ExperimentDataItem di, string d, Identifiable h)
		: base(di, d, h)
	{
	}

	public CalibrationRescaleDistributionData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationRescaleDistributionData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual double[] GetDoublePhysScales()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysScales");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			float[] floatPhysValue = GetFloatPhysValue();
			if (floatPhysValue == null)
			{
				logEntry(GetType().FullName + ".GetDoublePhysScales failed()");
				return null;
			}
			double[] array = new double[floatPhysValue.Length];
			for (int i = 0; i < floatPhysValue.Length; i++)
			{
				array[i] = floatPhysValue[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetDoublePhysScales(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual float[] GetFloatPhysScales()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysScales");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getFloatFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatPhysScales(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[] GetIntegerPhysScales()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysScales");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerPhysScales(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetLongPhysScales()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysScales");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getLongFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			int[] integerPhysValue = GetIntegerPhysValue();
			if (integerPhysValue == null)
			{
				logEntry(GetType().FullName + ".GetLongPhysScales(): failed");
				return null;
			}
			long[] array = new long[integerPhysValue.Length];
			for (int i = 0; i < integerPhysValue.Length; i++)
			{
				array[i] = integerPhysValue[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetLongPhysScales(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public override bool IsRescaleDistribution()
	{
		return true;
	}

	public virtual bool SetDoublePhysScales(double[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysScales:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetDoublePhysScales(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetFloatPhysScales(float[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysScales:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetFloatPhysScales(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetIntegerPhysScales(int[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysScales:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetIntegerPhysScales(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetLongPhysScales(long[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysScales:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetLongPhysScales(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	protected internal override void setVal()
	{
		if (dataItem != null && !dataItem.nullHandle())
		{
			if (dataItem.IsCalibrationDataItem() && ((CalibrationDataItem)dataItem).IsRescaleOneDTable())
			{
				((CalibrationRescaleOneDTableData)dataItem).SetDistribution(this);
			}
			else if ((object)direction == "x")
			{
				((CalibrationRescaleTwoDTableData)dataItem).SetXDistribution(this);
			}
			else
			{
				((CalibrationRescaleTwoDTableData)dataItem).SetYDistribution(this);
			}
		}
	}
}
