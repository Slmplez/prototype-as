using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;
using Syncfusion.Windows.Forms.Tools.Design;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(RibbonTabGroupDesigner))]
[ToolboxItem(false)]
public class RibbonTabGroup : ToolStrip
{
	private const int DEF_PIXELS_TO_INFLATE_CAPTION = 2;

	private static readonly float[] DEF_BACKGROUND_BLEND_POSITIONS;

	private static readonly float[] DEF_BACKGROUND_BLEND_FACTORS;

	internal static readonly Color DEF_INITIAL_CAPTION_FONT_COLOR;

	internal static readonly Color DEF_INITIAL_CAPTION_COLOR1;

	internal static readonly Color DEF_INITIAL_CAPTION_COLOR2;

	private bool m_bSingleItem;

	private Color m_clrCaptionFont = DEF_INITIAL_CAPTION_FONT_COLOR;

	private Color m_clrCaption1 = DEF_INITIAL_CAPTION_COLOR1;

	private Color m_clrCaption2 = DEF_INITIAL_CAPTION_COLOR2;

	private static Blend s_backgroundBlend;

	private static Font s_captionFont;

	private static int s_captionHeight;

	protected internal bool Active;

	private IContainer components;

	[Browsable(false)]
	public bool SingleItem
	{
		get
		{
			return m_bSingleItem;
		}
		set
		{
			if (m_bSingleItem != value)
			{
				m_bSingleItem = value;
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Color CaptionFontColor
	{
		get
		{
			return m_clrCaptionFont;
		}
		set
		{
			if (!(m_clrCaptionFont == value))
			{
				m_clrCaptionFont = value;
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Color CaptionColor1
	{
		get
		{
			return m_clrCaption1;
		}
		set
		{
			if (!(m_clrCaption1 == value))
			{
				m_clrCaption1 = value;
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public Color CaptionColor2
	{
		get
		{
			return m_clrCaption2;
		}
		set
		{
			if (!(m_clrCaption2 == value))
			{
				m_clrCaption2 = value;
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
			}
		}
	}

	public static int CaptionHeight => s_captionHeight;

	[DefaultValue(ToolStripGripStyle.Hidden)]
	public new ToolStripGripStyle GripStyle
	{
		get
		{
			return base.GripStyle;
		}
		set
		{
			base.GripStyle = value;
		}
	}

	[DefaultValue(ToolStripLayoutStyle.HorizontalStackWithOverflow)]
	public new ToolStripLayoutStyle LayoutStyle
	{
		get
		{
			return base.LayoutStyle;
		}
		set
		{
			base.LayoutStyle = value;
		}
	}

	[DefaultValue(true)]
	public new bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			base.AutoSize = value;
		}
	}

	[DefaultValue(false)]
	public new bool CanOverflow
	{
		get
		{
			return base.CanOverflow;
		}
		set
		{
			base.CanOverflow = value;
		}
	}

	static RibbonTabGroup()
	{
		DEF_BACKGROUND_BLEND_POSITIONS = new float[3] { 0f, 0.5f, 1f };
		DEF_BACKGROUND_BLEND_FACTORS = new float[3] { 0f, 1f, 0f };
		DEF_INITIAL_CAPTION_FONT_COLOR = Color.Firebrick;
		DEF_INITIAL_CAPTION_COLOR1 = Color.White;
		DEF_INITIAL_CAPTION_COLOR2 = Color.Orange;
		s_backgroundBlend = new Blend();
		s_backgroundBlend.Positions = DEF_BACKGROUND_BLEND_POSITIONS;
		s_backgroundBlend.Factors = DEF_BACKGROUND_BLEND_FACTORS;
		s_captionFont = new Font(Control.DefaultFont.FontFamily, Control.DefaultFont.Size, FontStyle.Bold);
		s_captionHeight = (int)s_captionFont.GetHeight() + 2;
	}

	public RibbonTabGroup()
	{
		GripStyle = ToolStripGripStyle.Hidden;
		LayoutStyle = ToolStripLayoutStyle.HorizontalStackWithOverflow;
		AutoSize = true;
		CanOverflow = false;
		Text = base.Name;
	}

	protected override void WndProc(ref Message m)
	{
		switch (m.Msg)
		{
		case 131:
			OnNcCalcSize(ref m);
			break;
		case 133:
			OnNcPaint(ref m);
			break;
		}
		base.WndProc(ref m);
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		if (base.Renderer is ToolStripProfessionalRenderer toolStripProfessionalRenderer)
		{
			Color menuStripGradientBegin = toolStripProfessionalRenderer.ColorTable.MenuStripGradientBegin;
			Color menuStripGradientEnd = toolStripProfessionalRenderer.ColorTable.MenuStripGradientEnd;
			Control parentForChildsTransparentRendering = ((IRibbonHeaderControl)base.Parent).GetParentForChildsTransparentRendering();
			Size clientSize = parentForChildsTransparentRendering.ClientSize;
			if (clientSize.Width > 0 && clientSize.Height > 0)
			{
				Rectangle rect = new Rectangle(0, 0, clientSize.Width, 1);
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect, menuStripGradientBegin, menuStripGradientEnd, LinearGradientMode.Horizontal);
				Point point = parentForChildsTransparentRendering.PointToClient(PointToScreen(new Point(0, 0)));
				linearGradientBrush.TranslateTransform(clientSize.Width - point.X, clientSize.Height - point.Y, MatrixOrder.Append);
				linearGradientBrush.Blend = s_backgroundBlend;
				e.Graphics.FillRectangle(linearGradientBrush, base.ClientRectangle);
				InvalidateInnerControls();
			}
		}
		else
		{
			base.OnPaintBackground(e);
		}
	}

	public void InvalidateWithInnerControl()
	{
		if (!base.IsDisposed)
		{
			Invalidate();
			if (SingleItem)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(base.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
			}
			InvalidateInnerControls();
		}
	}

	private void InvalidateInnerControls()
	{
		foreach (ToolStripItem item in Items)
		{
			if (item is ToolStripControlHost toolStripControlHost)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.RedrawWindow(toolStripControlHost.Control.Handle, IntPtr.Zero, IntPtr.Zero, 1281u);
				toolStripControlHost.Control.Invalidate(invalidateChildren: true);
			}
		}
	}

	private void OnNcCalcSize(ref Message m)
	{
		RECT rECT = (RECT)Marshal.PtrToStructure(m.LParam, typeof(RECT));
		rECT.top += Math.Min(CaptionHeight, rECT.Height);
		Marshal.StructureToPtr((object)rECT, m.LParam, fDeleteOld: false);
	}

	private void OnNcPaint(ref Message m)
	{
		IntPtr hWnd = m.HWnd;
		IntPtr windowDC = WindowsAPI.GetWindowDC(hWnd);
		try
		{
			if (!(windowDC != IntPtr.Zero))
			{
				return;
			}
			RECT rect = default(RECT);
			WindowsAPI.GetWindowRect(hWnd, ref rect);
			RECT lParam = new RECT(0, 0, rect.Width, rect.Height);
			WindowsAPI.DefWindowProc(hWnd, Msg.WM_NCCALCSIZE, IntPtr.Zero, ref lParam);
			using Graphics graphics = Graphics.FromHdc(windowDC);
			Rectangle rectangle = lParam;
			rectangle.Height = CaptionHeight;
			if (SingleItem)
			{
				if (!(base.Renderer is ToolStripProfessionalRenderer toolStripProfessionalRenderer))
				{
					return;
				}
				Color menuStripGradientBegin = toolStripProfessionalRenderer.ColorTable.MenuStripGradientBegin;
				Color menuStripGradientEnd = toolStripProfessionalRenderer.ColorTable.MenuStripGradientEnd;
				Control parentForChildsTransparentRendering = ((IRibbonHeaderControl)base.Parent).GetParentForChildsTransparentRendering();
				Size clientSize = parentForChildsTransparentRendering.ClientSize;
				if (clientSize.Width > 0 && clientSize.Height > 0)
				{
					Rectangle rect2 = new Rectangle(Point.Empty, clientSize);
					using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(rect2, menuStripGradientBegin, menuStripGradientEnd, LinearGradientMode.Horizontal);
					Point point = parentForChildsTransparentRendering.PointToClient(PointToScreen(new Point(0, 0)));
					linearGradientBrush.TranslateTransform(clientSize.Width - point.X, clientSize.Height - point.Y, MatrixOrder.Append);
					linearGradientBrush.Blend = s_backgroundBlend;
					graphics.FillRectangle(linearGradientBrush, rectangle);
					return;
				}
				return;
			}
			using (Brush brush = new LinearGradientBrush(rectangle, m_clrCaption1, m_clrCaption2, LinearGradientMode.Vertical))
			{
				graphics.FillRectangle(brush, rectangle);
			}
			rectangle.Inflate(-5, 0);
			rectangle.Offset(1, 1);
			using Brush brush2 = new SolidBrush(m_clrCaptionFont);
			graphics.DrawString(Text, s_captionFont, brush2, rectangle);
		}
		finally
		{
			WindowsAPI.ReleaseDC(hWnd, windowDC);
		}
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
	}
}
