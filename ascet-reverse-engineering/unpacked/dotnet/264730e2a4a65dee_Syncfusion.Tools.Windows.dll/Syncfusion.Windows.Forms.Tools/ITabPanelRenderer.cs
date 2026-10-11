using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabPanelRenderer
{
	bool ForceDrawImage { get; set; }

	bool NeedMouseMove { get; }

	bool NeedLayout { get; }

	ITabPanelData TabPanelData { get; set; }

	ArrayList Renderers { get; }

	RectangleF Bounds { get; set; }

	bool ScrollingSupported { get; }

	bool CanScrollLeft { get; }

	bool CanScrollRight { get; }

	bool IsMirrored { get; }

	Color TabPanelBackColor { get; }

	void Layout(Graphics g, bool fromPaint);

	void Scroll(ScrollIncrement increment, ScrollDirection direction);

	void GetPreferredSize(Graphics g, ref SizeF size);

	Rectangle GetTabBounds(int i);

	bool IsBackgroundSolid();

	void OnPaintPanelBackground(Graphics g, Color backColor, Rectangle rect);

	void OnPaint(Graphics g, Rectangle clipRect);

	int HitTestTabs(PointF mousePosition, bool inTransformedCoOrds);

	Point GetMousePosition();

	void OnMouseMove(MouseEventArgs e);

	void OnMouseLeave(EventArgs e);

	void OnMouseDown(MouseEventArgs e);

	void OnMouseUp(MouseEventArgs e);

	void OnGotFocus(EventArgs e);

	void OnLostFocus(EventArgs e);

	bool IsMovingTab();

	void CancelTabDrag();

	void ValidateScrollOffset(bool makeSelectedTabVisible, bool invalidate);

	RectangleF ApplyDrawingTransform(RectangleF rect, bool apply);
}
