using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A0ED2D26-DCD6-11D4-9864-00105A36DC87")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.ReadOnlyScalarData")]
public class ReadOnlyScalarData : DataItem, ReadOnlyScalarData_Dispatch, IReadOnlyScalarData, IDataItem, IConfigurationItem
{
	double ReadOnlyScalarData_Dispatch.GetFloatValue()
	{
		float floatValue = GetFloatValue();
		return Adapter.ToDouble(floatValue);
	}

	int ReadOnlyScalarData_Dispatch.GetLongValue()
	{
		long longValue = GetLongValue();
		return (int)longValue;
	}

	object ReadOnlyScalarData_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ReadOnlyScalarData(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public virtual string GetStringValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetStringValue() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetStringValue() failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetStringValue() failed.");
		}
		throw new ErrorResultException();
	}

	public virtual bool GetBooleanValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetBooleanValue() failed. Component handle is null.");
		}
		catch (ErrorResultException ex2)
		{
			logEntry(GetType().FullName + ".GetBooleanValue() failed: " + ex2);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetBooleanValue() failed.");
		}
		throw new ErrorResultException();
	}

	public virtual double GetDoubleValue()
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
				return GetFloatValue();
			}
			catch (Exception)
			{
				logEntry(GetType().FullName + ".GetDoubleValue(): failed -> APIError: " + ex);
				throw new ErrorResultException();
			}
		}
		catch (Exception ex3)
		{
			logEntry(GetType().FullName + ".GetDoubleValue(): failed -> APIError: " + ex3);
		}
		throw new ErrorResultException();
	}

	public virtual float GetFloatValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultFloat;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetFloatValue() failed -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual int GetIntegerValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysValue");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetIntegerValue() failed -> APIError:" + ex);
		}
		throw new ErrorResultException();
	}

	public virtual long GetLongValue()
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
				return GetIntegerValue();
			}
			catch (Exception)
			{
				throw new ErrorResultException();
			}
		}
		catch (NullHandleException)
		{
			logEntry(GetType().FullName + ".GetLongValue() failed. Component handle is null.");
		}
		catch (ErrorResultException ex4)
		{
			logEntry(GetType().FullName + ".GetLongValue() failed: " + ex4);
		}
		catch (Exception)
		{
			logEntry(GetType().FullName + ".GetLongValue() failed.");
		}
		throw new ErrorResultException();
	}
}
