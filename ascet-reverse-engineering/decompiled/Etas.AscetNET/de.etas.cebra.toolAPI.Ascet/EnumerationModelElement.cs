using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[Guid("694DD5EC-BF88-49c5-9D29-7994B3801FE5")]
[ComVisible(true)]
[ProgId("Ascet.EnumerationModelElement")]
public class EnumerationModelElement : PrimitiveModelElement, EnumerationModelElement_Dispatch
{
	object EnumerationModelElement_Dispatch.GetEnumerator()
	{
		return GetEnumerator();
	}

	bool EnumerationModelElement_Dispatch.SetEnumerator(object dispatch_enumerator)
	{
		AscetEnumeration enumerator = (AscetEnumeration)dispatch_enumerator;
		return SetEnumerator(enumerator);
	}

	object EnumerationModelElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object EnumerationModelElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object EnumerationModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object EnumerationModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object EnumerationModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public EnumerationModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
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

	public override bool IsEnumeration()
	{
		return true;
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
}
