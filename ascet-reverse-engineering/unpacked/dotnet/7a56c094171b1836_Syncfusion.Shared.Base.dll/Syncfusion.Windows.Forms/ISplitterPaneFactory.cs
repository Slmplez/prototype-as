using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface ISplitterPaneFactory
{
	Control CreateNewControl(int row, int column, Control mainControl, Control parent);

	void DisposeControl(int row, int column, Control control, Control parent);
}
