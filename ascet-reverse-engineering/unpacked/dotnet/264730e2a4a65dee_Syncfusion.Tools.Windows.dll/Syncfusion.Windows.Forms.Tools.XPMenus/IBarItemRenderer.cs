using System;
using System.Collections;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public interface IBarItemRenderer : IDisposable
{
	BarItem BarItem { get; set; }

	RectangleF Bounds { get; set; }

	bool NeedCenterVAlign { get; }

	bool HotTrack { get; set; }

	bool Active { get; set; }

	bool Visible { get; set; }

	bool ShowingDropDown { get; }

	bool ThemesEnabled { get; set; }

	VisualStyle Style { get; set; }

	SizeF GetPreferredSize(IGraphicsProvider gp);

	void InvalidateCachedTextSizes();

	void DropDown(bool show, bool setDefaultSelection, Queue pbiQueue);

	bool HitTest(PointF mousePosition);

	bool ShouldDrawText();

	bool ProcessKeyDown(Keys key);

	void OnMouseUp(Point pointMouseUp);

	void OnMouseDown(Point pointMouseDown);

	void OnMouseMove(Point pointMouseMove);

	void OnMouseWheel(bool isUp);

	void OnPaint(Graphics g, Rectangle clipRect);

	void DrawSeparator(Graphics g);

	void BarItemPropertyChanged(SyncfusionPropertyChangedEventArgs e);
}
