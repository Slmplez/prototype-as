using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridDropDownContainer : IPopupChild, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient, IPopupParent, IPopupItem, IQueryFocusInside
{
	new IPopupParent PopupParent { get; set; }

	Control ParentControl { get; set; }

	void ShowPopup(Point pt);
}
