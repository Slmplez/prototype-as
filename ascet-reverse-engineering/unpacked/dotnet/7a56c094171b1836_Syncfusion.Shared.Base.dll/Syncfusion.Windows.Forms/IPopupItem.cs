using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IPopupItem
{
	Control GetPopupParentControl();

	bool IsRelatedControl(Control control, bool askPopupParent);
}
