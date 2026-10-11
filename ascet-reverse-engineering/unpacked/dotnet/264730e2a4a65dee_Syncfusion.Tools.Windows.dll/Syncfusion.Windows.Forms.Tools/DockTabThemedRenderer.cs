using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DockTabThemedRenderer : TabRenderer3D
{
	public new static string TabStyleName => "DockTabThemedRenderer";

	static DockTabThemedRenderer()
	{
		TabRendererFactory.RegisterTabType(TabStyleName, typeof(DockTabThemedRenderer), TabRenderer3D.TabPanelPropertyExtender);
	}

	public DockTabThemedRenderer(ITabControl parent, ITabPanelRenderer panelRenderer)
		: base(parent, panelRenderer)
	{
	}

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(TabRenderer3D.OVERLAPX, 1f);
	}

	protected override void DrawBackground(DrawTabEventArgs drawiteminfo)
	{
		Graphics graphics = drawiteminfo.Graphics;
		Rectangle rectangle = drawiteminfo.Bounds;
		DockTabControl dockTabControl = base.TabControl.GetControl() as DockTabControl;
		if (drawiteminfo.Index == dockTabControl.SelectedIndex)
		{
			Rectangle clip = new Rectangle(rectangle.Left, rectangle.Top - 3, rectangle.Width - 1, rectangle.Height + 1);
			graphics.SetClip(clip);
			dockTabControl.ThemeDraw.DrawThemeBackground(graphics, 5, 3, rectangle);
			graphics.ResetClip();
			return;
		}
		Rectangle clip2 = new Rectangle(rectangle.Left, rectangle.Top - 2, rectangle.Width + 1, rectangle.Height);
		if (drawiteminfo.Index == dockTabControl.SelectedIndex + 1)
		{
			clip2.X += 3;
		}
		graphics.SetClip(clip2);
		dockTabControl.ThemeDraw.DrawThemeBackground(graphics, 1, 1, rectangle);
		graphics.ResetClip();
	}

	protected override void DrawBorders(DrawTabEventArgs drawiteminfo)
	{
		DockTabControl dockTabControl = base.TabControl.GetControl() as DockTabControl;
		if (drawiteminfo.Index == dockTabControl.SelectedIndex || drawiteminfo.State == DrawItemState.HotLight)
		{
			Graphics graphics = drawiteminfo.Graphics;
			RectangleF oldBounds = drawiteminfo.Bounds;
			Region clip = graphics.Clip;
			oldBounds = AdjustBoundsAndGraphicsForAlignment(graphics, oldBounds, base.TabAlignment);
			PointF[] polygonFromBounds = GetPolygonFromBounds(oldBounds);
			Pen pen = new Pen(SystemColors.ControlLightLight);
			Pen pen2 = new Pen(SystemColors.ControlDarkDark);
			Pen pen3 = new Pen(Color.DarkGray);
			graphics.DrawLine(pen, polygonFromBounds[0], polygonFromBounds[1]);
			graphics.DrawLine(pen, polygonFromBounds[1], polygonFromBounds[2]);
			graphics.DrawLine(pen, polygonFromBounds[2], polygonFromBounds[3]);
			graphics.DrawLine(new Pen(SystemColors.ControlDarkDark), polygonFromBounds[4], polygonFromBounds[5]);
			graphics.DrawLine(pen3, new PointF(polygonFromBounds[4].X - 1f, polygonFromBounds[4].Y - 1f), new PointF(polygonFromBounds[5].X - 1f, polygonFromBounds[5].Y));
			pen.Dispose();
			pen2.Dispose();
			pen3.Dispose();
			Rectangle rectangle = new Rectangle((int)oldBounds.Left, (int)oldBounds.Top, (int)oldBounds.Width, (int)oldBounds.Height);
			Rectangle rect = new Rectangle(rectangle.Left - 2, rectangle.Bottom - 3, rectangle.Width + 4, 10);
			Point[] points = new Point[5]
			{
				new Point(rectangle.Left, rectangle.Bottom - 3),
				new Point(rectangle.Right - 1, rectangle.Bottom - 3),
				new Point(rectangle.Right - 4, rectangle.Bottom),
				new Point(rectangle.Left + 3, rectangle.Bottom),
				new Point(rectangle.Left, rectangle.Bottom - 3)
			};
			using (GraphicsPath graphicsPath = new GraphicsPath())
			{
				graphicsPath.AddPolygon(points);
				using Region region = new Region(graphicsPath);
				IntPtr hrgn = region.GetHrgn(graphics);
				IntPtr hdc = graphics.GetHdc();
				try
				{
					IntPtr zero = IntPtr.Zero;
					Syncfusion.Runtime.InteropServices.NativeMethods.GetClipRgn(hdc, zero);
					Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, hrgn);
					Syncfusion.Runtime.InteropServices.NativeMethods.RECT rect2 = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(rect);
					Syncfusion.Runtime.InteropServices.NativeMethods.RECT clipRect = new Syncfusion.Runtime.InteropServices.NativeMethods.RECT(rect);
					Syncfusion.Runtime.InteropServices.NativeMethods.DrawThemeBackground(dockTabControl.ThemeDraw.HTheme, hdc, 5, 3, ref rect2, ref clipRect);
					Syncfusion.Runtime.InteropServices.NativeMethods.SelectClipRgn(hdc, zero);
				}
				finally
				{
					graphics.ReleaseHdc(hdc);
				}
			}
			graphics.SetClip(clip, CombineMode.Replace);
		}
		else
		{
			base.DrawBorders(drawiteminfo);
		}
	}
}
