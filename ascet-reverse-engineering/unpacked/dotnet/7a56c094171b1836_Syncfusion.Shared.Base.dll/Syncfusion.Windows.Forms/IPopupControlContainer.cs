using System.Drawing;

namespace Syncfusion.Windows.Forms;

public interface IPopupControlContainer : IPopupChild, IPopupItem, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient
{
	PopupHost PopupHost { get; set; }

	Point GetPreferredLocation(PopupRelativeAlignment prevRelativeAlignment, out PopupRelativeAlignment newRelativeAlignment);
}
