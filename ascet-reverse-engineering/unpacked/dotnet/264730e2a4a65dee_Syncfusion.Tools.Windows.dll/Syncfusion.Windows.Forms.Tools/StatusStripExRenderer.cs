using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

public class StatusStripExRenderer : Office12ToolStripRenderer
{
	private const int SEPARATOR_LEFT = 27;

	private Office12ColorTable m_colorTable;

	private static Blend m_blBackGround;

	static StatusStripExRenderer()
	{
		m_blBackGround = new Blend();
		m_blBackGround.Positions = new float[3] { 0f, 0.3f, 1f };
		m_blBackGround.Factors = new float[3] { 1f, 0f, 1f };
	}

	public StatusStripExRenderer(Office12ColorTable colorTable)
		: base(colorTable)
	{
		m_colorTable = colorTable;
	}

	~StatusStripExRenderer()
	{
		m_colorTable = null;
	}

	public void DrawBackground(StatusStripEx statusStrip, PaintEventArgs pe)
	{
	}

	protected override void Initialize(ToolStrip toolStrip)
	{
		base.Initialize(toolStrip);
	}

	protected override void OnRenderToolStripBackground(ToolStripRenderEventArgs e)
	{
		bool flag = false;
		if (SystemInfo.IsVisualStyleEnabled && e.ToolStrip is StatusStripEx)
		{
			flag = PaintToolstripBackground(e);
		}
		if (!flag)
		{
			base.OnRenderToolStripBackground(e);
		}
	}

