using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("FE116C65-AC8A-11D3-9138-02FEFE0102B6")]
[ComVisible(true)]
[ProgId("Ascet.ExperimentDataItem")]
[ClassInterface(ClassInterfaceType.None)]
public class ExperimentDataItem : TransientItem, ExperimentDataItem_Dispatch
{
	public ExperimentDataItem(Experiment e, Identifiable h)
		: base(e.Sender, h)
	{
	}

	public ExperimentDataItem(ExperimentDataItem di, Identifiable h)
		: base(di.Sender, h)
	{
	}

	public ExperimentDataItem(ExperimentElement el, Identifiable h)
		: base(el.Sender, h)
	{
	}

	public ExperimentDataItem(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle.Sender, newHandle)
	{
	}

	public static ExperimentDataItem factory(SmalltalkToolAPI sender, Identifiable handle)
	{
		ExperimentDataItem experimentDataItem = null;
		try
		{
			experimentDataItem = CalibrationDataItem.factory(sender, handle);
			if (experimentDataItem != null)
			{
				return experimentDataItem;
			}
			return MeasureDataItem.factory(sender, handle);
		}
		catch (Exception ex)
		{
			sender.logEntry("ExperimentDataItem.factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual void get_Renamed()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("get");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
		}
		catch (Exception ex)
		{
			throw ex;
		}
	}

	protected internal virtual string getPhysicalType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getPhysType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getPhysicalType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsArray()
	{
		return false;
	}

	public virtual bool IsCalibrationDataItem()
	{
		return false;
	}

	public virtual bool IsCurveAxis()
	{
		return false;
	}

	public virtual bool IsCurveAxisOneDTable()
	{
		return false;
	}

	public virtual bool IsCurveAxisTwoDTable()
	{
		return false;
	}

	public virtual bool IsDistribution()
	{
		return false;
	}

	public override bool IsExperimentDataItem()
	{
		return true;
	}

	public virtual bool IsMatrix()
	{
		return false;
	}

	public virtual bool IsMeasureDataItem()
	{
		return false;
	}

	public virtual bool IsOneDTable()
	{
		return false;
	}

	public virtual bool IsReadOnly()
	{
		return false;
	}

	public virtual bool IsRescaleDistribution()
	{
		return false;
	}

	public virtual bool IsRescaleOneDTable()
	{
		return false;
	}

	public virtual bool IsRescaleTwoDTable()
	{
		return false;
	}

	public virtual bool IsScalar()
	{
		return false;
	}

	public virtual bool IsTwoDTable()
	{
		return false;
	}

	public virtual string Label()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("label");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".Label(): failed -> APIError: " + ex);
		}
		return null;
	}
}
