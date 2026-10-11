using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("707CCCE7-8869-11D3-8A09-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.CalibrationScalarData")]
public class CalibrationScalarData : CalibrationDataItem, CalibrationScalarData_Dispatch, ICalibrationScalarData, ICalibrationDataItem, IExperimentDataItem, ITransientItem
{
	double CalibrationScalarData_Dispatch.GetFloatPhysValue()
	{
		float floatPhysValue = GetFloatPhysValue();
		return Adapter.ToDouble(floatPhysValue);
	}

	int CalibrationScalarData_Dispatch.GetLongPhysValue()
	{
		long longPhysValue = GetLongPhysValue();
		return (int)longPhysValue;
	}

	bool CalibrationScalarData_Dispatch.SetFloatPhysValue(double value_Renamed)
	{
		float floatPhysValue = (float)value_Renamed;
		return SetFloatPhysValue(floatPhysValue);
	}

	bool CalibrationScalarData_Dispatch.SetLongPhysValue(int value_Renamed)
	{
		long longPhysValue = value_Renamed;
		return SetLongPhysValue(longPhysValue);
	}

	public CalibrationScalarData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationScalarData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationScalarData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool GetBooleanPhysValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetBooleanPhysValue() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetBooleanPhysValue() failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetBooleanPhysValue() failed.");
		}
		throw new ErrorResultException();
	}

	public virtual string GetCharPhysValue()
	{
		string text = "";
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			text = GetType().FullName + ".GetCharPhysValue() failed -> APIError:" + ex;
		}
		logEntry(text);
		throw new ErrorResultException(text);
	}

	public virtual double GetDoublePhysValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (WrongResultTypeException ex)
		{
			try
			{
				return GetFloatPhysValue();
			}
			catch (Exception)
			{
				logEntry(GetType().FullName + ".GetDoublePhysValue(): failed -> APIError: " + ex);
				throw new ErrorResultException();
			}
		}
		catch (Exception ex3)
		{
			logEntry(GetType().FullName + ".GetDoublePhysValue(): failed -> APIError: " + ex3);
		}
		throw new ErrorResultException();
	}

	public virtual float GetFloatPhysValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultFloat;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatPhysValue() failed -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetImplValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplValue(): failed -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual int GetIntegerPhysValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerPhysValue() failed -> APIError:" + ex);
		}
		throw new ErrorResultException();
	}

	public virtual long GetLongPhysValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultLong;
		}
		catch (WrongResultTypeException)
		{
			try
			{
				return GetIntegerPhysValue();
			}
			catch (Exception)
			{
				throw new ErrorResultException();
			}
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetLongPhysValue() failed. Component handle is null.");
		}
		catch (ErrorResultException ex4)
		{
			logEntry(GetType().FullName + ".GetLongPhysValue() failed: " + ex4);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetLongPhysValue() failed.");
		}
		throw new ErrorResultException();
	}

	public virtual string GetPhysType()
	{
		return getPhysicalType();
	}

	public override bool IsScalar()
	{
		return true;
	}

	public virtual bool IsWriteProtected()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isWriteProtected");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsWriteProtected(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetBooleanPhysValue(bool value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetBooleanPhysValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCharPhysValue(string value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCharPhysValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetDoublePhysValue(double value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setPhysValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetDoublePhysValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetFloatPhysValue(float value_Renamed)
	{
		return SetDoublePhysValue(value_Renamed);
	}

	public virtual bool SetImplValue(double value_Renamed)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplValue:");
			instanceMethodCall.appendParameter(value_Renamed);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplValue(" + value_Renamed + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetIntegerPhysValue(int value_Renamed)
	{
		return SetDoublePhysValue(value_Renamed);
	}

	public virtual bool SetLongPhysValue(long value_Renamed)
	{
		return SetDoublePhysValue(value_Renamed);
	}
}
