using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(true)]
[Guid("073716F0-B955-11D3-8A2C-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ProgId("Ascet.Action")]
public class Action : AbstractMethod, Action_Dispatch, IAction, IAbstractMethod
{
	object Action_Dispatch.AddComplexLocalElement(string aName, object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexLocalElement(aName, asdClass);
	}

	object Action_Dispatch.AddPrimitiveLocalElement(string aName, string aType)
	{
		return AddPrimitiveLocalElement(aName, aType);
	}

	object Action_Dispatch.GetAllLocalElements()
	{
		AscetModelElement[] allLocalElements = GetAllLocalElements();
		return Adapter.ToObject(allLocalElements);
	}

	object Action_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object Action_Dispatch.GetLocalElement(string aName)
	{
		return GetLocalElement(aName);
	}

	bool Action_Dispatch.RemoveLocalElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return RemoveLocalElement(element);
	}

	string Action_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string Action_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string Action_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool Action_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool Action_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool Action_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object Action_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Action(ActionConditionDiagram diag, Identifiable h)
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

	public override bool IsAction()
	{
		return true;
	}

	public override bool IsActionCompatible()
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
