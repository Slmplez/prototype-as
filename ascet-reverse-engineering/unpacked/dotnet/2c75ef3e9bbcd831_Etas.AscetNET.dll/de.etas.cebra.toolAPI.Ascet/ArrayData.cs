using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("707CCCE1-8869-11D3-8A09-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.ArrayData")]
public class ArrayData : ReadOnlyArrayData, ArrayData_Dispatch, IArrayData, IReadOnlyArrayData, IDataItem, IConfigurationItem
{
	protected internal DataItem dataItem;

	bool ArrayData_Dispatch.SetBooleanValue(object value_Renamed)
	{
		bool[] booleanValue = Adapter.ToArray1Number<bool>(value_Renamed);
		return SetBooleanValue(booleanValue);
	}

	bool ArrayData_Dispatch.SetDoubleValue(object value_Renamed)
	{
		double[] doubleValue = Adapter.ToArray1Number<double>(value_Renamed);
		return SetDoubleValue(doubleValue);
	}

	bool ArrayData_Dispatch.SetFloatValue(object value_Renamed)
	{
		float[] floatValue = Adapter.ToArray1Number<float>(value_Renamed);
		return SetFloatValue(floatValue);
	}

	bool ArrayData_Dispatch.SetIntegerValue(object value_Renamed)
	{
		int[] integerValue = Adapter.ToArray1Number<int>(value_Renamed);
		return SetIntegerValue(integerValue);
	}

	bool ArrayData_Dispatch.SetLongValue(object value_Renamed)
	{
		long[] longValue = Adapter.ToArray1Number<long>(value_Renamed);
		return SetLongValue(longValue);
	}

	object ArrayData_Dispatch.GetBooleanValue()
	{
		bool[] booleanValue = GetBooleanValue();
		return Adapter.ToObject(booleanValue);
	}

	object ArrayData_Dispatch.GetDoubleValue()
	{
		double[] doubleValue = GetDoubleValue();
		return Adapter.ToObject(doubleValue);
	}

	object ArrayData_Dispatch.GetFloatValue()
	{
		float[] floatValue = GetFloatValue();
		return Adapter.ToObject(floatValue);
	}

	object ArrayData_Dispatch.GetIntegerValue()
	{
		int[] integerValue = GetIntegerValue();
		return Adapter.ToObject(integerValue);
	}

	object ArrayData_Dispatch.GetLongValue()
	{
		long[] longValue = GetLongValue();
		return Adapter.ToObject(longValue);
	}

	object ArrayData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ArrayData(Configuration config, PersistentItem modelElement, DataItem di, Identifiable h)
		: base(config, modelElement, h)
	{
		dataItem = di;
	}

	public ArrayData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public override bool IsArray()
	{
		return true;
	}

	public bool SetBooleanValue(bool[] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetBooleanValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetDoubleValue(double[] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetDoubleValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetFloatValue(float[] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetFloatValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetIntegerValue(int[] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetIntegerValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetLongValue(long[] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetLongValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V4.0 Use newMethod instead", false)]
	public bool SetMaxSize(int maxSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxSize:");
			instanceMethodCall.appendParameter(maxSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxSize(" + maxSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetSize(int size)
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

	protected internal override void setVal()
	{
		if (configuration != null && !configuration.nullHandle() && primitiveModelElement != null && !primitiveModelElement.nullHandle())
		{
			if (dataItem == null)
			{
				base.setVal();
			}
			else if (dataItem != null && !dataItem.nullHandle())
			{
				((OneDTableData)dataItem).SetValue(this);
				configuration.SetItem(dataItem, primitiveModelElement);
			}
		}
	}
}
