using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
public abstract class PrimitiveCTModelElement : PrimitiveModelElement
{
	public PrimitiveCTModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public override bool IsArray()
	{
		return isXXX("Array");
	}

	public override bool IsPrimitiveCTModelElement()
	{
		return true;
	}

	public override bool IsScalar()
	{
		return isXXX("Scalar");
	}

	public bool SetToArray()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToArray");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToArray(): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetToScalar()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setToScalar");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetToScalar(): faild -> APIError: " + ex);
		}
		return false;
	}
}
