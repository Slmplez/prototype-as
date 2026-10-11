using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("073716F6-B955-11D3-8A2C-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.PrimitiveDiscreteModelElement")]
[ComVisible(true)]
public class PrimitiveDiscreteModelElement : PrimitiveModelElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement, PrimitiveDiscreteModelElement_Dispatch
{
	public PrimitiveDiscreteModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsPrimitiveDiscreteModelElement()
	{
		return true;
	}

	protected internal virtual bool setToConst()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToConstant");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToConstant() failed: " + ex);
		}
		return false;
	}

	protected internal virtual bool setToParam()
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

	protected internal virtual bool setToSystemConst()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToSystemConstant");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToSystemConstant() failed: " + ex);
		}
		return false;
	}

	protected internal virtual bool setToVar()
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

	object PrimitiveDiscreteModelElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object PrimitiveDiscreteModelElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object PrimitiveDiscreteModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object PrimitiveDiscreteModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object PrimitiveDiscreteModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
