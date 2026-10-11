using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[Guid("FE116C60-AC8A-11D3-9138-02FEFE0102B6")]
[ComVisible(true)]
[ProgId("Ascet.CalibrationDataItem")]
[ClassInterface(ClassInterfaceType.None)]
public class CalibrationDataItem : ExperimentDataItem, CalibrationDataItem_Dispatch
{
	public CalibrationDataItem(Experiment e, Identifiable h)
		: base(e, h)
	{
	}

	public CalibrationDataItem(ExperimentDataItem di, Identifiable h)
		: base(di, h)
	{
	}

	public CalibrationDataItem(ExperimentElement el, Identifiable h)
		: base(el, h)
	{
	}

	public CalibrationDataItem(SmalltalkToolAPI existingHandle, Identifiable newHandle)
		: base(existingHandle, newHandle)
	{
	}

	public new static ExperimentDataItem factory(SmalltalkToolAPI sender, Identifiable handle)
	{
		try
		{
			if (sender.performIsMethod(handle, "CalibrationDataElement"))
			{
				if (sender.performIsMethod(handle, "ScalarDataElement"))
				{
					return new CalibrationScalarData(sender, handle);
				}
				if (sender.performIsMethod(handle, "ArrayDataElement"))
				{
					return new CalibrationArrayData(sender, handle);
				}
				if (sender.performIsMethod(handle, "DistributionDataElement"))
				{
					return new CalibrationDistributionData(sender, handle);
				}
				if (sender.performIsMethod(handle, "RescaledDistributionDataElement"))
				{
					return new CalibrationRescaleDistributionData(sender, handle);
				}
				if (sender.performIsMethod(handle, "OneDTableDataElement"))
				{
					return new CalibrationOneDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "RescaledOneDTableDataElement"))
				{
					return new CalibrationRescaleOneDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "TwoDTableDataElement"))
				{
					return new CalibrationTwoDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "RescaledTwoDTableDataElement"))
				{
					return new CalibrationRescaleTwoDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "MatrixDataElement"))
				{
					return new CalibrationMatrixData(sender, handle);
				}
				if (sender.performIsMethod(handle, "CurveAxisOneDTableDataElement"))
				{
					return new CalibrationCurveAxisOneDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "CurveAxisTwoDTableDataElement"))
				{
					return new CalibrationCurveAxisTwoDTableData(sender, handle);
				}
				if (sender.performIsMethod(handle, "CurveAxisDataElement"))
				{
					return new CalibrationCurveAxisData(sender, handle);
				}
			}
		}
		catch (Exception ex)
		{
			sender.logEntry("CalibrationDataItem.factory(" + sender.GetType().FullName + ", " + handle.GetType().FullName + "): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual int GetAddress()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAddress");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAddress(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationHardBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationHardBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationHardBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationHardBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationHardBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationHardBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplHardBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplHardBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplHardBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplHardBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplHardBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplHardBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationImplWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationImplWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationImplWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationMinIncrement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationMinIncrement");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationMinIncrement(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationWeakBoundMax()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationWeakBoundMax");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationWeakBoundMax(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public virtual double GetCalibrationWeakBoundMin()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCalibrationWeakBoundMin");
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCalibrationWeakBoundMin(): failed. -> APIError: " + ex);
		}
		throw new ErrorResultException();
	}

	public override bool IsCalibrationDataItem()
	{
		return true;
	}

	public virtual bool SetWeakBoundtoHardBound()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setWeakBoundtoHardBound");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetWeakBoundtoHardBound(): failed. -> APIError: " + ex);
		}
		return false;
	}
}
