using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.DistributionElement")]
[Guid("A3DF3EA4-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class DistributionElement : PrimitiveDiscreteModelElement, IDistributionElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, DistributionElement_Dispatch
{
	public DistributionElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public int GetMaxSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public override bool IsDistribution()
	{
		return true;
	}

	public override bool IsParameter()
	{
		return isXXX("Parameter");
	}

	public bool IsVariable()
	{
		return isXXX("Variable");
	}

	public bool SetMaxSize(int maxSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxSize:");
			instanceMethodCall.appendParameter(maxSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxSize(" + maxSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetToParameter()
	{
		return setToParam();
	}

	public bool SetToVariable()
	{
		return setToVar();
	}

	object DistributionElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object DistributionElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object DistributionElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object DistributionElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object DistributionElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
