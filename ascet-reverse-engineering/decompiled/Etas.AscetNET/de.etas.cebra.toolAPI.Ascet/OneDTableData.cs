using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.OneDTableData")]
[ComVisible(true)]
[Guid("AFFCD737-87B8-11D3-8A08-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class OneDTableData : DataItem, IOneDTableData, IDataItem, IConfigurationItem, OneDTableData_Dispatch
{
	public OneDTableData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public DistributionData GetDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new DistributionData(configuration, primitiveModelElement, this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDistribution(): failed -> APIError: " + ex);
		}
		return null;
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

	public ArrayData GetValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValue");
			call(instanceMethodCall);
			return new ArrayData(configuration, primitiveModelElement, this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsExtrapolationConstant()
	{
		return isXXX("ExtrapolationConstant");
	}

	public virtual bool IsInterpolationLinear()
	{
		return isXXX("InterpolationLinear");
	}

	public virtual bool IsInterpolationRounded()
	{
		return isXXX("InterpolationRounded");
	}

	public override bool IsOneDTable()
	{
		return true;
	}

	public bool SetDistribution(DistributionData dis)
	{
		if (dis == null || dis.nullHandle())
		{
			logEntry(GetType().FullName + ".setXDistribution() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXDistribution:");
			instanceMethodCall.appendParameter(dis);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetExtrapolationConstant()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setExtrapolationConstant");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetExtrapolationConstant() failed: " + ex);
		}
		return false;
	}

	public virtual bool SetInterpolationLinear()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setInterpolationLinear");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetInterpolationLinear() failed: " + ex);
		}
		return false;
	}

	public virtual bool SetInterpolationRounded()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setInterpolationRounded");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetInterpolationRounded() failed: " + ex);
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

	public bool SetValue(ArrayData array)
	{
		if (array == null || array.nullHandle())
		{
			logEntry(GetType().FullName + ".setValue() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setValue:");
			instanceMethodCall.appendParameter(array);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetValue(): failed -> APIError: " + ex);
		}
		return false;
	}

	object OneDTableData_Dispatch.GetDistribution()
	{
		return GetDistribution();
	}

	object OneDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool OneDTableData_Dispatch.SetDistribution(object dispatch_dis)
	{
		DistributionData distribution = (DistributionData)dispatch_dis;
		return SetDistribution(distribution);
	}

	bool OneDTableData_Dispatch.SetValue(object dispatch_array)
	{
		ArrayData value = (ArrayData)dispatch_array;
		return SetValue(value);
	}

	object OneDTableData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
