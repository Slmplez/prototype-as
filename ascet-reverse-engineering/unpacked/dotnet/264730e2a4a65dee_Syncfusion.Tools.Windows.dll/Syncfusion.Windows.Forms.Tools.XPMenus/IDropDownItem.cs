using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IDropDownItem
{
	void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType);

	Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign);

	Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlign);

	Control GetPopupParentControl();

	void AfterChildClosing();

	bool IsRelatedControl(Control ctl);
}
