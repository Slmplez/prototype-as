using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public class RibbonPanelRenderer
{
	protected enum EBITMAP
	{
		ebRightArrow,
		ebLeftArrow
	}

	private const int BORDER_WIDTH = 2;

	private const int SCROLLBARBUTTON_WIDTH = 12;

	private const int ARROW_HEIGHT = 5;

	private const int ARROW_WIDTH = 3;

	private Office12ColorTable m_colorTable;

	private static Blend m_blBackGround;

	private static Blend m_blGroupedBackGround;

	private Hashtable m_htBitmaps = new Hashtable();

	protected Bitmap RightArrow
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebRightArrow] as Bitmap;
			if (bitmap == null)
			{
				bitmap = new Bitmap(3, 5);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					graphics.SmoothingMode = SmoothingMode.AntiAlias;
					Rectangle rect = new Rectangle(0, 0, 1, 5);
					using Region region = new Region(rect);
					region.Union(rect);
					rect.Inflate(0, -1);
					rect.X++;
					region.Union(rect);
					rect.Inflate(0, -1);
					rect.X++;
					region.Union(rect);
					using Brush brush = new SolidBrush(m_colorTable.RibbonText);
					graphics.FillRegion(brush, region);
				}
				m_htBitmaps[EBITMAP.ebRightArrow] = bitmap;
			}
			return bitmap;
		}
	}

	protected Bitmap LeftArrow
	{
		get
		{
			Bitmap bitmap = m_htBitmaps[EBITMAP.ebLeftArrow] as Bitmap;
			if (bitmap == null)
			{
				bitmap = new Bitmap(3, 5);
				using (Graphics graphics = Graphics.FromImage(bitmap))
				{
					graphics.Clear(Color.Transparent);
					graphics.SmoothingMode = SmoothingMode.AntiAlias;
					Rectangle rect = new Rectangle(0, 2, 1, 1);
					using Region region = new Region(rect);
					region.Union(rect);
					rect.Inflate(0, 1);
					rect.X++;
					region.Union(rect);
					rect.Inflate(0, 1);
					rect.X++;
					region.Union(rect);
					using Brush brush = new SolidBrush(m_colorTable.RibbonText);
					graphics.FillRegion(brush, region);
				}
				m_htBitmaps[EBITMAP.ebLeftArrow] = bitmap;
			}
			return bitmap;
		}
	}

	static RibbonPanelRenderer()
	{
		m_blBackGround = new Blend();
		m_blBackGround.Positions = new float[3] { 0f, 0.3f, 1f };
		m_blBackGround.Factors = new float[3] { 1f, 0f, 1f };
		m_blGroupedBackGround = new Blend();
		m_blGroupedBackGround.Positions = new float[4] { 0f, 0.1f, 0.2f, 1f };
		m_blGroupedBackGround.Factors = new float[4] { 0.6f, 0.8f, 0.9f, 0.95f };
	}

	public RibbonPanelRenderer(Office12ColorTable colorTable)
	{
		m_colorTable = colorTable;
	}

	public int GetBorderWidth(RibbonPanel panel)
	{
		return 2;
	}

	public void DrawBackground(RibbonPanel panel, PaintEventArgs pe)
	{
		RECT rect = default(RECT);
		if (!WindowsAPI.GetWindowRect(panel.Handle, ref rect) || rect.Width <= 0 || rect.Height <= 0)
		{
			return;
		}
		Graphics graphics = pe.Graphics;
		Rectangle rect2 = new Rectangle(Point.Empty, rect.Size);
		ToolStripTabGroup tabGroup = panel.GetTabGroup();
		using (LinearGradientBrush linearGradientBrush = ((tabGroup != null) ? GetGroupedBackgroundBrush(tabGroup.Color, Color.White, rect2.Height) : GetBackgroundBrush(rect2.Height, bSelected: false)))
		{
			linearGradientBrush.TranslateTransform(0f, -2f, MatrixOrder.Append);
			pe.Graphics.FillRectangle(linearGradientBrush, rect2);
		}
		ToolStripTabItem tabItem = panel.TabItem;
		if (tabItem != null)
		{
			ToolStrip currentParent = tabItem.GetCurrentParent();
			if (currentParent != null)
			{
				Rectangle rectangle = currentParent.RectangleToScreen(tabItem.Bounds);
				graphics.ExcludeClip(new Rectangle(rectangle.X - rect.left, 0, rectangle.Width, 2));
			}
		}
	}

	public void DrawFrame(RibbonPanel panel)
	{
		IntPtr handle = panel.Handle;
		RECT rect = default(RECT);
		if (!WindowsAPI.GetWindowRect(handle, ref rect) || rect.Width <= 0 || rect.Height <= 0)
		{
			return;
		}
		IntPtr windowDC = WindowsAPI.GetWindowDC(handle);
		try
		{
			Rectangle rectangle = new Rectangle(0, 0, rect.Width, rect.Height);
			if (!(windowDC != IntPtr.Zero))
			{
				return;
			}
			Rectangle rectangle2 = new Rectangle(2, 2, rect.Width - 4, rect.Height - 4);
			if (panel.IsLeftScroll)
			{
				rectangle2.X += 12;
				rectangle2.Width -= 12;
			}
			if (panel.IsRightScroll)
			{
				rectangle2.Width -= 12;
			}
			WindowsAPI.ExcludeClipRect(windowDC, rectangle2.Left, rectangle2.Top, rectangle2.Right, rectangle2.Bottom);
			using BufferedGraphics bufferedGraphics = BufferedGraphicsManager.Current.Allocate(windowDC, rectangle);
			Graphics graphics = bufferedGraphics.Graphics;
			ToolStripTabItem tabItem = panel.TabItem;
			ToolStripTabGroup tabGroup = panel.GetTabGroup();
			if (!IsPanelAboveTheTabItem(panel) && tabItem != null)
			{
				ToolStrip currentParent = tabItem.GetCurrentParent();
				if (currentParent != null)
				{
					Rectangle rectangle3 = currentParent.RectangleToScreen(tabItem.Bounds);
					Rectangle rect2 = new Rectangle(rectangle3.X - rect.left, 0, rectangle3.Width, 2);
					using (LinearGradientBrush brush = ((tabGroup != null) ? GetGroupedBackgroundBrush(Office12ColorTable.GetAlphaBlendedColor(tabGroup.Color, Color.White, 112), Office12ColorTable.GetAlphaBlendedColor(tabGroup.Color, Color.White, 96), rectangle.Height) : GetBackgroundBrush(rectangle.Height, bSelected: false)))
					{
						graphics.FillRectangle(brush, rect2);
					}
					graphics.ExcludeClip(rect2);
				}
			}
			DrawBorders(graphics, panel, tabGroup, rectangle);
			if (panel.IsRightScroll)
			{
				DrawRightScroll(graphics, panel, rectangle);
			}
			if (panel.IsLeftScroll)
			{
				DrawLeftScroll(graphics, panel, rectangle);
			}
			bufferedGraphics.Render();
		}
		finally
		{
			WindowsAPI.ReleaseDC(handle, windowDC);
		}
	}

	public void DrawBorders(Graphics g, RibbonPanel panel, ToolStripTabGroup tsTabGroup, Rectangle rect)
	{
		bool flag = tsTabGroup != null;
		using (Pen pen = GetBorderPenHighLight())
		{
			g.DrawPolygon(pen, RendererUtils.GetRoundedPolygon(Rectangle.Inflate(rect, -1, -1), 1));
		}
		using (Pen pen2 = (flag ? GetGroupedBorderPen() : GetBorderPen()))
		{
			g.DrawPolygon(pen2, RendererUtils.GetRoundedPolygon(rect, 2));
		}
		if (flag)
		{
			Color alphaBlendedColor = Office12ColorTable.GetAlphaBlendedColor(tsTabGroup.Color, Color.White, 96);
			using Pen pen3 = new Pen(alphaBlendedColor);
			g.DrawLine(pen3, rect.X + 3 + (panel.IsLeftScroll ? 12 : 0), rect.Y + 1, rect.Right - 4 - (panel.IsRightScroll ? 12 : 0), rect.Y + 1);
		}
	}

	public void DrawRightScroll(Graphics g, RibbonPanel panel, Rectangle rect)
	{
		Rectangle rectangle = new Rectangle(rect.Width - 12 - 2, 0, 14, rect.Height);
		using (Brush brush = GetBackgroundBrush(rectangle.Height, panel.RightScrollSelected))
		{
			g.FillRectangle(brush, rectangle);
		}
		g.SmoothingMode = SmoothingMode.AntiAlias;
		g.DrawPolygon(Pens.White, RendererUtils.GetSquareRoundedToRightPolygon(Rectangle.Inflate(rectangle, -1, -1), 1));
		using (Pen pen = GetBorderPen())
		{
			g.DrawPolygon(pen, RendererUtils.GetSquareRoundedToRightPolygon(rectangle, 2));
		}
		Image rightArrow = RightArrow;
		int x = rect.Width - rectangle.Width + (rectangle.Width - 3) / 2;
		int y = (rectangle.Height - 5) / 2;
		g.DrawImage(rightArrow, x, y);
	}

	public void DrawLeftScroll(Graphics g, RibbonPanel panel, Rectangle rect)
	{
		Rectangle rectangle = new Rectangle(0, 0, 14, rect.Height);
		using (Brush brush = GetBackgroundBrush(rectangle.Height, panel.LeftScrollSelected))
		{
			g.FillRectangle(brush, rectangle);
		}
		g.SmoothingMode = SmoothingMode.AntiAlias;
		g.DrawPolygon(Pens.White, RendererUtils.GetSquareRoundedToLeftPolygon(Rectangle.Inflate(rectangle, -1, -1), 1));
		using (Pen pen = GetBorderPen())
		{
			g.DrawPolygon(pen, RendererUtils.GetSquareRoundedToLeftPolygon(rectangle, 2));
		}
		Image leftArrow = LeftArrow;
		int x = (rectangle.Width - 3) / 2;
		int y = (rectangle.Height - 5) / 2;
		g.DrawImage(leftArrow, x, y);
	}

	private LinearGradientBrush GetBackgroundBrush(int nHeight, bool bSelected)
	{
		Color color = (bSelected ? m_colorTable.ButtonSelectedGradientBegin : m_colorTable.ToolStripGradientBegin);
		Color color2 = (bSelected ? m_colorTable.ButtonSelectedGradientEnd : m_colorTable.ToolStripGradientEnd);
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, 0, 1, nHeight), color, color2, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blBackGround;
		return linearGradientBrush;
	}

	private LinearGradientBrush GetGroupedBackgroundBrush(Color clBegin, Color clEnd, int nHeight)
	{
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, 0, 1, nHeight), clBegin, clEnd, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blGroupedBackGround;
		return linearGradientBrush;
	}

	private Pen GetGroupedBorderPen()
	{
		return new Pen(m_colorTable.RibbonPanelGroupedBorderEnd);
	}

	private Pen GetBorderPenHighLight()
	{
		return new Pen(m_colorTable.RibbonPanelBorderBegin);
	}

	private Pen GetBorderPen()
	{
		return new Pen(m_colorTable.RibbonPanelBorderEnd);
	}

	private bool IsPanelAboveTheTabItem(RibbonPanel panel)
	{
		bool result = false;
		if (panel.Parent is RibbonControlAdv.RibbonControlPopup { Owner: var owner } ribbonControlPopup)
		{
			int y = owner.PointToScreen(panel.TabItem.Bounds.Location).Y;
			Syncfusion.Runtime.InteropServices.NativeMethods.RECT lpRect = default(Syncfusion.Runtime.InteropServices.NativeMethods.RECT);
			Syncfusion.Runtime.InteropServices.NativeMethods.GetWindowRect((int)ribbonControlPopup.Handle, ref lpRect);
			result = y > lpRect.top;
		}
		return result;
	}
}
