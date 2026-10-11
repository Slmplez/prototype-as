using System.Runtime.InteropServices;

namespace de.etas.cebra.toolAPI.Ascet;

[ComVisible(false)]
public interface IState : IStateMachineDiagramElement, IAbstractStateMachineElement
{
	bool ClearEntryAction();

	bool ClearExitAction();

	bool ClearStartState();

	bool ClearStaticAction();

	HierarchyState CreateHierarchyState();

	string[] GetAllAvailableColors();

	string GetColor();

	AbstractMethod GetEntryAction();

	string GetEntryActionESDL();

	AbstractMethod GetExitAction();

	string GetExitActionESDL();

	AbstractMethod GetStaticAction();

	string GetStaticActionESDL();

	int Height();

	bool IsEntryActionDefined();

	bool IsEntryActionESDL();

	bool IsExitActionDefined();

	bool IsExitActionESDL();

	bool IsStartState();

	bool IsStaticActionDefined();

	bool IsStaticActionESDL();

	bool SetColor(string colorName);

	bool SetEntryAction(AbstractMethod method);

	bool SetEntryActionESDL(string esdlCode);

	bool SetExitAction(AbstractMethod method);

	bool SetExitActionESDL(string esdlCode);

	bool SetSize(int width, int height);

	bool SetStartState();

	bool SetStaticAction(AbstractMethod method);

	bool SetStaticActionESDL(string esdlCode);

	int Width();
}
