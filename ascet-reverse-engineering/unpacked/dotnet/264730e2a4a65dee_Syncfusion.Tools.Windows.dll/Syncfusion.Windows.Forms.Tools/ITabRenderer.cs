using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public interface ITabRenderer : IDisposable
{
	bool Visible { get; set; }

	bool ForceDrawImage { get; set; }

	ITabData TabData { get; set; }

	RectangleF Bounds { get; set; }

	bool HotTrack { get; set; }

	TabAlignment TabAlignment { get; set; }

	DrawItemCallback DrawItemCallback { get; set; }

	Color TabBorderColor { get; }

	SizeF GetPreferredSize(Graphics g);

	bool IsTextShrunk();

	bool HitTest(PointF mousePosition);

	RectangleF GetRedrawBounds();

	RectangleF GetCurrentBounds();

	RectangleF GetBoundsForScrolling();

	void OnPaint(Graphics g, Rectangle clipRect);

	void TabPropertyChanged();
}
