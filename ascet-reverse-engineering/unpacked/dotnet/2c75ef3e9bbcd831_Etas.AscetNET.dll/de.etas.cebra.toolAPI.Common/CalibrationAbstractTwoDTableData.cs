using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class CalibrationAbstractTwoDTableData : CalibrationAbstractOneDTableData, ICalibrationAbstractTwoDTableData, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	public CalibrationAbstractTwoDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual double GetCalibrationImplYAxisMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYAxisImplMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplYAxisMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplYAxisWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplYAxisWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplYAxisWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplYAxisWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplYAxisWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplYAxisWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationYAxisMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYAxisMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationYAxisMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual string GetCalibrationYAxisSourceLabel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYAxisSourceLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationYAxisSourceLabel(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual double GetCalibrationYAxisWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationYAxisWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationYAxisWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationYAxisWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationYAxisWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationYAxisWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual bool SetYAxisWeakBoundtoHardBound()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYAxisWeakBoundtoHardBound");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYAxisWeakBoundtoHardBound(): failed. -> APIError: " + ex);
		}
		return false;
	}
}
