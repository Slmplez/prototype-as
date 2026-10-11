using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Panel derived control that has numerous border styles and has a background composed of a multiple gradient brush.")]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.GradientPanel.bmp")]
[Designer(typeof(ScrollableControlDesigner))]
public class GradientPanel : Panel, IThemedControl, INonClientPaintingSupport, ISupportInitialize
{
	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	private ButtonBorderStyle borderSingle = ButtonBorderStyle.Solid;

	private Color m_borderColor = Color.Black;

	private BrushInfo bgBrush;

	private Brush backBrush;

	private ControlDrawing cd;

	private bool themesEnabled;

	private ThemedControlDrawing tcd;

	private bool themedBorder = true;

	private bool ignoreThemeBackground;

	private IntPtr cachedRgn = IntPtr.Zero;

	private Container components;

	[Description("Indicates if the control will ignore the theme's background color and draw the backcolor instead.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool IgnoreThemeBackground
	{
		get
		{
			return ignoreThemeBackground;
		}
		set
		{
			if (ignoreThemeBackground != value)
			{
				ignoreThemeBackground = value;
				Invalidate();
			}
		}
	}

	[DocumentationExclude]
	protected bool ThemedBorder
	{
		get
		{
			return themedBorder;
		}
		set
		{
			themedBorder = value;
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle |= 65536;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			BorderStyle borderStyle = this.borderStyle;
			if (borderStyle == BorderStyle.Fixed3D && ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
			{
				borderStyle = BorderStyle.FixedSingle;
			}
			switch (borderStyle)
			{
			case BorderStyle.Fixed3D:
				createParams.ExStyle |= 512;
				break;
			case BorderStyle.FixedSingle:
				createParams.Style |= 8388608;
				break;
			}
			createParams.Style = createParams.Style | 0x2000 | 2 | (int)WhidbeyCompatibleControlStyles.DoubleBuffer;
			return createParams;
		}
	}

	[Description("Indicates if the control is themed.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			if (themesEnabled != value)
			{
				themesEnabled = value;
				UpdateStyles();
				InvalidateWindow();
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(Border3DSide.All)]
	[Description("Indicates the border sides of the panel.")]
	public Border3DSide BorderSides
	{
		get
		{
			return borderSides;
		}
		set
		{
			if (borderSides != value)
			{
				borderSides = value;
				OnBorderSidesChanged();
				RedrawBorders();
				InvalidateWindow();
			}
		}
	}

	[Description("Lets you set the background color, gradient, etc.")]
	[Category("Appearance")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public BrushInfo BackgroundColor
	{
		get
		{
			return bgBrush;
		}
		set
		{
			if (bgBrush != value)
			{
				bgBrush = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Obsolete("This property will be removed in the future. Please use the BackgroundColor property instead.")]
	[Browsable(false)]
	public Color[] GradientColors
	{
		get
		{
			return (Color[])BackgroundColor.GradientColors.ToArray(typeof(Color));
		}
		set
		{
			BrushInfo backgroundColor = BackgroundColor;
			if (backgroundColor.Style == BrushStyle.Gradient)
			{
				BackgroundColor = new BrushInfo(backgroundColor.GradientStyle, new BrushInfoColorArrayList(value));
			}
			else if (backgroundColor.Style == BrushStyle.Pattern)
			{
				BackgroundColor = new BrushInfo(backgroundColor.PatternStyle, new BrushInfoColorArrayList(value));
			}
			else if (value.Length > 0)
			{
				BackgroundColor = new BrushInfo(GradientStyle.Vertical, new BrushInfoColorArrayList(value));
			}
		}
	}

	[Obsolete("This property will be removed in the future. Please use the BackgroundColor property instead.")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool VerticalGradient
	{
		get
		{
			return IsVerticalGradient;
		}
		set
		{
			if ((!value || !IsVerticalGradient) && (value || IsVerticalGradient))
			{
				BrushInfo backgroundColor = BackgroundColor;
				BackgroundColor = new BrushInfo(GradientStyle.Vertical, backgroundColor.GradientColors);
			}
		}
	}

	[Obsolete("This property will be removed in the future. Please use the BackgroundColor property instead.")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool GradientBackground
	{
		get
		{
			return !BackgroundColor.IsEmpty;
		}
		set
		{
			if (!value)
			{
				BackgroundColor = BrushInfo.Empty;
			}
		}
	}

	[DefaultValue(typeof(Color), "Black")]
	[Category("Appearance")]
	[Description("Indicates the color of the 2D border.")]
	public virtual Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value)
			{
				m_borderColor = value;
				OnBorderColorChanged();
				RedrawBorders();
			}
		}
	}

	protected virtual Color BorderColorInternal => m_borderColor;

	[Category("Appearance")]
	[Description("Indicates the 2D border style.")]
	[DefaultValue(ButtonBorderStyle.Solid)]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return borderSingle;
		}
		set
		{
			if (borderSingle != value)
			{
				borderSingle = value;
				OnBorderSingleChanged();
				RedrawBorders();
				InvalidateWindow();
			}
		}
	}

	[DefaultValue(BorderStyle.Fixed3D)]
	public new BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			base.BorderStyle = BorderStyle.None;
			if (this.borderStyle != value)
			{
				BorderStyle borderStyle = value;
				if (value == BorderStyle.FixedSingle)
				{
					borderStyle = BorderStyle.Fixed3D;
				}
				base.BorderStyle = borderStyle;
				this.borderStyle = value;
				UpdateStyles();
				InvalidateWindow();
				OnBorderStyleChanged();
			}
		}
	}

	[Category("Appearance")]
	[Description("Indicates the style of the 3D border.")]
	[DefaultValue(Border3DStyle.Sunken)]
	public Border3DStyle Border3DStyle
	{
		get
		{
			return border3DStyle;
		}
		set
		{
			if (border3DStyle != value)
			{
				border3DStyle = value;
				OnBorder3DStyleChanged();
				RedrawBorders();
				InvalidateWindow();
			}
		}
	}

	private bool IsVerticalGradient
	{
		get
		{
			if (bgBrush != null && bgBrush.Style == BrushStyle.Gradient && bgBrush.GradientStyle == GradientStyle.Vertical)
			{
				return true;
			}
			return false;
		}
	}

	private bool IsHorizontalGradient
	{
		get
		{
			if (bgBrush != null && bgBrush.Style == BrushStyle.Gradient && bgBrush.GradientStyle == GradientStyle.Horizontal)
			{
				return true;
			}
			return false;
		}
	}

	[Description("Occurs when border style is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderStyleChanged;

	[Description("Occurs when border's 3D style is changed.")]
	[Category("Property Changed")]
	public event EventHandler Border3DStyleChanged;

	[Category("Property Changed")]
	[Description("Occurs when border's 2D style is changed.")]
	public event EventHandler BorderSingleChanged;

	[Description("Occurs when border color is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderColorChanged;

	[Description("Occurs when gradient background is changed.")]
	[Category("Property Changed")]
	public event EventHandler GradientBackgroundChanged;

	[Category("Property Changed")]
	[Description("Occurs when vertical gradient is changed.")]
	public event EventHandler VerticalGradientChanged;

	[Category("Property Changed")]
	[Description("Occurs when gradient colors are changed.")]
	public event EventHandler GradientColorsChanged;

	[Description("Occurs when border sides are changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Description("Occurs when ThemesEnabled property is changed.")]
	[Category("Property Changed")]
	public event EventHandler ThemeChanged;

	protected override void WndProc(ref Message m)
	{
		if (cachedRgn != IntPtr.Zero)
		{
			NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		if (m.Msg == 794)
		{
			InvalidateWindow();
		}
		if (m.Msg == 133)
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		if (m.Msg == 276 || m.Msg == 277)
		{
			Invalidate();
		}
		base.WndProc(ref m);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rectangle = displayRect;
		int num = ((borderStyle != BorderStyle.Fixed3D) ? 1 : 2);
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
		{
			num = 1;
		}
		if (borderStyle == BorderStyle.None)
		{
			num = 0;
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rectangle.Location, new Size(num, rectangle.Height)),
			new Rectangle(rectangle.Location, new Size(rectangle.Width, num)),
			new Rectangle(rectangle.Width - num, rectangle.Y, num, rectangle.Height),
			new Rectangle(rectangle.X, rectangle.Height - num, rectangle.Width, num)
		};
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed && themedBorder)
		{
			for (int i = 0; i < 4; i++)
			{
				tcd.DrawThemeBackground(graphics, 1, 1, rectangle, array[i]);
			}
		}
		else
		{
			for (int j = 0; j < 4; j++)
			{
				graphics.FillRectangle(backBrush, array[j]);
			}
			if (BorderSides != Border3DSide.All)
			{
				if (BorderSides != Border3DSide.Middle)
				{
					cd.DrawBorder(graphics, rectangle, borderStyle, border3DStyle, borderSingle, BorderColorInternal, borderSides);
				}
			}
			else if (!DrawSingleBorder(graphics, rectangle))
			{
				cd.DrawBorder(graphics, rectangle, borderStyle, border3DStyle, borderSingle, BorderColorInternal);
			}
		}
		return NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	private bool DrawSingleBorder(Graphics g, Rectangle bounds)
	{
		if (borderStyle == BorderStyle.FixedSingle)
		{
			switch (borderSingle)
			{
			case ButtonBorderStyle.Inset:
			{
				using (Pen pen3 = new Pen(ControlPaint.Dark(BorderColorInternal, 1f)))
				{
					g.DrawLine(pen3, bounds.X, bounds.Y, bounds.Right - 1, bounds.Y);
					g.DrawLine(pen3, bounds.X, bounds.Y, bounds.X, bounds.Bottom - 1);
				}
				using (Pen pen4 = new Pen(ControlPaint.Light(BorderColorInternal, 1f)))
				{
					g.DrawLine(pen4, bounds.X, bounds.Bottom - 1, bounds.Right - 1, bounds.Bottom - 1);
					g.DrawLine(pen4, bounds.Right - 1, bounds.Y, bounds.Right - 1, bounds.Bottom - 1);
				}
				return true;
			}
			case ButtonBorderStyle.Outset:
			{
				using (Pen pen = new Pen(ControlPaint.Light(BorderColorInternal, 1f)))
				{
					g.DrawLine(pen, bounds.X, bounds.Y, bounds.Right - 1, bounds.Y);
					g.DrawLine(pen, bounds.X, bounds.Y, bounds.X, bounds.Bottom - 1);
				}
				using (Pen pen2 = new Pen(ControlPaint.Dark(BorderColorInternal, 1f)))
				{
					g.DrawLine(pen2, bounds.X, bounds.Bottom - 1, bounds.Right - 1, bounds.Bottom - 1);
					g.DrawLine(pen2, bounds.Right - 1, bounds.Y, bounds.Right - 1, bounds.Bottom - 1);
				}
				return true;
			}
			}
		}
		return false;
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected virtual void OnBorderStyleChanged()
	{
		if (this.BorderStyleChanged != null)
		{
			this.BorderStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorder3DStyleChanged()
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderSingleChanged()
	{
		if (this.BorderSingleChanged != null)
		{
			this.BorderSingleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderColorChanged()
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnGradientBackgroundChanged()
	{
		if (this.GradientBackgroundChanged != null)
		{
			this.GradientBackgroundChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnVerticalGradientChanged()
	{
		if (this.VerticalGradientChanged != null)
		{
			this.VerticalGradientChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnGradientColorsChanged()
	{
		if (this.GradientColorsChanged != null)
		{
			this.GradientColorsChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnBorderSidesChanged()
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, EventArgs.Empty);
		}
	}

	private void ResetBackgroundColor()
	{
		BackgroundColor = BrushInfo.Empty;
	}

	private bool ShouldSerializeBackgroundColor()
	{
		if (bgBrush == BrushInfo.Empty)
		{
			return false;
		}
		return true;
	}

	protected virtual void RedrawBorders()
	{
		if (base.IsHandleCreated)
		{
			NativeMethods.SendMessage(base.Handle, 133, new IntPtr(1), IntPtr.Zero);
		}
	}

	public GradientPanel()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(GradientPanel));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		InitializeComponent();
		cd = new ControlDrawing();
		backBrush = new SolidBrush(BackColor);
		bgBrush = BrushInfo.Empty;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("EDIT", this);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (tcd != null)
			{
				tcd.Dispose();
				tcd = null;
			}
			backBrush.Dispose();
			bgBrush = null;
			cd = null;
			base.BackColorChanged -= GradientPanel_BackColorChanged;
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		base.Size = new System.Drawing.Size(224, 80);
		base.BackColorChanged += new System.EventHandler(GradientPanel_BackColorChanged);
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsThemeActive && !ignoreThemeBackground)
		{
			flag = PaintChildrenBackground(pevent.Graphics, this, pevent.ClipRectangle);
		}
		if (!flag)
		{
			base.OnPaintBackground(pevent);
		}
	}

	protected virtual void ThemedPaintBackground(Graphics graphics, Rectangle rect, Rectangle clip)
	{
		tcd.DrawThemeBackground(graphics, 1, base.Enabled ? 1 : 4, rect, clip);
	}

	private bool PaintChildrenBackground(Graphics graphics, Control control, Rectangle clipRect)
	{
		foreach (Control control2 in control.Controls)
		{
			Rectangle r = new Rectangle(control2.Location, control2.Size);
			r = control2.Parent.RectangleToScreen(r);
			if (RectangleToClient(r).Contains(clipRect))
			{
				if (PaintChildrenBackground(graphics, control2, clipRect))
				{
					return true;
				}
				Rectangle clientRectangle = base.ClientRectangle;
				clientRectangle = RectangleToScreen(clientRectangle);
				clientRectangle = control2.RectangleToClient(clientRectangle);
				clipRect = RectangleToScreen(clipRect);
				clipRect = control2.RectangleToClient(clipRect);
				ThemedPaintBackground(graphics, clientRectangle, clipRect);
				return true;
			}
		}
		return false;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (base.Height <= 0 || base.Width <= 0)
		{
			return;
		}
		if (!ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || IgnoreThemeBackground)
		{
			if (BackgroundColor != null && BackgroundColor != BrushInfo.Empty)
			{
				BrushPaint.FillRectangle(e.Graphics, base.ClientRectangle, BackgroundColor);
			}
		}
		else if (base.Enabled)
		{
			using Brush brush = new SolidBrush(SystemColors.Control);
			e.Graphics.FillRectangle(brush, base.ClientRectangle);
		}
		else
		{
			using Brush brush2 = new SolidBrush((BackColor == SystemColors.Window) ? SystemColors.Control : BackColor);
			e.Graphics.FillRectangle(brush2, base.ClientRectangle);
		}
		RaisePaintEvent(this, e);
	}

	private void GradientPanel_BackColorChanged(object sender, EventArgs e)
	{
		backBrush = new SolidBrush(BackColor);
		InvalidateWindow();
	}

	private void InvalidateWindow()
	{
		Invalidate();
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		InvalidateWindow();
	}

	[Description("Signals the object that initialization is starting.")]
	public virtual void BeginInit()
	{
	}

	[Description("Signals the object that initialization is complete.")]
	public virtual void EndInit()
	{
	}
}
