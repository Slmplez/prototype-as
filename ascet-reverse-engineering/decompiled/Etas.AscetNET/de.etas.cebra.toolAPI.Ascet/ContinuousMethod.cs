using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[ProgId("Ascet.ContinuousMethod")]
[Guid("073716F2-B955-11D3-8A2C-00A0247767D8")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
public class ContinuousMethod : AbstractMethod, ContinuousMethod_Dispatch, IContinuousMethod, IAbstractMethod
{
	object ContinuousMethod_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	string ContinuousMethod_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string ContinuousMethod_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string ContinuousMethod_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool ContinuousMethod_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool ContinuousMethod_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool ContinuousMethod_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object ContinuousMethod_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}

	public ContinuousMethod(ContinuousMethodDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual ContinuousMethodDiagram GetDiagram()
	{
		return (ContinuousMethodDiagram)base.getAscetDiagram();
	}

	public override bool IsContinuousMethod()
	{
		return true;
	}
}
