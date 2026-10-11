using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.OneDTableElement")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[Guid("A3DF3EA9-B490-11D3-8A29-00A0247767D8")]
public class OneDTableElement : PrimitiveModelElement, IOneDTableElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, OneDTableElement_Dispatch
{
	public OneDTableElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public int GetMaxSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxXSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxXSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public virtual DistributionElement GetXDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getXDistribution");
			call(instanceMethodCall);
			return new DistributionElement((CodeComponent)component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool IsFixedCharTable()
	{
		return isXXX("FixedCharTable");
	}

	public virtual bool IsGroupCharTable()
	{
		return isXXX("GroupCharTable");
	}

	public override bool IsOneDTable()
	{
		return true;
	}

	public override bool IsParameter()
	{
		return isXXX("Parameter");
	}

	public virtual bool IsVariable()
	{
		return isXXX("Variable");
	}

	public bool SetMaxSize(int maxXSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxXSize:");
			instanceMethodCall.appendParameter(maxXSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxXSize(" + maxXSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetToParameter()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToParameter");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToParameter() failed: " + ex);
		}
		return false;
	}

	public virtual bool SetToVariable()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToVariable");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToVariable() failed: " + ex);
		}
		return false;
	}

	public virtual bool SetXDistribution(DistributionElement xDistribution)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setXDistribution:");
			instanceMethodCall.appendParameter(xDistribution);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetXDistribution(" + xDistribution.GetName() + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object OneDTableElement_Dispatch.GetXDistribution()
	{
		return GetXDistribution();
	}

	bool OneDTableElement_Dispatch.SetXDistribution(object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return SetXDistribution(xDistribution);
	}

	object OneDTableElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object OneDTableElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object OneDTableElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object OneDTableElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object OneDTableElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
