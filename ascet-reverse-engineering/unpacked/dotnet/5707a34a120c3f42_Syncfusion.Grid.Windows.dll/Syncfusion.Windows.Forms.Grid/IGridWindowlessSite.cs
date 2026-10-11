using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridWindowlessSite
{
	Control GetWindow();

	Rectangle GetVisibleBounds();
}
