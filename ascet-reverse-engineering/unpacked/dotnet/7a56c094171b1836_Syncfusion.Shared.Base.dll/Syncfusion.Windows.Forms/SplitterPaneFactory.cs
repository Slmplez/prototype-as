using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class SplitterPaneFactory : ISplitterPaneFactory
{
	public Control CreateNewControl(int row, int column, Control mainControl, Control parent)
	{
		Control result = null;
		if (!(mainControl is ISplitterPaneSupport { FillSplitterPane: not false }))
		{
			return null;
		}
		if (mainControl is ICreateNewWindow createNewWindow)
		{
			result = createNewWindow.CreateNewControl(parent, row, column);
		}
		return result;
	}

	public void DisposeControl(int row, int column, Control control, Control parent)
	{
	}
}
