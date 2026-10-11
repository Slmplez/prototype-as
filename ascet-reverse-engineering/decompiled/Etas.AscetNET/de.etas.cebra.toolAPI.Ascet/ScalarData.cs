using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.ScalarData")]
[Guid("707CCCF7-8869-11D3-8A09-00A0247767D8")]
public class ScalarData : ReadOnlyScalarData, IScalarData, IReadOnlyScalarData, IDataItem, IConfigurationItem, ScalarData_Dispatch
{
	public ScalarData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public override bool IsScalar()
	{
		return true;
	}

	public bool SetStringValue(string value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetBooleanValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetBooleanValue(bool value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetBooleanValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetDoubleValue(double value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDoubleValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetFloatValue(float value_Renamed)
	{
		if (float.IsInfinity(value_Renamed))
		{
			throw new ArgumentException("float value range exceeded.");
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetFloatValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetIntegerValue(int value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetIntegerValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetLongValue(long value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetLongValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	bool ScalarData_Dispatch.SetFloatValue(double value_Renamed)
	{
		float floatValue = (float)value_Renamed;
		return SetFloatValue(floatValue);
	}

	bool ScalarData_Dispatch.SetLongValue(int value_Renamed)
	{
		long longValue = value_Renamed;
		return SetLongValue(longValue);
	}

	double ScalarData_Dispatch.GetFloatValue()
	{
		float floatValue = GetFloatValue();
		return Adapter.ToDouble(floatValue);
	}

	int ScalarData_Dispatch.GetLongValue()
	{
		long longValue = GetLongValue();
		return (int)longValue;
	}

	object ScalarData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
