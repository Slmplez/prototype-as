using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E81-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.ArrayElement")]
public class ArrayElement : PrimitiveDiscreteModelElement, ArrayElement_Dispatch, IArrayElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object ArrayElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ArrayElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ArrayElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ArrayElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ArrayElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ArrayElement(CodeComponent component, Identifiable h)
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

	public override bool IsArray()
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
}
