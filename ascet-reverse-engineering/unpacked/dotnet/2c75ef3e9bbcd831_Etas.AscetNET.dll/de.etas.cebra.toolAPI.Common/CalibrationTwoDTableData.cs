using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ProgId("Ascet.CalibrationTwoDTableData")]
[Guid("707CCCE8-8869-11D3-8A09-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class CalibrationTwoDTableData : CalibrationAbstractTwoDTableData, CalibrationTwoDTableData_Dispatch, ICalibrationTwoDTableData, ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationTwoDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	object CalibrationTwoDTableData_Dispatch.GetXDistribution()
	{
		return GetXDistribution();
	}

	object CalibrationTwoDTableData_Dispatch.GetYDistribution()
	{
		return GetYDistribution();
	}

	bool CalibrationTwoDTableData_Dispatch.SetValue(object dispatch_matrix)
	{
		CalibrationMatrixData value = (CalibrationMatrixData)dispatch_matrix;
		return SetValue(value);
	}

	bool CalibrationTwoDTableData_Dispatch.SetXDistribution(object dispatch_dis)
	{
		CalibrationDistributionData xDistribution = (CalibrationDistributionData)dispatch_dis;
		return SetXDistribution(xDistribution);
	}

	bool CalibrationTwoDTableData_Dispatch.SetYDistribution(object dispatch_dis)
	{
		CalibrationDistributionData yDistribution = (CalibrationDistributionData)dispatch_dis;
		return SetYDistribution(yDistribution);
	}

	public CalibrationTwoDTableData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationTwoDTableData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationTwoDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual CalibrationMatrixData GetValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValue");
			call(instanceMethodCall);
			return new CalibrationMatrixData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CalibrationDistributionData GetXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new CalibrationDistributionData(this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CalibrationDistributionData GetYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYDistribution");
			call(instanceMethodCall);
			return new CalibrationDistributionData(this, "y", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsTwoDTable()
	{
		return true;
	}

	public virtual bool SetValue(CalibrationMatrixData matrix)
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
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetValue(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetXDistribution(CalibrationDistributionData dis)
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
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetYDistribution(CalibrationDistributionData dis)
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
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}
}
