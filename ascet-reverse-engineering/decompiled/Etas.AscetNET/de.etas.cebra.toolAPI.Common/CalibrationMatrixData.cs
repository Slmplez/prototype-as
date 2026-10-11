using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("707CCCE5-8869-11D3-8A09-00A0247767D8")]
[ProgId("Ascet.CalibrationMatrixData")]
[ClassInterface(ClassInterfaceType.None)]
public class CalibrationMatrixData : CalibrationDataItem, CalibrationMatrixData_Dispatch, ICalibrationMatrixData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	protected internal ExperimentDataItem dataItem;

	object CalibrationMatrixData_Dispatch.GetBooleanPhysValue()
	{
		bool[][] booleanPhysValue = GetBooleanPhysValue();
		return Adapter.ToObject(booleanPhysValue);
	}

	object CalibrationMatrixData_Dispatch.GetDoublePhysValue()
	{
		double[][] doublePhysValue = GetDoublePhysValue();
		return Adapter.ToObject(doublePhysValue);
	}

	object CalibrationMatrixData_Dispatch.GetFloatPhysValue()
	{
		float[][] floatPhysValue = GetFloatPhysValue();
		return Adapter.ToObject(floatPhysValue);
	}

	object CalibrationMatrixData_Dispatch.GetImplValue()
	{
		double[][] implValue = GetImplValue();
		return Adapter.ToObject(implValue);
	}

	object CalibrationMatrixData_Dispatch.GetIntegerPhysValue()
	{
		int[][] integerPhysValue = GetIntegerPhysValue();
		return Adapter.ToObject(integerPhysValue);
	}

	object CalibrationMatrixData_Dispatch.GetLongPhysValue()
	{
		long[][] longPhysValue = GetLongPhysValue();
		return Adapter.ToObject(longPhysValue);
	}

	bool CalibrationMatrixData_Dispatch.SetBooleanPhysValue(object value_Renamed)
	{
		bool[][] booleanPhysValue = Adapter.ToArray2Jagged<bool>(value_Renamed);
		return SetBooleanPhysValue(booleanPhysValue);
	}

	bool CalibrationMatrixData_Dispatch.SetDoublePhysValue(object value_Renamed)
	{
		double[][] doublePhysValue = Adapter.ToArray2Jagged<double>(value_Renamed);
		return SetDoublePhysValue(doublePhysValue);
	}

	bool CalibrationMatrixData_Dispatch.SetFloatPhysValue(object value_Renamed)
	{
		float[][] floatPhysValue = Adapter.ToArray2Jagged<float>(value_Renamed);
		return SetFloatPhysValue(floatPhysValue);
	}

	bool CalibrationMatrixData_Dispatch.SetImplValue(object value_Renamed)
	{
		double[][] implValue = Adapter.ToArray2Jagged<double>(value_Renamed);
		return SetImplValue(implValue);
	}

	bool CalibrationMatrixData_Dispatch.SetIntegerPhysValue(object value_Renamed)
	{
		int[][] integerPhysValue = Adapter.ToArray2Jagged<int>(value_Renamed);
		return SetIntegerPhysValue(integerPhysValue);
	}

	bool CalibrationMatrixData_Dispatch.SetLongPhysValue(object value_Renamed)
	{
		long[][] longPhysValue = Adapter.ToArray2Jagged<long>(value_Renamed);
		return SetLongPhysValue(longPhysValue);
	}

	public CalibrationMatrixData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationMatrixData(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
		dataItem = di;
	}

	public CalibrationMatrixData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationMatrixData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool[][] GetBooleanPhysValue()
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

	public virtual int GetMaxXSize()
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

	public virtual int GetMaxYSize()
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

	public virtual string GetPhysType()
	{
		return getPhysicalType();
	}

	public virtual int GetXSize()
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

	public virtual int GetYSize()
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

	public virtual bool SetBooleanPhysValue(bool[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i2);
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

	public virtual bool SetDoublePhysValue(double[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i2);
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

	public virtual bool SetFloatPhysValue(float[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i2);
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

	public virtual bool SetImplValue(double[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplValue:");
			instanceMethodCall.appendParameter(i2);
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

	public virtual bool SetIntegerPhysValue(int[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i2);
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

	public virtual bool SetLongPhysValue(long[][] value_Renamed)
	{
		try
		{
			ETASArray[] array = new ETASArray[value_Renamed.Length];
			for (int i = 0; i < value_Renamed.Length; i++)
			{
				array[i] = setArrayFromValues(value_Renamed[i]);
			}
			ETASArray i2 = setArrayFromValues(array);
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(i2);
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

	protected internal virtual void setVal()
	{
		if (dataItem != null && !dataItem.nullHandle())
		{
			if (dataItem.IsTwoDTable())
			{
				((CalibrationTwoDTableData)dataItem).SetValue(this);
			}
			if (dataItem.IsRescaleTwoDTable())
			{
				((CalibrationRescaleTwoDTableData)dataItem).SetValue(this);
			}
		}
	}

	public virtual bool SetXSize(int xSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXSize:");
			instanceMethodCall.appendParameter(xSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXSize(" + xSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetYSize(int ySize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYSize:");
			instanceMethodCall.appendParameter(ySize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYSize(" + ySize + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
