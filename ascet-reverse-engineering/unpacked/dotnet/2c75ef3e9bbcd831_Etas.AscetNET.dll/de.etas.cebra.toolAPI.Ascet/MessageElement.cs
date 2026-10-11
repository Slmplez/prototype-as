using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public abstract class MessageElement : PrimitiveDiscreteModelElement, IMessageElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	public MessageElement(CodeComponent component, Identifiable h)
		: base(component, h)
	{
	}

	public override bool IsMessage()
	{
		return true;
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
