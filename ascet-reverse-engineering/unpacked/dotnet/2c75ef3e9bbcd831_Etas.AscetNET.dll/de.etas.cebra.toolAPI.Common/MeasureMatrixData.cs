using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("707CCCF2-8869-11D3-8A09-00A0247767D8")]
[ProgId("Ascet.MeasureMatrixData")]
public class MeasureMatrixData : MeasureDataItem, IMeasureMatrixData, IMeasureDataItem, IExperimentDataItem, ITransientItem, MeasureMatrixData_Dispatch
{
	protected internal ExperimentElement experimentElement;

	public MeasureMatrixData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public MeasureMatrixData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public MeasureMatrixData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool[][] GetBooleanPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			bool[][] array = new bool[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getBooleanFromCollection(coll2);
				if (array[i] == null)
				{
					logEntry(GetType().FullName + ".GetBooleanPhysValue() failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBooleanPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[][] GetDoublePhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			double[][] array = new double[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getDoubleFromCollection(coll2);
				if (array[i] == null)
				{
					float[] floatFromCollection = getFloatFromCollection(coll2);
					if (floatFromCollection == null)
					{
						logEntry(GetType().FullName + ".GetDoublePhysValue() failed");
						return null;
					}
					array[i] = new double[floatFromCollection.Length];
					for (int j = 0; j < floatFromCollection.Length; j++)
					{
						array[i][j] = floatFromCollection[j];
					}
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDoublePhysValue() failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual float[][] GetFloatPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			float[][] array = new float[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getFloatFromCollection(coll2);
				if (array[i] == null)
				{
					logEntry(GetType().FullName + ".GetFloatPhysValue() failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatPhysValue() failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[][] GetImplValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			double[][] array = new double[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getDoubleFromCollection(coll2);
				if (array[i] == null)
				{
					logEntry(GetType().FullName + ".GetImplValue() failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplValue() failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[][] GetIntegerPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			int[][] array = new int[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getIntegerFromCollection(coll2);
				if (array[i] == null)
				{
					logEntry(GetType().FullName + ".GetIntegerPhysValue(): failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[][] GetLongPhysValue()
	{
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			long[][] array = new long[remoteObjectsFromCollection.Length][];
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				OrderedCollection coll2 = new OrderedCollection(this, remoteObjectsFromCollection[i]);
				array[i] = getLongFromCollection(coll2);
				if (array[i] == null)
				{
					int[] integerFromCollection = getIntegerFromCollection(coll2);
					if (integerFromCollection == null)
					{
						logEntry(GetType().FullName + ".GetLongPhysValue(): failed");
						return null;
					}
					array[i] = new long[integerFromCollection.Length];
					for (int j = 0; j < integerFromCollection.Length; j++)
					{
						array[i][j] = integerFromCollection[j];
					}
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetLongPhysValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public int GetMaxXSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxXSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxXSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public int GetMaxYSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxYSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxYSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public int GetXSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public int GetYSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public override bool IsMatrix()
	{
		return true;
	}

	object MeasureMatrixData_Dispatch.GetBooleanPhysValue()
	{
		bool[][] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object MeasureMatrixData_Dispatch.GetDoublePhysValue()
	{
		double[][] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object MeasureMatrixData_Dispatch.GetFloatPhysValue()
	{
		float[][] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object MeasureMatrixData_Dispatch.GetImplValue()
	{
		double[][] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object MeasureMatrixData_Dispatch.GetIntegerPhysValue()
	{
		int[][] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object MeasureMatrixData_Dispatch.GetLongPhysValue()
	{
		long[][] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	object MeasureMatrixData_Dispatch.ActivateRci2()
	{
		sbyte[] oTypedArray = ActivateRci2();
		return Adapter.ToObject(oTypedArray);
	}
}
