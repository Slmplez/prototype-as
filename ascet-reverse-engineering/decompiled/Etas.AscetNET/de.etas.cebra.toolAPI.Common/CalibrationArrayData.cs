using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("707CCCE3-8869-11D3-8A09-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationArrayData")]
public class CalibrationArrayData : CalibrationReadOnlyArray, ICalibrationArrayData, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem, CalibrationArrayData_Dispatch
{
	protected internal ExperimentDataItem dataItem;

	public CalibrationArrayData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationArrayData(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
		dataItem = di;
	}

	public CalibrationArrayData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationArrayData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public override bool IsReadOnly()
	{
		return false;
	}

	public virtual bool SetBooleanPhysValue(bool[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetBooleanPhysValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetDoublePhysValue(double[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetDoublePhysValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetFloatPhysValue(float[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetFloatPhysValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetImplValue(double[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetImplValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetIntegerPhysValue(int[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetIntegerPhysValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetLongPhysValue(long[] value_Renamed)
	{
		try
		{
			ETASArray i = setArrayFromValues(value_Renamed);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetLongPhysValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public virtual bool SetSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetSize(" + size + "): failed -> APIError: " + ex);
		}
		return false;
	}

	protected internal virtual void setVal()
	{
		if (dataItem != null && !dataItem.nullHandle())
		{
			((CalibrationOneDTableData)dataItem).SetValue(this);
		}
	}

	bool CalibrationArrayData_Dispatch.SetBooleanPhysValue(object value_Renamed)
	{
		bool[] booleanPhysValue = Adapter.ToArray1Number<bool>(value_Renamed);
		return SetBooleanPhysValue(booleanPhysValue);
	}

	bool CalibrationArrayData_Dispatch.SetDoublePhysValue(object value_Renamed)
	{
		double[] doublePhysValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoublePhysValue(doublePhysValue);
	}

	bool CalibrationArrayData_Dispatch.SetFloatPhysValue(object value_Renamed)
	{
		float[] floatPhysValue = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatPhysValue(floatPhysValue);
	}

	bool CalibrationArrayData_Dispatch.SetImplValue(object value_Renamed)
	{
		double[] implValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetImplValue(implValue);
	}

	bool CalibrationArrayData_Dispatch.SetIntegerPhysValue(object value_Renamed)
	{
		int[] integerPhysValue = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerPhysValue(integerPhysValue);
	}

	bool CalibrationArrayData_Dispatch.SetLongPhysValue(object value_Renamed)
	{
		long[] longPhysValue = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongPhysValue(longPhysValue);
	}

	object CalibrationArrayData_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationArrayData_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationArrayData_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationArrayData_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationArrayData_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationArrayData_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}
}
