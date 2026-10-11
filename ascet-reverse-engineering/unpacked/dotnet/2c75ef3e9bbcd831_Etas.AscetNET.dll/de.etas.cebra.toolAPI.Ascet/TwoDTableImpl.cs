using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.TwoDTableImpl")]
[Guid("A3DF3EBD-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class TwoDTableImpl : ImplItem, TwoDTableImpl_Dispatch, ITwoDTableImpl, IImplItem, IConfigurationItem
{
	object TwoDTableImpl_Dispatch.GetImplInfoForValue()
	{
		return GetImplInfoForValue();
	}

	object TwoDTableImpl_Dispatch.GetImplInfoForXDistribution()
	{
		return GetImplInfoForXDistribution();
	}

	object TwoDTableImpl_Dispatch.GetImplInfoForYDistribution()
	{
		return GetImplInfoForYDistribution();
	}

	bool TwoDTableImpl_Dispatch.SetImplInfoForValue(object dispatch_implInfo)
	{
		ImplInfo implInfoForValue = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForValue(implInfoForValue);
	}

	bool TwoDTableImpl_Dispatch.SetImplInfoForXDistribution(object dispatch_implInfo)
	{
		ImplInfo implInfoForXDistribution = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForXDistribution(implInfoForXDistribution);
	}

	bool TwoDTableImpl_Dispatch.SetImplInfoForYDistribution(object dispatch_implInfo)
	{
		ImplInfo implInfoForYDistribution = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForYDistribution(implInfoForYDistribution);
	}

	object TwoDTableImpl_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public TwoDTableImpl(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public ImplInfo GetImplInfoForValue()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getValue");
			call(instanceMethodCall);
			return new ImplInfo(configuration, primitiveModelElement, this, "value", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplInfoForValue(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplInfo GetImplInfoForXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new ImplInfo(configuration, primitiveModelElement, this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplInfoForXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public ImplInfo GetImplInfoForYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYDistribution");
			call(instanceMethodCall);
			return new ImplInfo(configuration, primitiveModelElement, this, "y", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplInfoForYDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetRecordLayout()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getRecordLayout");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetRecordLayout(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsTwoDTableImpl()
	{
		return true;
	}

	public bool SetImplInfoForValue(ImplInfo implInfo)
	{
		if (implInfo == null || implInfo.nullHandle())
		{
			logEntry(GetType().FullName + ".SetImplInfoForValue() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setValue:");
			instanceMethodCall.appendParameter(implInfo);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplInfoForValue(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetImplInfoForXDistribution(ImplInfo implInfo)
	{
		if (implInfo == null || implInfo.nullHandle())
		{
			logEntry(GetType().FullName + ".SetImplInfoForXDistribution() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXDistribution:");
			instanceMethodCall.appendParameter(implInfo);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplInfoForXDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetImplInfoForYDistribution(ImplInfo implInfo)
	{
		if (implInfo == null || implInfo.nullHandle())
		{
			logEntry(GetType().FullName + ".SetImplInfoForYDistribution() failed");
			return false;
		}
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYDistribution:");
			instanceMethodCall.appendParameter(implInfo);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplInfoForYDistribution(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetRecordLayout(string recordLayout)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setRecordLayout:");
			instanceMethodCall.appendParameter(recordLayout);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetRecordLayout(" + recordLayout + "): failed -> APIError: " + ex);
		}
		return false;
	}
}
