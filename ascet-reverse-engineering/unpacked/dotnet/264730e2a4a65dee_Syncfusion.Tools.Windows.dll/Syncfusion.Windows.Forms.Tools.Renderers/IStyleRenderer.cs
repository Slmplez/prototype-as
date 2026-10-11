using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

[DocumentationExclude]
public interface IStyleRenderer
{
	Rectangle ControlBounds { get; set; }

	Rectangle CaptionBounds { get; }

	int CaptionWidth { get; }

	int BorderWidth { get; }

	int ThickBorderWidth { get; }

	int ThinBorderWidth { get; }

	bool IsMirrored { get; set; }

	void PaintDockedControl(Graphics g, Rectangle rectangle, PaintDockControlArgs args);

	void PaintSplitter(Graphics g, Rectangle rectangle, Orientation orientation);

	void PaintAutoHidePanels(Graphics g, Rectangle rectangle, AutoHideSide side);

	bool RefreshColors();

	void RefreshPaintInfo(Rectangle rectangle, PaintDockControlArgs args);

	HitTestArea HitTest(MouseButtons button, Point point);

	int GetHitButtonIndex();

	int GetHighlightedButtonIndex();

	CaptionButton GetHitButton();

	void ResetCaptionButtonsIndices();

	void RefreshOffice2007Theme(Office2007Theme newTheme);
}
