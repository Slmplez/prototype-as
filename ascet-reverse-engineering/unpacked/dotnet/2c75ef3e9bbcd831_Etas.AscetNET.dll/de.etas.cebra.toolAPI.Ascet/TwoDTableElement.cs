using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3EB6-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.TwoDTableElement")]
public class TwoDTableElement : OneDTableElement, ITwoDTableElement, IOneDTableElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, TwoDTableElement_Dispatch
{
	public TwoDTableElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public int GetMaxXSize()
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

	public int GetMaxYSize()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getMaxYSize");
			call(instanceMethodCall);
			return instanceMethodCall.ResultInteger;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetMaxYSize(): failed -> APIError: " + ex);
		}
		return 0;
	}

	public virtual DistributionElement GetYDistribution()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getYDistribution");
			call(instanceMethodCall);
			return new DistributionElement((CodeComponent)component, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetYXDistribution(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsOneDTable()
	{
		return false;
	}

	public override bool IsTwoDTable()
	{
		return true;
	}

	public bool SetMaxXSize(int maxXSize)
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

	public bool SetMaxYSize(int maxYSize)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setMaxYSize:");
			instanceMethodCall.appendParameter(maxYSize);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetMaxYSize(" + maxYSize + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetYDistribution(DistributionElement yDistribution)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setYDistribution:");
			instanceMethodCall.appendParameter(yDistribution);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetYDistribution(" + yDistribution.GetName() + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object TwoDTableElement_Dispatch.GetYDistribution()
	{
		return GetYDistribution();
	}

	bool TwoDTableElement_Dispatch.SetYDistribution(object dispatch_yDistribution)
	{
		DistributionElement yDistribution = (DistributionElement)dispatch_yDistribution;
		return SetYDistribution(yDistribution);
	}

	object TwoDTableElement_Dispatch.GetXDistribution()
	{
		return GetXDistribution();
	}

	bool TwoDTableElement_Dispatch.SetXDistribution(object dispatch_xDistribution)
	{
		DistributionElement xDistribution = (DistributionElement)dispatch_xDistribution;
		return SetXDistribution(xDistribution);
	}

	object TwoDTableElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object TwoDTableElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object TwoDTableElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object TwoDTableElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object TwoDTableElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
