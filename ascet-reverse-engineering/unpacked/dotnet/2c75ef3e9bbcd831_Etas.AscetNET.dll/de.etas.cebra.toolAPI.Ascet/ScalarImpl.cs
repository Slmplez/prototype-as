using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[ClassInterface(ClassInterfaceType.None)]
[Guid("A3DF3EBC-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.ScalarImpl")]
public class ScalarImpl : ImplItem, ScalarImpl_Dispatch, IScalarImpl, IImplItem, IConfigurationItem
{
	object ScalarImpl_Dispatch.GetImplInfoForValue()
	{
		return GetImplInfoForValue();
	}

	bool ScalarImpl_Dispatch.SetImplInfoForValue(object dispatch_implInfo)
	{
		ImplInfo implInfoForValue = (ImplInfo)dispatch_implInfo;
		return SetImplInfoForValue(implInfoForValue);
	}

	object ScalarImpl_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ScalarImpl(Configuration config, PersistentItem modelElement, Identifiable h)
		: base(config, modelElement, h)
	{
	}

	public virtual ImplInfo GetImplInfoForValue()
	{
		InstanceMethodCall instanceMethodCall = createInstanceMethodCall("copy");
		call(instanceMethodCall);
		return new ImplInfo(configuration, primitiveModelElement, this, "value", instanceMethodCall.ResultRemoteObject);
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

	public override bool IsScalarImpl()
	{
		return true;
	}

	public virtual bool SetImplInfoForValue(ImplInfo implInfo)
	{
		return true;
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
