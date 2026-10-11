using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("073716F7-B955-11D3-8A2C-00A0247767D8")]
[ComVisible(true)]
[ProgId("Ascet.Process")]
[ClassInterface(ClassInterfaceType.None)]
public class Process : AbstractMethod, Process_Dispatch, IProcess, IAbstractMethod
{
	object Process_Dispatch.AddComplexLocalElement(string aName, object dispatch_asdClass)
	{
		AscetClass asdClass = (AscetClass)dispatch_asdClass;
		return AddComplexLocalElement(aName, asdClass);
	}

	object Process_Dispatch.AddPrimitiveLocalElement(string aName, string aType)
	{
		return AddPrimitiveLocalElement(aName, aType);
	}

	object Process_Dispatch.GetAllLocalElements()
	{
		AscetModelElement[] allLocalElements = GetAllLocalElements();
		return Adapter.ToObject(allLocalElements);
	}

	object Process_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	object Process_Dispatch.GetLocalElement(string aName)
	{
		return GetLocalElement(aName);
	}

	bool Process_Dispatch.RemoveLocalElement(object dispatch_element)
	{
		AscetModelElement element = (AscetModelElement)dispatch_element;
		return RemoveLocalElement(element);
	}

	string Process_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string Process_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string Process_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool Process_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool Process_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool Process_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object Process_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public Process(ProcessDiagram diag, Identifiable h)
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

	public virtual ProcessDiagram GetDiagram()
	{
		return (ProcessDiagram)base.getAscetDiagram();
	}

	public virtual AscetModelElement GetLocalElement(string aName)
	{
		return getLocalElement(aName);
	}

	public override bool IsProcess()
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
