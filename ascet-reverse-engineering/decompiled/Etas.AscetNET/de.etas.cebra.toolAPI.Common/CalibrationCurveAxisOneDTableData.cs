using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("06077A2E-5A31-4AE1-8C37-F8CA8E315F17")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.CalibrationCurveAxisOneDTableData")]
public class CalibrationCurveAxisOneDTableData : CalibrationAbstractOneDTableData, CalibrationCurveAxisOneDTableData_Dispatch, ICalibrationCurveAxisOneDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	object CalibrationCurveAxisOneDTableData_Dispatch.GetCalculatedDistribution()
	{
		return GetCalculatedDistribution();
	}

	object CalibrationCurveAxisOneDTableData_Dispatch.GetCurveAxis()
	{
		return GetCurveAxis();
	}

	object CalibrationCurveAxisOneDTableData_Dispatch.GetValue()
	{
		return GetValue();
	}

	bool CalibrationCurveAxisOneDTableData_Dispatch.SetValue(object dispatch_array)
	{
		CalibrationArrayData value = (CalibrationArrayData)dispatch_array;
		return SetValue(value);
	}

	public CalibrationCurveAxisOneDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
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

	public virtual CalibrationCurveAxisData GetCurveAxis()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXCurveAxis");
			call(instanceMethodCall);
			return new CalibrationCurveAxisData(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurveAxis(): failed -> APIError: " + ex);
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

	public override bool IsCurveAxisOneDTable()
	{
		return true;
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
