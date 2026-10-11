using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("707CCCF3-8869-11D3-8A09-00A0247767D8")]
[ProgId("Ascet.MeasureScalarData")]
[ClassInterface(ClassInterfaceType.None)]
public class MeasureScalarData : MeasureDataItem, MeasureScalarData_Dispatch, IMeasureScalarData, IMeasureDataItem, IExperimentDataItem, ITransientItem
{
	protected internal ExperimentElement experimentElement;

	double MeasureScalarData_Dispatch.GetFloatPhysValue()
	{
		float floatPhysValue = GetFloatPhysValue();
		return Adapter.ToDouble(floatPhysValue);
	}

	int MeasureScalarData_Dispatch.GetLongPhysValue()
	{
		long longPhysValue = GetLongPhysValue();
		return (int)longPhysValue;
	}

	object MeasureScalarData_Dispatch.ActivateRci2()
	{
		sbyte[] oTypedArray = ActivateRci2();
		return Adapter.ToObject(oTypedArray);
	}

	public MeasureScalarData(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public MeasureScalarData(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public MeasureScalarData(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual bool GetBooleanPhysValue()
	{
		string text = "";
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			text = GetType().FullName + ".GetBooleanPhysValue() failed. Component handle is null.";
		}
		catch (ErrorResultException ex2)
		{
			text = GetType().FullName + ".GetBooleanPhysValue() failed: " + ex2;
		}
		catch (Exception)
		{
			text = GetType().FullName + ".GetBooleanPhysValue() failed.";
		}
		logEntry(text);
		throw new ErrorResultException(text);
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
		string text = "";
		try
		{
			get_Renamed();
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
				text = GetType().FullName + ".GetDoublePhysValue(): failed -> APIError: " + ex;
			}
		}
		catch (Exception ex3)
		{
			text = GetType().FullName + ".GetDoublePhysValue(): failed -> APIError: " + ex3;
		}
		logEntry(text);
		throw new ErrorResultException(text);
	}

	public virtual float GetFloatPhysValue()
	{
		string text = "";
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultFloat;
		}
		catch (Exception ex)
		{
			text = GetType().FullName + ".GetFloatPhysValue() failed -> APIError: " + ex;
		}
		logEntry(text);
		throw new ErrorResultException(text);
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
		string text = "";
		try
		{
			get_Renamed();
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			text = GetType().FullName + ".GetIntegerPhysValue() failed -> APIError:" + ex;
		}
		logEntry(text);
		throw new ErrorResultException(text);
	}

	public virtual long GetLongPhysValue()
	{
		string text = "";
		try
		{
			get_Renamed();
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
			catch (Exception ex2)
			{
				throw new ErrorResultException(ex2.ToString());
			}
		}
		catch (NullHandleException)
		{
			text = GetType().FullName + ".GetLongPhysValue() failed. Component handle is null.";
		}
		catch (ErrorResultException ex4)
		{
			text = GetType().FullName + ".GetLongPhysValue() failed: " + ex4;
		}
		catch (Exception)
		{
			text = GetType().FullName + ".GetLongPhysValue() failed.";
		}
		logEntry(text);
		throw new ErrorResultException(text);
	}

	public override bool IsScalar()
	{
		return true;
	}
}
