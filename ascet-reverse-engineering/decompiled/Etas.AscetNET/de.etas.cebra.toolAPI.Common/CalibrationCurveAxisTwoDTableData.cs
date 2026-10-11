using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("CE84A387-AA4E-41CB-BC80-BE6BAF61FC12")]
[ProgId("Ascet.CalibrationCurveAxisTwoDTableData")]
public class CalibrationCurveAxisTwoDTableData : CalibrationAbstractTwoDTableData, CalibrationCurveAxisTwoDTableData_Dispatch, ICalibrationCurveAxisTwoDTableData, ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationCurveAxisTwoDTableData_Dispatch.GetCalculatedXDistribution()
	{
		return GetCalculatedXDistribution();
	}

	object CalibrationCurveAxisTwoDTableData_Dispatch.GetCalculatedYDistribution()
	{
		return GetCalculatedYDistribution();
	}

	object CalibrationCurveAxisTwoDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	object CalibrationCurveAxisTwoDTableData_Dispatch.GetXCurveAxis()
	{
		return GetXCurveAxis();
	}

	object CalibrationCurveAxisTwoDTableData_Dispatch.GetYCurveAxis()
	{
		return GetYCurveAxis();
	}

	bool CalibrationCurveAxisTwoDTableData_Dispatch.SetValue(object dispatch_matrix)
	{
		CalibrationMatrixData value = (CalibrationMatrixData)dispatch_matrix;
		return SetValue(value);
	}

	public CalibrationCurveAxisTwoDTableData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationCurveAxisTwoDTableData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationCurveAxisTwoDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
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

	public virtual CalibrationCurveAxisData GetXCurveAxis()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXCurveAxis");
			call(instanceMethodCall);
			return new CalibrationCurveAxisData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXCurveAxis(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CalibrationCurveAxisData GetYCurveAxis()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYCurveAxis");
			call(instanceMethodCall);
			return new CalibrationCurveAxisData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYCurveAxis(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsCurveAxisTwoDTable()
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
}
