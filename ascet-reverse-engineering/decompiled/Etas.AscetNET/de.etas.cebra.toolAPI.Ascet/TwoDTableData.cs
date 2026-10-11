using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("AFFCD73C-87B8-11D3-8A08-00A0247767D8")]
[ProgId("Ascet.TwoDTableData")]
[ClassInterface(ClassInterfaceType.None)]
public class TwoDTableData : DataItem, ITwoDTableData, IDataItem, IConfigurationItem, TwoDTableData_Dispatch
{
	public TwoDTableData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public MatrixData GetValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValue");
			call(instanceMethodCall);
			return new MatrixData(configuration, primitiveModelElement, this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public DistributionData GetXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new DistributionData(configuration, primitiveModelElement, this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXDistribution(): failed -> APIError: " + ex);
		}
		return null;
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

	public DistributionData GetYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYDistribution");
			call(instanceMethodCall);
			return new DistributionData(configuration, primitiveModelElement, this, "y", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYDistribution(): failed -> APIError: " + ex);
		}
		return null;
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

	public override bool IsTwoDTable()
	{
		return true;
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

	public bool SetValue(MatrixData matrix)
	{
		if (matrix == null || matrix.nullHandle())
		{
			logEntry(GetType().FullName + ".SetValue() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setValue:");
			instanceMethodCall.appendParameter(matrix);
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

	public bool SetXDistribution(DistributionData dis)
	{
		if (dis == null || dis.nullHandle())
		{
			logEntry(GetType().FullName + ".SetXDistribution() failed");
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
			logEntry(GetType().FullName + ".SetXDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetXSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXSize(" + size + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetYDistribution(DistributionData dis)
	{
		if (dis == null || dis.nullHandle())
		{
			logEntry(GetType().FullName + ".SetYDistribution() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYDistribution:");
			instanceMethodCall.appendParameter(dis);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetYSize(int size)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYSize:");
			instanceMethodCall.appendParameter(size);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setVal();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYSize(" + size + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object TwoDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	object TwoDTableData_Dispatch.GetXDistribution()
	{
		return GetXDistribution();
	}

	object TwoDTableData_Dispatch.GetYDistribution()
	{
		return GetYDistribution();
	}

	bool TwoDTableData_Dispatch.SetValue(object dispatch_matrix)
	{
		MatrixData value = (MatrixData)dispatch_matrix;
		return SetValue(value);
	}

	bool TwoDTableData_Dispatch.SetXDistribution(object dispatch_dis)
	{
		DistributionData xDistribution = (DistributionData)dispatch_dis;
		return SetXDistribution(xDistribution);
	}

	bool TwoDTableData_Dispatch.SetYDistribution(object dispatch_dis)
	{
		DistributionData yDistribution = (DistributionData)dispatch_dis;
		return SetYDistribution(yDistribution);
	}

	object TwoDTableData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
