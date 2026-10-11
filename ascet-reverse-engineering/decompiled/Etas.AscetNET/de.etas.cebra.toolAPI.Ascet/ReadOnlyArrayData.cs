using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.ReadOnlyArrayData")]
[Guid("A0ED2D24-DCD6-11D4-9864-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class ReadOnlyArrayData : DataItem, ReadOnlyArrayData_Dispatch, IReadOnlyArrayData, IDataItem, IConfigurationItem
{
	object ReadOnlyArrayData_Dispatch.GetBooleanValue()
	{
		bool[] booleanValue = GetBooleanValue();
		return Adapter.ToObject(booleanValue);
	}

	object ReadOnlyArrayData_Dispatch.GetDoubleValue()
	{
		double[] doubleValue = GetDoubleValue();
		return Adapter.ToObject(doubleValue);
	}

	object ReadOnlyArrayData_Dispatch.GetFloatValue()
	{
		float[] floatValue = GetFloatValue();
		return Adapter.ToObject(floatValue);
	}

	object ReadOnlyArrayData_Dispatch.GetIntegerValue()
	{
		int[] integerValue = GetIntegerValue();
		return Adapter.ToObject(integerValue);
	}

	object ReadOnlyArrayData_Dispatch.GetLongValue()
	{
		long[] longValue = GetLongValue();
		return Adapter.ToObject(longValue);
	}

	object ReadOnlyArrayData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ReadOnlyArrayData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public virtual bool[] GetBooleanValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getBooleanFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBooleanValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[] GetDoubleValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			float[] floatValue = GetFloatValue();
			if (floatValue == null)
			{
				logEntry(GetType().FullName + ".GetDoubleValue failed()");
				return null;
			}
			double[] array = new double[floatValue.Length];
			for (int i = 0; i < floatValue.Length; i++)
			{
				array[i] = floatValue[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetDoubleValue(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual float[] GetFloatValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getFloatFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[] GetIntegerValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetLongValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getLongFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			int[] integerValue = GetIntegerValue();
			if (integerValue == null)
			{
				logEntry(GetType().FullName + ".GetLongValue(): failed");
				return null;
			}
			long[] array = new long[integerValue.Length];
			for (int i = 0; i < integerValue.Length; i++)
			{
				array[i] = integerValue[i];
			}
			return array;
		}
		catch (Exception ex2)
		{
			logEntry(GetType().FullName + ".GetLongValue(): failed -> APIError: " + ex2);
		}
		return null;
	}

	[Obsolete("No longer supported since ASCET V4.0", false)]
	public int GetMaxSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public int GetSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSize(): failed -> APIError: " + ex);
		}
		return 0;
	}
}
