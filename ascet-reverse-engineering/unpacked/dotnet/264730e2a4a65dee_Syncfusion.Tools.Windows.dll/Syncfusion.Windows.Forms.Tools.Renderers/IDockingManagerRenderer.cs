using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

public interface IDockingManagerRenderer
{
	VisualStyle VisualStyle { get; set; }

	Rectangle ControlBounds { get; set; }

	Rectangle CaptionBounds { get; }

	int CaptionWidth { get; }

	int BorderWidth { get; }

	bool IsMirrored { get; set; }

	void PaintDockedControl(Graphics g, Rectangle rectangle, PaintDockControlArgs args);

	void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation);

	void PaintAutoHidePanels(Graphics g, Rectangle rectangle, AutoHideSide side);

	void RefreshColors();

	void RefreshOffice2007Theme(Office2007Theme newTheme);

	void RefreshPaintInfo(Rectangle rectangle, PaintDockControlArgs args);

	HitTestArea HitTest(MouseButtons button, Point point);

	int GetHitButtonIndex();

	int GetHighlightedButtonIndex();

	CaptionButton GetHitButton();

	void ResetButtonsHitTest();
}
