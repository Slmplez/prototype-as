using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("7F05AC62-C813-11D3-8A2E-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationRescaleOneDTableData")]
public class CalibrationRescaleOneDTableData : CalibrationOneDTableData, ICalibrationRescaleOneDTableData, ICalibrationOneDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem, CalibrationRescaleOneDTableData_Dispatch
{
	public CalibrationRescaleOneDTableData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationRescaleOneDTableData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationRescaleOneDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual CalibrationReadOnlyDistributionData GetCalculatedDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalculatedXDistribution");
			call(instanceMethodCall);
			return new CalibrationReadOnlyDistributionData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalculatedDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override CalibrationDistributionData GetDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new CalibrationRescaleDistributionData(this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsOneDTable()
	{
		return false;
	}

	public override bool IsRescaleOneDTable()
	{
		return true;
	}

	public override bool SetDistribution(CalibrationDistributionData dis)
	{
		if (dis == null || dis.nullHandle() || !dis.IsRescaleDistribution())
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

	object CalibrationRescaleOneDTableData_Dispatch.GetCalculatedDistribution()
	{
		return GetCalculatedDistribution();
	}

	object CalibrationRescaleOneDTableData_Dispatch.GetDistribution()
	{
		return GetDistribution();
	}

	bool CalibrationRescaleOneDTableData_Dispatch.SetDistribution(object dispatch_dis)
	{
		CalibrationDistributionData distribution = (CalibrationDistributionData)dispatch_dis;
		return SetDistribution(distribution);
	}

	object CalibrationRescaleOneDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool CalibrationRescaleOneDTableData_Dispatch.SetValue(object dispatch_array)
	{
		CalibrationArrayData value = (CalibrationArrayData)dispatch_array;
		return SetValue(value);
	}
}
