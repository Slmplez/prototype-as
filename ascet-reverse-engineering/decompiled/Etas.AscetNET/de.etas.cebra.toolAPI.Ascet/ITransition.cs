using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface ITransition : IStateMachineDiagramFlowElement, IAbstractStateMachineElement
{
	bool ClearAction();

	bool ClearCondition();

	bool ClearTrigger();

	AbstractMethod GetAction();

	string GetActionESDL();

	string GetColor();

	AbstractMethod GetCondition();

	string GetConditionESDL();

	StateMachinePin GetEndPin();

	State GetEndState();

	int GetPriority();

	StateMachinePin GetStartPin();

	State GetStartState();

	int GetWidth();

	bool HasEndPin();

	bool HasStartPin();

	bool IsActionDefined();

	bool IsActionESDL();

	bool IsConditionDefined();

	bool IsConditionESDL();

	bool SetAction(AbstractMethod method);

	bool SetActionESDL(string esdlCode);

	bool SetColor(string colorName);

	bool SetCondition(AbstractMethod method);

	bool SetConditionESDL(string esdlCode);

	bool SetPriority(int prio);

	bool SetTrigger(Trigger trigger);

	bool SetWidth(int width);
}
