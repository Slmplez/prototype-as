using System.Drawing;

namespace Syncfusion.Windows.Forms;

public interface IPopupParent : IPopupItem
{
	bool IsRightToLeft { get; }

	void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType);

	Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment);

	Point[] GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment);
}
