using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IAbstractMethod
{
	string GetCode();

	string GetCodeForProject(AscetProject prj);

	string GetCodeInProject(AscetProject prj);

	string GetCodeInProjectForImplementation(AscetProject prj, ImplConfiguration implementation);

	string GetName();

	bool IsAbstractMethod();

	bool IsAction();

	bool IsActionCompatible();

	bool IsCondition();

	bool IsConditionCompatible();

	bool IsContinuousMethod();

	bool IsDiscreteMethod();

	bool IsProcess();

	bool IsTrigger();

	bool SetCode(string code);

	bool SetCodeForProject(string code, AscetProject prj);

	bool SetCodeInProject(string code, AscetProject prj);

	bool SetCodeInProjectForImplementation(string code, AscetProject prj, ImplConfiguration implementation);
}
