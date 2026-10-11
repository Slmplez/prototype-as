using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("A0ED2D2C-DCD6-11D4-9864-00105A36DC87")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationReadOnlyArray")]
public class CalibrationReadOnlyArray : CalibrationDataItem, CalibrationReadOnlyArray_Dispatch, ICalibrationReadOnlyArray, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationReadOnlyArray_Dispatch.GetBooleanPhysValue()
	{
		bool[] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationReadOnlyArray_Dispatch.GetDoublePhysValue()
	{
		double[] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationReadOnlyArray_Dispatch.GetFloatPhysValue()
	{
		float[] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationReadOnlyArray_Dispatch.GetImplValue()
	{
		double[] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationReadOnlyArray_Dispatch.GetIntegerPhysValue()
	{
		int[] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationReadOnlyArray_Dispatch.GetLongPhysValue()
	{
		long[] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	public CalibrationReadOnlyArray(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationReadOnlyArray(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
	}

	public CalibrationReadOnlyArray(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationReadOnlyArray(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool[] GetBooleanPhysValue()
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
			logEntry(GetType().FullName + ".GetBooleanPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[] GetDoublePhysValue()
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

	public virtual int GetMaxSize()
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

	public virtual string GetPhysType()
	{
		return getPhysicalType();
	}

	public virtual int GetSize()
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

	public override bool IsReadOnly()
	{
		return true;
	}

	public virtual bool IsWriteProtected()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isWriteProtected");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsWriteProtected(): failed -> APIError: " + ex);
		}
		return false;
	}
}
