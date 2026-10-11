using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface ICreateNewWindow
{
	Control CreateNewControl(Control parent, int row, int column);
}