	protected override void OnRenderImageMargin(ToolStripRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintImageMargin(e))
		{
			base.OnRenderImageMargin(e);
		}
	}

	protected override void OnRenderSeparator(ToolStripSeparatorRenderEventArgs e)
	{
		if (!SystemInfo.IsVisualStyleEnabled || !PaintSeparators(e))
		{
			base.OnRenderSeparator(e);
		}
	}

	protected override void OnRenderItemText(ToolStripItemTextRenderEventArgs e)
	{
		if (!PaintMenuItemText(e))
		{
			base.OnRenderItemText(e);
		}
	}

	private Brush GetBackgroundBrush(int nHeight)
	{
		Color toolStripGradientBegin = m_colorTable.ToolStripGradientBegin;
		Color toolStripGradientEnd = m_colorTable.ToolStripGradientEnd;
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(0, 0, 1, nHeight), toolStripGradientBegin, toolStripGradientEnd, LinearGradientMode.Vertical);
		linearGradientBrush.Blend = m_blBackGround;
		return linearGradientBrush;
	}

	private Brush GetBackgroundBrushDark(int nHeight)
	{
		Color separatorStatusControlsAreaBegin = m_colorTable.SeparatorStatusControlsAreaBegin;
		Color separatorStatusControlsAreaEnd = m_colorTable.SeparatorStatusControlsAreaEnd;
		return new LinearGradientBrush(new Rectangle(0, 0, 1, nHeight), separatorStatusControlsAreaBegin, separatorStatusControlsAreaEnd, LinearGradientMode.Vertical);
	}

	private bool PaintToolstripBackground(ToolStripRenderEventArgs e)
	{
		bool result = false;
		RECT rect = default(RECT);
		if (e.ToolStrip is StatusStripEx statusStripEx && WindowsAPI.GetWindowRect(statusStripEx.Handle, ref rect) && rect.Width > 0 && rect.Height > 0)
		{
			Graphics graphics = e.Graphics;
			PanelItemRenderEventArgs e2 = e as PanelItemRenderEventArgs;
			Rectangle notificationslArea = statusStripEx.NotificationslArea;
			Rectangle statusControlsArea = statusStripEx.StatusControlsArea;
			if (e2 != null)
			{
				Point location = e2.PanelStrip.Location;
				notificationslArea.Offset(-location.X, -location.Y);
				statusControlsArea.Offset(-location.X, -location.Y);
			}
			if (notificationslArea.Width > 0)
			{
				using Brush brush = GetBackgroundBrush(notificationslArea.Height);
				graphics.FillRectangle(brush, notificationslArea);
			}
			if (statusControlsArea.Width > 0)
			{
				using Brush brush2 = GetBackgroundBrushDark(statusControlsArea.Height);
				graphics.FillRectangle(brush2, statusControlsArea);
			}
			int count = statusStripEx.Separators.Count;
			if (count > 0 && e2 == null)
			{
				using Pen pen = new Pen(m_colorTable.SeparatorBegin);
				using Pen pen2 = new Pen(m_colorTable.SeparatoraEnd);
				for (int i = 0; i < count; i++)
				{
					if (statusStripEx.RightToLeft == RightToLeft.Yes)
					{
						graphics.DrawLine(pen, statusStripEx.Separators[i], 0, statusStripEx.Separators[i], statusControlsArea.Height);
						graphics.DrawLine(pen2, statusStripEx.Separators[i] + 1, 0, statusStripEx.Separators[i] + 1, statusControlsArea.Height);
					}
					else
					{
						graphics.DrawLine(pen2, statusStripEx.Separators[i], 0, statusStripEx.Separators[i], statusControlsArea.Height);
						graphics.DrawLine(pen, statusStripEx.Separators[i] + 1, 0, statusStripEx.Separators[i] + 1, statusControlsArea.Height);
					}
				}
			}
			if (statusStripEx.SeparatorPosition != -1 && e2 == null)
			{
				using Pen pen3 = new Pen(m_colorTable.SeparatorGradientBegin);
				using Pen pen4 = new Pen(m_colorTable.SeparatorGradientMiddle);
				using Pen pen5 = new Pen(m_colorTable.SeparatorGradientEnd);
				if (statusStripEx.RightToLeft == RightToLeft.Yes)
				{
					graphics.DrawLine(pen5, statusStripEx.SeparatorPosition, 0, statusStripEx.SeparatorPosition, statusControlsArea.Height);
					graphics.DrawLine(pen4, statusStripEx.SeparatorPosition + 1, 0, statusStripEx.SeparatorPosition + 1, statusControlsArea.Height);
					graphics.DrawLine(pen3, statusStripEx.SeparatorPosition + 2, 0, statusStripEx.SeparatorPosition + 2, statusControlsArea.Height);
				}
				else
				{
					graphics.DrawLine(pen3, statusStripEx.SeparatorPosition, 0, statusStripEx.SeparatorPosition, statusControlsArea.Height);
					graphics.DrawLine(pen4, statusStripEx.SeparatorPosition + 1, 0, statusStripEx.SeparatorPosition + 1, statusControlsArea.Height);
					graphics.DrawLine(pen5, statusStripEx.SeparatorPosition + 2, 0, statusStripEx.SeparatorPosition + 2, statusControlsArea.Height);
				}
			}
			if (statusStripEx.Dock == DockStyleEx.BottomMost && e2 == null)
			{
				using Pen pen6 = new Pen(m_colorTable.ToolStripBorder);
				graphics.DrawLine(pen6, 0, 0, statusStripEx.Width, 0);
			}
			_ = statusStripEx.Width;
			_ = statusStripEx.DisplayRectangle.Width;
			result = true;
		}
		return result;
	}

	private bool PaintImageMargin(ToolStripRenderEventArgs e)
	{
		bool result = false;
		if (e.ToolStrip is StatusStripEx)
		{
			Graphics graphics = e.Graphics;
			Rectangle rect = Rectangle.Inflate(e.AffectedBounds, -1, -2);
			using (Brush brush = new SolidBrush(base.ColorTable.ImageMarginGradientBegin))
			{
				graphics.FillRectangle(brush, rect);
			}
			graphics.DrawLine(Pens.White, rect.Left, rect.Top, rect.Left, rect.Bottom - 1);
			graphics.DrawLine(base.MenuItemBorder, rect.Right, rect.Top, rect.Right, rect.Bottom - 1);
			result = true;
		}
		return result;
	}

	private bool PaintSeparators(ToolStripSeparatorRenderEventArgs e)
	{
		bool result = false;
		Graphics graphics = e.Graphics;
		if (e.Item is ToolStripSeparator toolStripSeparator)
		{
			Rectangle rectangle = new Rectangle(Point.Empty, toolStripSeparator.Size);
			int num = (rectangle.Bottom - rectangle.Top) / 2;
			graphics.DrawLine(base.MenuItemBorder, 27, num, rectangle.Right, num);
			result = true;
		}
		return result;
	}

	private bool PaintMenuItemText(ToolStripItemTextRenderEventArgs e)
	{
		bool result = false;
		if (e.ToolStrip is StatusContextMenuStrip)
		{
			Graphics graphics = e.Graphics;
			Size size = e.Item.Size;
			Padding padding = e.ToolStrip.Padding;
			Rectangle textRectangle = e.TextRectangle;
			Rectangle bounds = new Rectangle(0, textRectangle.Y, size.Width - padding.Horizontal - textRectangle.Width, textRectangle.Height);
			TextFormatFlags textFormatFlags = TextFormatFlags.HidePrefix | TextFormatFlags.VerticalCenter;
			if (e.ToolStrip.RightToLeft == RightToLeft.Yes)
			{
				textFormatFlags |= TextFormatFlags.Right | TextFormatFlags.RightToLeft;
				bounds.X = padding.Left;
				textRectangle.X = bounds.Right;
			}
			else
			{
				bounds.X = textRectangle.Right;
			}
			Font textFont = e.TextFont;
			Color foreColor = e.Item.ForeColor;
			TextRenderer.DrawText(graphics, e.Text, textFont, textRectangle, foreColor, textFormatFlags);
			if (e.Item is StatusContextMenuStrip.StatusMenuItem { Status: var status } && !string.IsNullOrEmpty(status))
			{
				TextRenderer.DrawText(graphics, status, textFont, bounds, foreColor, textFormatFlags ^ TextFormatFlags.Right);
			}
			result = true;
		}
		return result;
	}

	internal override Rectangle GetCheckRect(ToolStripItemImageRenderEventArgs e)
	{
		Rectangle checkRect = base.GetCheckRect(e);
		if (e.ToolStrip is StatusContextMenuStrip && e.ToolStrip.RightToLeft == RightToLeft.Yes)
		{
			checkRect.X = e.Item.Bounds.Right - checkRect.Width - 1;
		}
		return checkRect;
	}
}
