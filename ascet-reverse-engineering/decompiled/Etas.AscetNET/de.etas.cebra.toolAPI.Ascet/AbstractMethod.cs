using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.AbstractMethod")]
[Guid("FB07A603-6D2B-11D4-981F-00105A36DC87")]
public class AbstractMethod : PersistentItem, AbstractMethod_Dispatch, IAbstractMethod
{
	protected internal AscetDiagram diagram;

	string AbstractMethod_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string AbstractMethod_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string AbstractMethod_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool AbstractMethod_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool AbstractMethod_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool AbstractMethod_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object AbstractMethod_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public AbstractMethod(AscetDiagram diag, Identifiable h)
		: base(diag.GetDataBase(), h)
	{
		diagram = diag;
	}

	public virtual ComplexModelElement addComplexLocalElement(string aName, AscetClass asdClass)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLocalElement:sgClass:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(asdClass);
			call(instanceMethodCall);
			return new ComplexModelElement(diagram.GetCodeComponent(), instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".addComplexLocalElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual PrimitiveModelElement addPrimitiveLocalElement(string aName, string aType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addLocalElement:modelType:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(aType);
			call(instanceMethodCall);
			return identifyPrimitiveDiscreteModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".addPrimitiveLocalElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public static AbstractMethod factory(PersistentItem sender, Identifiable obj)
	{
		AscetDiagram ascetDiagram = null;
		try
		{
			if (sender is AscetDiagram)
			{
				ascetDiagram = (AscetDiagram)sender;
			}
			else
			{
				InstanceMethodCall instanceMethodCall = new InstanceMethodCall(obj, "getDiagram", sender);
				sender.call(instanceMethodCall);
				ascetDiagram = AscetDiagram.factory(sender, instanceMethodCall.ResultRemoteObject);
			}
			return ascetDiagram.getClassName(obj) switch
			{
				"EtasAPIDiscreteMethod" => new DiscreteMethod(ascetDiagram, obj), 
				"EtasAPIProcess" => new Process((ProcessDiagram)ascetDiagram, obj), 
				"EtasAPIActionMethod" => new Action((ActionConditionDiagram)ascetDiagram, obj), 
				"EtasAPIConditionMethod" => new Condition((ActionConditionDiagram)ascetDiagram, obj), 
				"EtasAPITrigger" => new Trigger((StateMachineDiagram)ascetDiagram, obj), 
				"EtasAPIContinuousMethod" => new ContinuousMethod((ContinuousMethodDiagram)ascetDiagram, obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			sender.logEntry("AbstractMethod.factory(): failed -> APIError: " + ex);
		}
		return null;
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

	public virtual AscetModelElement[] getAllLocalElementsBasic()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllLocalElements");
			call(instanceMethodCall);
			OrderedCollection coll = new OrderedCollection(this, instanceMethodCall.ResultRemoteObject);
			Identifiable[] remoteObjectsFromCollection = getRemoteObjectsFromCollection(coll);
			ArrayList arrayList = ArrayList.Synchronized(new ArrayList(10));
			for (int i = 0; i < remoteObjectsFromCollection.Length; i++)
			{
				AscetModelElement ascetModelElement = identifyAscetModelElement(remoteObjectsFromCollection[i]);
				if (ascetModelElement != null)
				{
					arrayList.Add(ascetModelElement);
				}
			}
			AscetModelElement[] array = new AscetModelElement[arrayList.Count];
			arrayList.CopyTo(array);
			return array;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getAllLocalElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AscetDiagram getAscetDiagram()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getDiagram");
			call(instanceMethodCall);
			return AscetDiagram.factory(this, instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getDiagram(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetCode()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCode");
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCode(): failed -> APIError: " + ex);
		}
		return null;
	}

	[Obsolete("Please use GetCodeInProject() instead.", false)]
	public virtual string GetCodeForProject(AscetProject prj)
	{
		return GetCodeInProject(prj);
	}

	public virtual string GetCodeInProject(AscetProject prj)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCode:");
			instanceMethodCall.appendParameter(prj);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeInProject(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetCodeInProjectForImplementation(AscetProject prj, ImplConfiguration implementation)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getCode:implementation:");
			instanceMethodCall.appendParameter(prj);
			instanceMethodCall.appendParameter(implementation);
			call(instanceMethodCall);
			return instanceMethodCall.ResultString;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetCodeInProjectForImplementation(): failed -> APIError: " + ex);
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

	public virtual AscetModelElement getLocalElement(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getLocalElement:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".getLocalElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual string GetName()
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

	protected internal virtual AscetModelElement identifyAscetModelElement(Identifiable obj)
	{
		try
		{
			if (isXXX(obj, "Complex"))
			{
				return new ComplexModelElement(diagram.GetCodeComponent(), obj);
			}
			if (isXXX(obj, "SDElement"))
			{
				return identifyPrimitiveDiscreteModelElement(obj);
			}
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	protected internal virtual PrimitiveModelElement identifyPrimitiveDiscreteModelElement(Identifiable obj)
	{
		try
		{
			return getClassName(obj) switch
			{
				"EtasAPIModelScalar" => new ScalarElement(diagram.GetCodeComponent(), obj), 
				"EtasAPIModelArray" => new ArrayElement(diagram.GetCodeComponent(), obj), 
				"EtasAPIModelEnumeration" => new EnumerationModelElement(diagram.GetCodeComponent(), obj), 
				"EtasAPIModelMatrix" => new MatrixElement(diagram.GetCodeComponent(), obj), 
				_ => null, 
			};
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".identifyAscetModelElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsAbstractMethod()
	{
		return true;
	}

	public virtual bool IsAction()
	{
		return false;
	}

	public virtual bool IsActionCompatible()
	{
		return false;
	}

	public virtual bool IsCondition()
	{
		return false;
	}

	public virtual bool IsConditionCompatible()
	{
		return false;
	}

	public virtual bool IsContinuousMethod()
	{
		return false;
	}

	public virtual bool IsDiscreteMethod()
	{
		return false;
	}

	public virtual bool IsProcess()
	{
		return false;
	}

	public virtual bool IsTrigger()
	{
		return false;
	}

	public virtual bool removeLocalElement(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteLocalElement:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".removeLocalElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCode(string code)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCode:");
			instanceMethodCall.appendParameter(code);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCode(): failed -> APIError: " + ex);
		}
		return false;
	}

	[Obsolete("Please use SetCodeInProject() instead", false)]
	public virtual bool SetCodeForProject(string code, AscetProject prj)
	{
		return SetCodeInProject(code, prj);
	}

	public virtual bool SetCodeInProject(string code, AscetProject prj)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCode:forProject:");
			instanceMethodCall.appendParameter(code);
			instanceMethodCall.appendParameter(prj);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCodeInProject(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetCodeInProjectForImplementation(string code, AscetProject prj, ImplConfiguration implementation)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setCode:forProject:implementation:");
			instanceMethodCall.appendParameter(code);
			instanceMethodCall.appendParameter(prj);
			instanceMethodCall.appendParameter(implementation);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".SetCodeInProject(): failed -> APIError: " + ex);
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

	protected internal virtual bool setName(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("setName:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".setName(): failed -> APIError: " + ex);
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
}
