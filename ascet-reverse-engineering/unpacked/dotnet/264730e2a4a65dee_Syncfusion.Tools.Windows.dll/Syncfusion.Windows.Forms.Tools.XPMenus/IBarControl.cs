using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IBarControl : IThemedControl
{
	bool DesignMode { get; }

	ThemedToolBarDrawing ThemedDrawing { get; }

	bool UseControlForeColor { get; }

	bool LargeIcons { get; }

	bool IsRightToLeft { get; }

	IBarHost BarHost { get; }

	VisualStyle Style { get; set; }

	IPopupParent PopupParent { get; }

	void OnBarBoundsAffected();

	void OnRepaint(RectangleF affectedRect);

	Graphics GetGraphics();

	Control GetControl();

	bool ShouldPreProcessTab();

	bool NeedKey(Keys key);

	bool RequiresActiveFormForMouseTrack();

	bool ShouldDelegateBGDrawingToParentWhenThemed();
}
