using System.Drawing;

namespace Syncfusion.Windows.Forms;

public interface IProvideCustomContextMenuPositionalInformation
{
	Point GetMenuPositionForKeyboardInvoke();
}
