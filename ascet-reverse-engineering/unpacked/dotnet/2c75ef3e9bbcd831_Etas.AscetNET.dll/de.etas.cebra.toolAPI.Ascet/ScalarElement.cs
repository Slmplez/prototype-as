using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.ScalarElement")]
[Guid("A3DF3EAF-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class ScalarElement : PrimitiveDiscreteModelElement, ScalarElement_Dispatch, IScalarElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object ScalarElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool ScalarElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object ScalarElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object ScalarElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object ScalarElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object ScalarElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object ScalarElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ScalarElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public AscetEnumeration GetEnumerator()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getEnumeration");
			call(instanceMethodCall);
			return new AscetEnumeration((AscetDataBase)GetDataBase(), instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetEnumerator(): failed -> APIError :" + ex);
		}
		return null;
	}

	public override bool IsConstant()
	{
		return isXXX("Constant");
	}

	public override bool IsParameter()
	{
		return isXXX("Parameter");
	}

	public override bool IsScalar()
	{
		return true;
	}

	public override bool IsSystemConstant()
	{
		return isXXX("SystemConstant");
	}

	public virtual bool IsVariable()
	{
		return isXXX("Variable");
	}

	public bool SetEnumerator(AscetEnumeration enumerator)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setEnumeration:");
			instanceMethodCall.appendParameter(enumerator);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(string.Concat(GetType().FullName, ".SetEnumerator(", enumerator, "): failed -> APIError :", ex));
		}
		return false;
	}

	public virtual bool SetToConstant()
	{
		return setToConst();
	}

	public virtual bool SetToParameter()
	{
		return setToParam();
	}

	public virtual bool SetToSystemConstant()
	{
		return setToSystemConst();
	}

	public virtual bool SetToVariable()
	{
		return setToVar();
	}
}
