using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

internal interface IFocusableRenderer
{
	bool IsRelatedControl(Control control);
}
