using System;
using System.Runtime.InteropServices;
using de.etas.cebra.socket;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("073716F1-B955-11D3-8A2C-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.Condition")]
[ClassInterface(ClassInterfaceType.None)]
public class Condition : AbstractMethod, Condition_Dispatch, ICondition, IAbstractMethod
{
	object Condition_Dispatch.AddComplexLocalElement(string aName, object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexLocalElement(aName, asdClass);
	}

	object Condition_Dispatch.AddPrimitiveLocalElement(string aName, string aType)
	{
		return AddPrimitiveLocalElement(aName, aType);
	}

	object Condition_Dispatch.GetAllLocalElements()
	{
		AscetModelElement[] allLocalElements = GetAllLocalElements();
		return Adapter.ToObject(allLocalElements);
	}

	object Condition_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object Condition_Dispatch.GetLocalElement(string aName)
	{
		return GetLocalElement(aName);
	}

	object Condition_Dispatch.GetReturnElement()
	{
		return GetReturnElement();
	}

	bool Condition_Dispatch.RemoveLocalElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return RemoveLocalElement(element);
	}

	string Condition_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string Condition_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string Condition_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool Condition_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool Condition_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool Condition_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object Condition_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Condition(ActionConditionDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual ComplexModelElement AddComplexLocalElement(string aName, AscetClass asdClass)
	{
		return addComplexLocalElement(aName, asdClass);
	}

	public virtual PrimitiveModelElement AddPrimitiveLocalElement(string aName, string aType)
	{
		return addPrimitiveLocalElement(aName, aType);
	}

	public virtual AscetModelElement[] GetAllLocalElements()
	{
		return getAllLocalElementsBasic();
	}

	public virtual ActionConditionDiagram GetDiagram()
	{
		return (ActionConditionDiagram)base.getAscetDiagram();
	}

	public virtual AscetModelElement GetLocalElement(string aName)
	{
		return getLocalElement(aName);
	}

	public virtual AscetModelElement GetReturnElement()
	{
		try
		{
			InstanceMethodCall instanceMethodCall = createInstanceMethodCall("getReturnValue");
			call(instanceMethodCall);
			return identifyAscetModelElement(instanceMethodCall.ResultRemoteObject);
		}
		catch (Exception ex)
		{
			logEntry(GetType().FullName + ".GetReturnElement(): failed -> APIError: " + ex);
		}
		return null;
	}

	public override bool IsCondition()
	{
		return true;
	}

	public override bool IsConditionCompatible()
	{
		return true;
	}

	public virtual bool RemoveLocalElement(AscetModelElement element)
	{
		return removeLocalElement(element);
	}

	public virtual bool SetName(string aName)
	{
		return base.setName(aName);
	}
}
