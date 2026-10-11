using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("707CCCF0-8869-11D3-8A09-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.MeasureArrayData")]
public class MeasureArrayData : MeasureDataItem, IMeasureArrayData, IMeasureDataItem, IExperimentDataItem, ITransientItem, MeasureArrayData_Dispatch
{
	protected internal ExperimentElement experimentElement;

	public MeasureArrayData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public MeasureArrayData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public MeasureArrayData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool[] GetBooleanPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getBooleanFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBooleanPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[] GetDoublePhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			float[] floatPhysValue = GetFloatPhysValue();
			if (floatPhysValue == null)
			{
				logEntry(GetType().FullName + ".GetDoublePhysValue failed()");
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
			logEntry(GetType().FullName + ".GetDoublePhysValue(): failed -> APIError: " + ex2);
		}
		return null;
	}

	public virtual float[] GetFloatPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getFloatFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[] GetImplValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getDoubleFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[] GetIntegerPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getIntegerFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[] GetLongPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getLongFromCollection(coll);
		}
		catch (WrongResultTypeException)
		{
			int[] integerPhysValue = GetIntegerPhysValue();
			if (integerPhysValue == null)
			{
				logEntry(GetType().FullName + ".GetLongPhysValue(): failed");
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
			logEntry(GetType().FullName + ".GetLongPhysValue(): failed -> APIError: " + ex2);
		}
		return null;
	}

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

	public override bool IsArray()
	{
		return true;
	}

	object MeasureArrayData_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object MeasureArrayData_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object MeasureArrayData_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object MeasureArrayData_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object MeasureArrayData_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object MeasureArrayData_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	object MeasureArrayData_Dispatch.ActivateRci2()
	{
		sbyte[] oTypedArray = ActivateRci2();
		return Adapter.ToObject(oTypedArray);
	}
}
