using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("A0ED2D25-DCD6-11D4-9864-00105A36DC87")]
[ProgId("Ascet.ReadOnlyMatrixData")]
public class ReadOnlyMatrixData : DataItem, IReadOnlyMatrixData, IDataItem, IConfigurationItem, ReadOnlyMatrixData_Dispatch
{
	public ReadOnlyMatrixData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public virtual bool[][] GetBooleanValue()
	{
		try
		{
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
					logEntry(GetType().FullName + ".GetBooleanValue() failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetBooleanValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual double[][] GetDoubleValue()
	{
		try
		{
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
						logEntry(GetType().FullName + ".GetDoubleValue() failed");
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
			logEntry(GetType().FullName + ".GetDoubleValue() failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual float[][] GetFloatValue()
	{
		try
		{
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
					logEntry(GetType().FullName + ".GetFloatValue() failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatValue() failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int[][] GetIntegerValue()
	{
		try
		{
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
					logEntry(GetType().FullName + ".GetIntegerValue(): failed");
					return null;
				}
			}
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual long[][] GetLongValue()
	{
		try
		{
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
						logEntry(GetType().FullName + ".GetLongValue(): failed");
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
			logEntry(GetType().FullName + ".GetLongValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("No longer supported since ASCET V4.0", false)]
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

	[Obsolete("No longer supported since ASCET V4.0", false)]
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

	object ReadOnlyMatrixData_Dispatch.GetBooleanValue()
	{
		bool[][] booleanValue = GetBooleanValue();
		return Adapter.ToObject(booleanValue);
	}

	object ReadOnlyMatrixData_Dispatch.GetDoubleValue()
	{
		double[][] doubleValue = GetDoubleValue();
		return Adapter.ToObject(doubleValue);
	}

	object ReadOnlyMatrixData_Dispatch.GetFloatValue()
	{
		float[][] floatValue = GetFloatValue();
		return Adapter.ToObject(floatValue);
	}

	object ReadOnlyMatrixData_Dispatch.GetIntegerValue()
	{
		int[][] integerValue = GetIntegerValue();
		return Adapter.ToObject(integerValue);
	}

	object ReadOnlyMatrixData_Dispatch.GetLongValue()
	{
		long[][] longValue = GetLongValue();
		return Adapter.ToObject(longValue);
	}

	object ReadOnlyMatrixData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
