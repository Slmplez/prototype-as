using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("A3DF3E8A-B490-11D3-8A29-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.AscetModelElement")]
public class AscetModelElement : ModelElement, IAscetModelElement, IModelElement, AscetModelElement_Dispatch
{
	public const string EXPORTED = "exported";

	public const string IMPORTED = "imported";

	public const string LOCAL = "local";

	public AscetModelElement(CodeComponent item, Identifiable h)
		: base(item, h)
	{
	}

	public virtual bool CouldEnableGetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("couldEnableGetAccess");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CouldEnableGetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool CouldEnableSetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("couldEnableSetAccess");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".CouldEnablSetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DisableGetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("disableGetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DisableGetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool DisableSetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("disableSetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".DisableSetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool EnableGetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("enableGetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".EnableGetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool EnableSetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("enableSetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".EnableSetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public string GetAliasNameString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("aliasName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetAliasNameString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetComment()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getComment");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetComment(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetCustomerDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCustomerDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetName()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getName");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetName(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual CodeComponent GetOwnerForElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getClass");
			call(instanceMethodCall);
			return (CodeComponent)((AscetDataBase)GetDataBase()).identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetOwnerForElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public Component GetRepresentedClass()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getRepresentedClass");
			call(instanceMethodCall);
			return (Component)((AscetDataBase)GetDataBase()).identifyComponent(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetRepresentedClass(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetScope()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getScope");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetScope(): failed -> APIError: " + ex);
		}
		return null;
	}

	public string GetUserDataString()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetUserDataString(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual bool HasGetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasGetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".HasGetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool HasSetAccess()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("hasSetAccessMethod");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".HasSetAccess(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool IsArray()
	{
		return isXXX("Array");
	}

	public override bool IsAscetModelElement()
	{
		return true;
	}

	public bool IsCalibration()
	{
		return isXXX("Calibration");
	}

	public virtual bool IsComplex()
	{
		return isXXX("Complex");
	}

	public virtual bool IsConstant()
	{
		return isXXX("Constant");
	}

	public virtual bool IsContinuousState()
	{
		return isXXX("ContinuousState");
	}

	public virtual bool IsDeltaTElement()
	{
		return isXXX("DeltaT");
	}

	public virtual bool IsDependentParameter()
	{
		return isXXX("DependentParameter");
	}

	public virtual bool IsDiscreteState()
	{
		return isXXX("DiscreteState");
	}

	public virtual bool IsDistribution()
	{
		return isXXX("Distribution");
	}

	public virtual bool IsEnumeration()
	{
		return isXXX("Enumeration");
	}

	public bool IsExported()
	{
		return isXXX("Exported");
	}

	public virtual bool IsImplementationCast()
	{
		return isXXX("ImplementationCast");
	}

	public bool IsImported()
	{
		return isXXX("Imported");
	}

	public virtual bool IsInput()
	{
		return isXXX("Input");
	}

	public bool IsLocal()
	{
		return isXXX("Local");
	}

	public virtual bool IsMatrix()
	{
		return isXXX("Matrix");
	}

	public virtual bool IsMessage()
	{
		return isXXX("Message");
	}

	public bool IsMethodArgument()
	{
		return isXXX("MethodArgument");
	}

	public bool IsMethodLocal()
	{
		return isXXX("MethodLocal");
	}

	public bool IsMethodReturn()
	{
		return isXXX("MethodReturn");
	}

	public virtual bool IsOneDTable()
	{
		return isXXX("OneDTable");
	}

	public virtual bool IsOutput()
	{
		return isXXX("Output");
	}

	public virtual bool IsParameter()
	{
		return isXXX("Parameter");
	}

	public virtual bool IsPrimitive()
	{
		return isXXX("Primitive");
	}

	public virtual bool IsPrimitiveCTModelElement()
	{
		return isXXX("CTElement");
	}

	public virtual bool IsPrimitiveDiscreteModelElement()
	{
		return isXXX("SDElement");
	}

	public virtual bool IsReceiveMessage()
	{
		return isXXX("ReceiveMessage");
	}

	public virtual bool IsModelResource()
	{
		return isXXX("ModelResource");
	}

	public virtual bool IsScalar()
	{
		return isXXX("Scalar");
	}

	public virtual bool IsSendMessage()
	{
		return isXXX("SendMessage");
	}

	public virtual bool IsSendReceiveMessage()
	{
		return isXXX("SendReceiveMessage");
	}

	public virtual bool IsStepLocal()
	{
		return isXXX("StepLocal");
	}

	public virtual bool IsSystemConstant()
	{
		return isXXX("SystemConstant");
	}

	public virtual bool IsTwoDTable()
	{
		return isXXX("TwoDTable");
	}

	public bool IsVariant()
	{
		return isXXX("Variant");
	}

	public bool IsVolatile()
	{
		return isXXX("Volatile");
	}

	public bool SetComment(string comment)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setComment:");
			instanceMethodCall.appendParameter(comment);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetComment(" + comment + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetCustomerDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("customerData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCustomerDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetName(string name)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(name);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetName(" + name + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetScope(string scope)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setScope:");
			instanceMethodCall.appendParameter(scope);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetScope(" + scope + "): failed -> APIError: " + ex);
		}
		return false;
	}

	public bool SetUserDataString(string newContents)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("userData:");
			instanceMethodCall.appendParameter(newContents);
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetUserDataString(" + newContents + "): failed -> APIError: " + ex);
		}
		return false;
	}

	object AscetModelElement_Dispatch.GetOwnerForElement()
	{
		return GetOwnerForElement();
	}

	object AscetModelElement_Dispatch.GetRepresentedClass()
	{
		return GetRepresentedClass();
	}

	object AscetModelElement_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
