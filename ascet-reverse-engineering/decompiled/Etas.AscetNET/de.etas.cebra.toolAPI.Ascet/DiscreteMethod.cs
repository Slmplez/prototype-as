using System;
using System.Collections;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("073716F3-B955-11D3-8A2C-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.DiscreteMethod")]
[ClassInterface(ClassInterfaceType.None)]
public class DiscreteMethod : AbstractMethod, IDiscreteMethod, IAbstractMethod, DiscreteMethod_Dispatch
{
	public DiscreteMethod(AscetDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public DiscreteMethod(DiscreteMethodDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual ComplexModelElement AddComplexArgumentElement(string aName, AscetClass asdClass)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addArgumentElement:sgClass:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(asdClass);
			call(instanceMethodCall);
			return new ComplexModelElement(diagram.GetCodeComponent(), instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddComplexArgumentElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual ComplexModelElement AddComplexLocalElement(string aName, AscetClass asdClass)
	{
		return addComplexLocalElement(aName, asdClass);
	}

	public virtual ComplexModelElement AddComplexReturnElement(AscetClass asdClass)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addReturnElementWithSGClass:");
			instanceMethodCall.appendParameter(asdClass);
			call(instanceMethodCall);
			return new ComplexModelElement(diagram.GetCodeComponent(), instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddComplexReturnElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual PrimitiveModelElement AddPrimitiveArgumentElement(string aName, string aType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addArgumentElement:modelType:");
			instanceMethodCall.appendParameter(aName);
			instanceMethodCall.appendParameter(aType);
			call(instanceMethodCall);
			return identifyPrimitiveDiscreteModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddPrimitiveArgumentElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual PrimitiveModelElement AddPrimitiveLocalElement(string aName, string aType)
	{
		return addPrimitiveLocalElement(aName, aType);
	}

	public virtual PrimitiveModelElement AddPrimitiveReturnElement(string aType)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("addReturnElementWithModelType:");
			instanceMethodCall.appendParameter(aType);
			call(instanceMethodCall);
			return identifyPrimitiveDiscreteModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".AddPrimitiveReturnElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AscetModelElement[] GetAllArgumentElements()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getAllArgumentElements");
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
			logEntry(GetType().FullName + ".GetAllArgumentElements(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual AscetModelElement[] GetAllLocalElements()
	{
		return getAllLocalElementsBasic();
	}

	public virtual AscetModelElement GetArgumentElement(string aName)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getArgumentElement:");
			instanceMethodCall.appendParameter(aName);
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetArgumentElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public virtual DiscreteMethodDiagram GetDiagram()
	{
		return (DiscreteMethodDiagram)base.getAscetDiagram();
	}

	public virtual AscetModelElement GetLocalElement(string aName)
	{
		return getLocalElement(aName);
	}

	public virtual AscetModelElement GetReturnElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getReturnElement");
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetReturnElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsActionCompatible()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isActionCompatibel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsActionCompatible(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsConditionCompatible()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("isConditionCompatibel");
			call(instanceMethodCall);
			return instanceMethodCall.ResultBoolean;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".IsConditionCompatible(): failed -> APIError: " + ex);
		}
		return false;
	}

	public override bool IsDiscreteMethod()
	{
		return true;
	}

	public virtual bool RemoveArgumentElement(AscetModelElement element)
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteArgumentElement:");
			instanceMethodCall.appendParameter(element);
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveArgumentElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool RemoveLocalElement(AscetModelElement element)
	{
		return removeLocalElement(element);
	}

	public virtual bool RemoveReturnElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("deleteReturnElement");
			call(instanceMethodCall);
			_ = instanceMethodCall.ResultRemoteObject;
			return true;
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".RemoveReturnElement(): failed -> APIError: " + ex);
		}
		return false;
	}

	public virtual bool SetName(string aName)
	{
		return base.setName(aName);
	}

	object DiscreteMethod_Dispatch.AddComplexArgumentElement(string aName, object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexArgumentElement(aName, asdClass);
	}

	object DiscreteMethod_Dispatch.AddComplexLocalElement(string aName, object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexLocalElement(aName, asdClass);
	}

	object DiscreteMethod_Dispatch.AddComplexReturnElement(object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexReturnElement(asdClass);
	}

	object DiscreteMethod_Dispatch.AddPrimitiveArgumentElement(string aName, string aType)
	{
		return AddPrimitiveArgumentElement(aName, aType);
	}

	object DiscreteMethod_Dispatch.AddPrimitiveLocalElement(string aName, string aType)
	{
		return AddPrimitiveLocalElement(aName, aType);
	}

	object DiscreteMethod_Dispatch.AddPrimitiveReturnElement(string aType)
	{
		return AddPrimitiveReturnElement(aType);
	}

	object DiscreteMethod_Dispatch.GetAllArgumentElements()
	{
		AscetModelElement[] allArgumentElements = GetAllArgumentElements();
		return Adapter.ToObject(allArgumentElements);
	}

	object DiscreteMethod_Dispatch.GetAllLocalElements()
	{
		AscetModelElement[] allLocalElements = GetAllLocalElements();
		return Adapter.ToObject(allLocalElements);
	}

	object DiscreteMethod_Dispatch.GetArgumentElement(string aName)
	{
		return GetArgumentElement(aName);
	}

	object DiscreteMethod_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object DiscreteMethod_Dispatch.GetLocalElement(string aName)
	{
		return GetLocalElement(aName);
	}

	object DiscreteMethod_Dispatch.GetReturnElement()
	{
		return GetReturnElement();
	}

	bool DiscreteMethod_Dispatch.RemoveArgumentElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return RemoveArgumentElement(element);
	}

	bool DiscreteMethod_Dispatch.RemoveLocalElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return RemoveLocalElement(element);
	}

	string DiscreteMethod_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string DiscreteMethod_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string DiscreteMethod_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool DiscreteMethod_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool DiscreteMethod_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool DiscreteMethod_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object DiscreteMethod_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
