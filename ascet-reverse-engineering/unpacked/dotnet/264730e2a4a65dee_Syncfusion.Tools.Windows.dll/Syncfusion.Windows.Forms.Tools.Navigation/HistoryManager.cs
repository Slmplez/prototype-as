using System.Collections;
using System.Collections.Generic;

namespace Syncfusion.Windows.Forms.Tools.Navigation;

public class HistoryManager : Syncfusion.Windows.Forms.HistoryManager
{
	public IList<ICommand> Undoes => GetCommands(m_stackUndo);

	public IList<ICommand> Redoes => GetCommands(m_stackRedo);

	private IList<ICommand> GetCommands(Stack stack)
	{
		List<ICommand> list = new List<ICommand>(stack.Count);
		IEnumerator enumerator = stack.GetEnumerator();
		while (enumerator.MoveNext())
		{
			if (enumerator.Current is ICommand item)
			{
				list.Add(item);
			}
		}
		return list;
	}
}
