using System.Runtime.InteropServices;
using de.etas.types;

namespace de.etas.cebra.toolAPI.Ascet;

[Guid("AC76DB33-E9F5-4B79-A0D7-71F7273A8F4A")]
[ClassInterface(ClassInterfaceType.None)]
[ComVisible(true)]
[ProgId("Ascet.Trigger")]
public class Trigger : AbstractMethod, ITrigger, IAbstractMethod, Trigger_Dispatch
{
	public Trigger(StateMachineDiagram diag, Identifiable h)
		: base(diag, h)
	{
	}

	public virtual StateMachineDiagram GetDiagram()
	{
		return (StateMachineDiagram)base.getAscetDiagram();
	}

	public override bool IsTrigger()
	{
		return true;
	}

	object Trigger_Dispatch.GetDiagram()
	{
		return GetDiagram();
	}

	string Trigger_Dispatch.GetCodeForProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeForProject(prj);
	}

	string Trigger_Dispatch.GetCodeInProject(object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return GetCodeInProject(prj);
	}

	string Trigger_Dispatch.GetCodeInProjectForImplementation(object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return GetCodeInProjectForImplementation(prj, implementation);
	}

	bool Trigger_Dispatch.SetCodeForProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeForProject(code, prj);
	}

	bool Trigger_Dispatch.SetCodeInProject(string code, object dispatch_prj)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		return SetCodeInProject(code, prj);
	}

	bool Trigger_Dispatch.SetCodeInProjectForImplementation(string code, object dispatch_prj, object dispatch_implementation)
	{
		AscetProject prj = (AscetProject)dispatch_prj;
		ImplConfiguration implementation = (ImplConfiguration)dispatch_implementation;
		return SetCodeInProjectForImplementation(code, prj, implementation);
	}

	object Trigger_Dispatch.GetDataBase()
	{
		return GetDataBase();
	}
}
