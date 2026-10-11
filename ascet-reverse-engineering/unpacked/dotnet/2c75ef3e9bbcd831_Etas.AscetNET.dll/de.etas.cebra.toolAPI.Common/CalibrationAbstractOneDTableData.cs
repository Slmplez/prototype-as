using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
public abstract class CalibrationAbstractOneDTableData : CalibrationDataItem, ICalibrationAbstractOneDTableData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	public CalibrationAbstractOneDTableData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual double GetCalibrationImplXAxisMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXAxisImplMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplXAxisMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplXAxisWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplXAxisWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplXAxisWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplXAxisWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplXAxisWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplXAxisWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationXAxisMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXAxisMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationXAxisMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual string GetCalibrationXAxisSourceLabel()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXAxisSourceLabel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationXAxisSourceLabel(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual double GetCalibrationXAxisWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationXAxisWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationXAxisWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationXAxisWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationXAxisWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationXAxisWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual bool SetXAxisWeakBoundtoHardBound()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXAxisWeakBoundtoHardBound");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXAxisWeakBoundtoHardBound(): failed. -> APIError: " + ex);
		}
		return false;
	}
}
