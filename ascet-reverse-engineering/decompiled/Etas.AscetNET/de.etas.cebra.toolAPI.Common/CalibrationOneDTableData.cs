using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ProgId("Ascet.CalibrationOneDTableData")]
[ComVisible(true)]
[Guid("707CCCE6-8869-11D3-8A09-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
public class CalibrationOneDTableData : CalibrationAbstractOneDTableData, CalibrationOneDTableData_Dispatch, ICalibrationOneDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationOneDTableData_Dispatch.GetDistribution()
	{
		return GetDistribution();
	}

	object CalibrationOneDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool CalibrationOneDTableData_Dispatch.SetDistribution(object dispatch_dis)
	{
		CalibrationDistributionData distribution = (CalibrationDistributionData)dispatch_dis;
		return SetDistribution(distribution);
	}

	bool CalibrationOneDTableData_Dispatch.SetValue(object dispatch_array)
	{
		CalibrationArrayData value = (CalibrationArrayData)dispatch_array;
		return SetValue(value);
	}

	public CalibrationOneDTableData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationOneDTableData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationOneDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual CalibrationDistributionData GetDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new CalibrationDistributionData(this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CalibrationArrayData GetValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValue");
			call(instanceMethodCall);
			return new CalibrationArrayData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsOneDTable()
	{
		return true;
	}

	public virtual bool SetDistribution(CalibrationDistributionData dis)
	{
		if (dis == null || dis.nullHandle())
		{
			logEntry(GetType().FullName + ".SetDistribution() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXDistribution:");
			instanceMethodCall.appendParameter(dis);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetValue(CalibrationArrayData array)
	{
		if (array == null || array.nullHandle())
		{
			logEntry(GetType().FullName + ".SetValue() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setValue:");
			instanceMethodCall.appendParameter(array);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetValue(): failed -> APIError: " + ex);
		}
		return false;
	}
}
