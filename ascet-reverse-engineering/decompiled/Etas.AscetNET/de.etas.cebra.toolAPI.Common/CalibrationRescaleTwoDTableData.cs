using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("7F05AC63-C813-11D3-8A2E-00A0247767D8")]
[ProgId("Ascet.CalibrationRescaleTwoDTableData")]
[ComVisible(true)]
public class CalibrationRescaleTwoDTableData : CalibrationTwoDTableData, ICalibrationRescaleTwoDTableData, ICalibrationTwoDTableData, ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem, CalibrationRescaleTwoDTableData_Dispatch
{
	public CalibrationRescaleTwoDTableData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationRescaleTwoDTableData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationRescaleTwoDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual CalibrationReadOnlyDistributionData GetCalculatedXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalculatedXDistribution");
			call(instanceMethodCall);
			return new CalibrationReadOnlyDistributionData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalculatedXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CalibrationReadOnlyDistributionData GetCalculatedYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalculatedYDistribution");
			call(instanceMethodCall);
			return new CalibrationReadOnlyDistributionData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalculatedYDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override CalibrationDistributionData GetXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new CalibrationRescaleDistributionData(this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override CalibrationDistributionData GetYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYDistribution");
			call(instanceMethodCall);
			return new CalibrationRescaleDistributionData(this, "y", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsRescaleTwoDTable()
	{
		return true;
	}

	public override bool IsTwoDTable()
	{
		return false;
	}

	public override bool SetXDistribution(CalibrationDistributionData dis)
	{
		if (dis == null || dis.nullHandle() || !dis.IsRescaleDistribution())
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
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool SetYDistribution(CalibrationDistributionData dis)
	{
		if (dis == null || dis.nullHandle() || !dis.IsRescaleDistribution())
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
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	object CalibrationRescaleTwoDTableData_Dispatch.GetCalculatedXDistribution()
	{
		return GetCalculatedXDistribution();
	}

	object CalibrationRescaleTwoDTableData_Dispatch.GetCalculatedYDistribution()
	{
		return GetCalculatedYDistribution();
	}

	object CalibrationRescaleTwoDTableData_Dispatch.GetXDistribution()
	{
		return GetXDistribution();
	}

	object CalibrationRescaleTwoDTableData_Dispatch.GetYDistribution()
	{
		return GetYDistribution();
	}

	bool CalibrationRescaleTwoDTableData_Dispatch.SetXDistribution(object dispatch_dis)
	{
		CalibrationDistributionData xDistribution = (CalibrationDistributionData)dispatch_dis;
		return SetXDistribution(xDistribution);
	}

	bool CalibrationRescaleTwoDTableData_Dispatch.SetYDistribution(object dispatch_dis)
	{
		CalibrationDistributionData yDistribution = (CalibrationDistributionData)dispatch_dis;
		return SetYDistribution(yDistribution);
	}

	object CalibrationRescaleTwoDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool CalibrationRescaleTwoDTableData_Dispatch.SetValue(object dispatch_matrix)
	{
		CalibrationMatrixData value = (CalibrationMatrixData)dispatch_matrix;
		return SetValue(value);
	}
}
