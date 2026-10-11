using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("A3DF3EA8-B490-11D3-8A29-00A0247767D8")]
[ProgId("Ascet.MatrixElement")]
[ClassInterface(ClassInterfaceType.None)]
public class MatrixElement : PrimitiveDiscreteModelElement, MatrixElement_Dispatch, IMatrixElement, IPrimitiveDiscreteModelElement, IPrimitiveModelElement, IAscetModelElement, IModelElement
{
	object MatrixElement_Dispatch.GetImplementation()
	{
		return GetImplementation();
	}

	object MatrixElement_Dispatch.GetValue()
	{
		return GetValue();
	}

	object MatrixElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object MatrixElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object MatrixElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public MatrixElement(CodeComponent component, Identifiable h)
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

	public override bool IsMatrix()
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

	public bool SetToParameter()
	{
		return setToParam();
	}

	public bool SetToVariable()
	{
		return setToVar();
	}
}
