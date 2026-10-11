using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.BoolImpl")]
[Guid("A3DF3EB7-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class BoolImpl : ImplItem, IBoolImpl, IImplItem, IConfigurationItem, BoolImpl_Dispatch
{
	public const string LOG = "log";

	public BoolImpl(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public string GetAdditionalInfo()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAdditionalInfo");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAdditionalInfo(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetImplType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getImplType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetImplType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetModelType()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getModelType");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetModelType(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsBoolImpl()
	{
		return true;
	}

	public bool SetAdditionalInfo(string additionalInfo)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setAdditionalInfo:");
			instanceMethodCall.appendParameter(additionalInfo);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetAdditionalInfo(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetImplType(string implType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setImplType:");
			instanceMethodCall.appendParameter(implType);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			setImpl();
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetImplType(" + implType + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object BoolImpl_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
