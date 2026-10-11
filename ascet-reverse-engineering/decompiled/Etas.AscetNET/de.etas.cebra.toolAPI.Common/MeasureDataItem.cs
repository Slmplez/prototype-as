using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ClassInterface(ClassInterfaceType.None)]
[Guid("FE116C67-AC8A-11D3-9138-02FEFE0102B6")]
[ComVisible(true)]
[ProgId("Ascet.MeasureDataItem")]
public class MeasureDataItem : ExperimentDataItem, MeasureDataItem_Dispatch
{
	object MeasureDataItem_Dispatch.ActivateRci2()
	{
		sbyte[] oTypedArray = ActivateRci2();
		return Adapter.ToObject(oTypedArray);
	}

	public MeasureDataItem(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public MeasureDataItem(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public MeasureDataItem(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public virtual sbyte[] ActivateRci2()
	{
		Identifiable identifiable = null;
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateRci2");
			call(instanceMethodCall);
			identifiable = instanceMethodCall.ResultRemoteObject;
			instanceMethodCall = new InstanceMethodCall(identifiable, "reference", this);
			call(instanceMethodCall);
			return instanceMethodCall.ResultByteArray;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateRci2(): failed. -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual bool DeActivateRci2()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deactivateRci2");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeActivateRci2(): failed. -> APIError: " + ex);
		}
		return false;
	}

	public new static ExperimentDataItem factory(SmalltalkToolAPI sender, Identifiable handle)
	{
		try
		{
			if (sender.performIsMethod(handle, "MeasureDataElement"))
			{
				if (sender.performIsMethod(handle, "ScalarDataElement"))
				{
					return new MeasureScalarData(sender, handle);
				}
				if (sender.performIsMethod(handle, "ArrayDataElement"))
				{
					return new MeasureArrayData(sender, handle);
				}
				if (sender.performIsMethod(handle, "MatrixDataElement"))
				{
					return new MeasureMatrixData(sender, handle);
				}
			}
		}
		catch (Exception ex)
		{
			sender.logEntry("MeasureDataItem.factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetCurrentAcquisitionRate()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCurrentAcquisitionRate");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCurrentAcquisitionRate(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual double GetMeasureRangeMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMeasureRangeMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMeasureRangeMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetMeasureRangeMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMeasureRangeMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMeasureRangeMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual string GetPhysType()
	{
		return getPhysicalType();
	}

	public override bool IsMeasureDataItem()
	{
		return true;
	}

	public virtual bool SetCurrentAcquisitionRate(string rate)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCurrentAcquisitionRate:");
			instanceMethodCall.appendParameter(rate);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCurrentAcquisitionRate(...): failed. -> APIError: " + ex);
		}
		return false;
	}
}
