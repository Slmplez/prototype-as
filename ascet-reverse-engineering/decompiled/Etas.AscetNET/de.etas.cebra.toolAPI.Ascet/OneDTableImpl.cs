using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EBB-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.OneDTableImpl")]
public class OneDTableImpl : ImplItem, OneDTableImpl_Dispatch, IOneDTableImpl, IImplItem, IConfigurationItem
{
	object OneDTableImpl_Dispatch.GetImplInfoForDistribution()
	{
		return GetImplInfoForDistribution();
	}

	object OneDTableImpl_Dispatch.GetImplInfoForValue()
	{
		return GetImplInfoForValue();
	}

	bool OneDTableImpl_Dispatch.SetImplInfoForDistribution(object dispatch_implInfo)
	{
		ImplInfo implInfoForDistribution = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForDistribution(implInfoForDistribution);
	}

	bool OneDTableImpl_Dispatch.SetImplInfoForValue(object dispatch_implInfo)
	{
		ImplInfo implInfoForValue = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForValue(implInfoForValue);
	}

	object OneDTableImpl_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public OneDTableImpl(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public ImplInfo GetImplInfoForDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new ImplInfo(configuration, primitiveModelElement, this, "x", instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplInfoForDistribution(): failed -> APIError: " + ex);
		}
		return null;
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

	public override bool IsOneDTableImpl()
	{
		return true;
	}

	public bool SetImplInfoForDistribution(ImplInfo implInfo)
	{
		if (implInfo == null || implInfo.nullHandle())
		{
			logEntry(GetType().FullName + ".SetImplInfoForDistribution() failed");
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
			logEntry(GetType().FullName + ".SetImplInfoForDistribution(): failed -> APIError: " + ex);
		}
		return false;
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
