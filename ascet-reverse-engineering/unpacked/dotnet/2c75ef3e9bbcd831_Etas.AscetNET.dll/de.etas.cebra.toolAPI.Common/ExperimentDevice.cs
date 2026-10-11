using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Common;

[ComVisible(true)]
[Guid("AFFCD72F-87B8-11D3-8A08-00A0247767D8")]
[ProgId("Ascet.ExperimentDevice")]
[ClassInterface(ClassInterfaceType.None)]
public class ExperimentDevice : TransientItem, ExperimentDevice_Dispatch, IExperimentDevice, ITransientItem
{
	object ExperimentDevice_Dispatch.ActivateRci2ForAcquisitionRate(string name)
	{
		sbyte[] oTypedArray = ActivateRci2ForAcquisitionRate(name);
		return Adapter.ToObject(oTypedArray);
	}

	object ExperimentDevice_Dispatch.GetAllAcquisitionRates()
	{
		string[] allAcquisitionRates = GetAllAcquisitionRates();
		return Adapter.ToObject(allAcquisitionRates);
	}

	public ExperimentDevice(ClientSender sender, Identifiable h)
		: base(sender, h)
	{
	}

	public ExperimentDevice(Experiment t, Identifiable h)
		: base(t.Sender, h)
	{
	}

	public virtual sbyte[] ActivateRci2ForAcquisitionRate(string name)
	{
		Identifiable identifiable = null;
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("activateRci2ForGroup:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			identifiable = instanceMethodCall.ResultRemoteObject;
			instanceMethodCall = new InstanceMethodCall(identifiable, "reference", this);
			call(instanceMethodCall);
			return instanceMethodCall.ResultByteArray;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ActivateRci2ForAcquisitionRate(...): failed. -> APIError: " + ex);
		}
		finally
		{
			removeObject(identifiable);
		}
		return null;
	}

	public virtual bool DeActivateRci2ForAcquisitionRate(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deactivateRci2ForGroup:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DeActivateRci2ForAcquisitionRate(...): failed. -> APIError: " + ex);
		}
		return false;
	}

	public virtual string[] GetAllAcquisitionRates()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllAcquisitionRates");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			return getStringsFromCollection(coll);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAllAcquisitionRates(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetDeviceType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDeviceName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetDeviceType(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual double GetSampleRateFor(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getSampleRateOfSignalGroup:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return instanceMethodCall.ResultDouble;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetSampleRateFor(" + aName + "): failed. -> APIError: " + ex);
		}
		return 0.0;
	}

	public virtual bool IsAcquisitionRateAvailable(string rate)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isAcquisitionRateAvailable:");
			instanceMethodCall.appendParameter(rate);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsAcquisitionRateAvailable(): failed. -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsActive()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isActive");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsActive(): failed. -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsCANMonitoringDevice()
	{
		return isXXX(this, "CANMonitoringDevice");
	}

	public override bool IsExperimentDevice()
	{
		return true;
	}

	public virtual bool IsKwp2000Device()
	{
		return isXXX(this, "Kwp2000Device");
	}

	public virtual bool IsWorkbaseDevice()
	{
		return false;
	}

	public virtual bool ResetTarget()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("resetTarget");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".ResetTarget(): failed. -> APIError: " + ex);
		}
		return false;
	}

	public virtual sbyte[] sendL1Message(sbyte[] message)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("transferL1Message:");
			instanceMethodCall.appendParameter(message);
			call(instanceMethodCall);
			return instanceMethodCall.ResultByteArray;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".sendL1Message(): failed. -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool StartTargetOS()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("startTargetOS");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".StartTargetOS(): failed. -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool StopTargetOS()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("stopTargetOS");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".StopTargetOS(): failed. -> APIError: " + ex);
		}
		return false;
	}
}
