using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("707CCCEE-8869-11D3-8A09-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.MatrixData")]
[ClassInterface(ClassInterfaceType.None)]
public class MatrixData : ReadOnlyMatrixData, MatrixData_Dispatch, IMatrixData, IReadOnlyMatrixData, IDataItem, IConfigurationItem
{
	protected internal DataItem dataItem;

	bool MatrixData_Dispatch.SetBooleanValue(object value_Renamed)
	{
		bool[][] booleanValue = Adapter.ToArray2Jagged<bool>(value_Renamed);
		return SetBooleanValue(booleanValue);
	}

	bool MatrixData_Dispatch.SetDoubleValue(object value_Renamed)
	{
		double[][] doubleValue = Adapter.ToArray2Jagged<double>(value_Renamed);
		return SetDoubleValue(doubleValue);
	}

	bool MatrixData_Dispatch.SetFloatValue(object value_Renamed)
	{
		float[][] floatValue = Adapter.ToArray2Jagged<float>(value_Renamed);
		return SetFloatValue(floatValue);
	}

	bool MatrixData_Dispatch.SetIntegerValue(object value_Renamed)
	{
		int[][] integerValue = Adapter.ToArray2Jagged<int>(value_Renamed);
		return SetIntegerValue(integerValue);
	}

	bool MatrixData_Dispatch.SetLongValue(object value_Renamed)
	{
		long[][] longValue = Adapter.ToArray2Jagged<long>(value_Renamed);
		return SetLongValue(longValue);
	}

	object MatrixData_Dispatch.GetBooleanValue()
	{
		bool[][] booleanValue = GetBooleanValue();
		return Adapter.ToObject(booleanValue);
	}

	object MatrixData_Dispatch.GetDoubleValue()
	{
		double[][] doubleValue = GetDoubleValue();
		return Adapter.ToObject(doubleValue);
	}

	object MatrixData_Dispatch.GetFloatValue()
	{
		float[][] floatValue = GetFloatValue();
		return Adapter.ToObject(floatValue);
	}

	object MatrixData_Dispatch.GetIntegerValue()
	{
		int[][] integerValue = GetIntegerValue();
		return Adapter.ToObject(integerValue);
	}

	object MatrixData_Dispatch.GetLongValue()
	{
		long[][] longValue = GetLongValue();
		return Adapter.ToObject(longValue);
	}

	object MatrixData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public MatrixData(Configuration config, PersistentItem modelElement, DataItem di, Identifiable h)
		: base(config, modelElement, h)
	{
		dataItem = di;
	}

	public MatrixData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public override bool IsMatrix()
	{
		return true;
	}

	public bool SetBooleanValue(bool[][] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetBooleanValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetDoubleValue(double[][] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetDoubleValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetFloatValue(float[][] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetFloatValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetIntegerValue(int[][] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetIntegerValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	public bool SetLongValue(long[][] value_Renamed)
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
			logEntry(string.Concat(GetType().FullName, ".SetLongValue(", value_Renamed, "): failed -> APIError: ", ex));
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V4.0", false)]
	public bool SetMaxXSize(int maxXSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxXSize:");
			instanceMethodCall.appendParameter(maxXSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxXSize(" + maxXSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("No longer supported since ASCET V4.0", false)]
	public bool SetMaxYSize(int maxYSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxYSize:");
			instanceMethodCall.appendParameter(maxYSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxYSize(" + maxYSize + "): failed -> APIError: " + ex);
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
				((TwoDTableData)dataItem).SetValue(this);
				configuration.SetItem(dataItem, primitiveModelElement);
			}
		}
	}

	public bool SetXSize(int xSize)
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

	public bool SetYSize(int ySize)
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
