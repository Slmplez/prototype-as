namespace Etas.Base.UI.Framework;

public interface ICommand
{
	string Description { get; }

	bool CanUndo { get; }

	bool Do(object target);

	bool Undo();

	bool InitializeTarget(object target);
}
