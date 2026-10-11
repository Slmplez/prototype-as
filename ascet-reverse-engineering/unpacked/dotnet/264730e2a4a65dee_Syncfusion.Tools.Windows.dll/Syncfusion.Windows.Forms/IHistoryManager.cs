namespace Syncfusion.Windows.Forms;

public interface IHistoryManager
{
	void Reset();

	void Do(ICommand cmd);

	bool Undo();

	bool Redo();

	void BeginBlock();

	void CloseBlock();

	void RollBack();
}
