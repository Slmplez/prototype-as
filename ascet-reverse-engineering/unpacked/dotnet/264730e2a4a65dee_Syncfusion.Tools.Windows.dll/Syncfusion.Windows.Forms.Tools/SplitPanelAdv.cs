using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(SplitPanelAdvDesigner))]
[Docking(DockingBehavior.Never)]
[ToolboxItem(false)]
public class SplitPanelAdv : Panel
{
	private const string DEF_PANEL_NAME = "Panel";

	private bool m_bCollapsed;

	private static int m_panelUniqueIndex;

	private SplitContainerAdv m_splitContainer;

	private BrushInfo m_bgBrush = BrushInfo.Empty;

	private bool m_bThemesEnabled;

	private ThemedControlDrawing m_tcd;

	private bool m_bIgnoreThemeBackground;

	private IContainer components;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool TabStop => base.TabStop;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new int TabIndex => base.TabIndex;

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override AnchorStyles Anchor => base.Anchor;

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new string Name
	{
		get
		{
			return base.Name;
		}
		set
		{
			base.Name = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new BorderStyle BorderStyle => base.BorderStyle;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Category("Appearance")]
	[Description("Lets you set the background color, gradient, etc.")]
	public BrushInfo BackgroundColor
	{
		get
		{
			return m_bgBrush;
		}
		set
		{
			if (m_bgBrush != value)
			{
				m_bgBrush = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("Indicates if the control is themed.")]
	public bool ThemesEnabled
	{
		get
		{
			return m_bThemesEnabled;
		}
		set
		{
			if (m_bThemesEnabled != value)
			{
				m_bThemesEnabled = value;
				UpdateStyles();
				InvalidateWindow();
				OnThemeChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates if the control will ignore the theme's background color and draw the backcolor instead.")]
	public bool IgnoreThemeBackground
	{
		get
		{
			return m_bIgnoreThemeBackground;
		}
		set
		{
			if (m_bIgnoreThemeBackground != value)
			{
				m_bIgnoreThemeBackground = value;
				Invalidate();
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[Browsable(false)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new bool Visible => !m_bCollapsed;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	public override DockStyle Dock => base.Dock;

	protected internal bool DrawSelected => m_splitContainer != null && m_splitContainer.SelectedPanel == this;

	protected internal bool Collapsed
	{
		get
		{
			return m_bCollapsed;
		}
		set
		{
			if (value != m_bCollapsed)
			{
				base.Visible = !value;
				m_bCollapsed = value;
			}
		}
	}

	protected bool IsVerticalGradient
	{
		get
		{
			if (m_bgBrush != null && m_bgBrush.Style == BrushStyle.Gradient)
			{
				return m_bgBrush.GradientStyle == GradientStyle.Vertical;
			}
			return false;
		}
	}

	protected bool IsHorizontalGradient
	{
		get
		{
			if (m_bgBrush != null && m_bgBrush.Style == BrushStyle.Gradient)
			{
				return m_bgBrush.GradientStyle == GradientStyle.Horizontal;
			}
			return false;
		}
	}

	[Category("Property Changed")]
	public event EventHandler ThemeChanged;

	public SplitPanelAdv(SplitContainerAdv container)
	{
		if (container == null)
		{
			throw new NullReferenceException("container");
		}
		SetStyle(ControlStyles.SupportsTransparentBackColor, value: true);
		SetStyle(ControlStyles.ResizeRedraw, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			m_tcd = new ThemedControlDrawing("EDIT", this);
		}
		base.Visible = true;
		m_splitContainer = container;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
			if (m_tcd != null)
			{
				m_tcd.Dispose();
				m_tcd = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
	}

	protected void ResetBackgroundColor()
	{
		m_bgBrush = BrushInfo.Empty;
	}

	protected bool ShouldSerializeBackgroundColor()
	{
		return !m_bgBrush.Equals(BrushInfo.Empty);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		RaisePaintEvent(this, e);
	}

	protected override void OnPaintBackground(PaintEventArgs e)
	{
		base.OnPaintBackground(e);
		if (base.Height <= 0 || base.Width <= 0 || BackgroundImage != null)
		{
			return;
		}
		if (!ThemesEnabled || !XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !XPThemes.IsAppThemed || IgnoreThemeBackground)
		{
			if (BackgroundColor != BrushInfo.Empty)
			{
				BrushPaint.FillRectangle(e.Graphics, base.ClientRectangle, BackgroundColor);
			}
		}
		else if (base.Enabled)
		{
			if (m_tcd != null)
			{
				m_tcd.DrawThemeBackground(e.Graphics, 1, 1, new Rectangle(-2, -2, base.Width + 4, base.Height + 4));
			}
		}
		else
		{
			Brush brush = new SolidBrush((BackColor == SystemColors.Window) ? SystemColors.Control : BackColor);
			e.Graphics.FillRectangle(brush, base.ClientRectangle);
			brush.Dispose();
		}
	}

	private void InvalidateWindow()
	{
		Invalidate();
	}

	protected virtual void OnThemeChanged(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			this.ThemeChanged(this, e);
		}
	}

	protected internal void SetBorderStyle(BorderStyle style)
	{
		base.BorderStyle = style;
	}

	private static string GenerateUniqueName()
	{
		int num = ++m_panelUniqueIndex;
		return "Panel" + num;
	}

	protected override void OnClick(EventArgs e)
	{
		if (base.Parent is SplitContainerAdv splitContainerAdv)
		{
			splitContainerAdv.OnPanelClick(this);
		}
		base.OnClick(e);
	}

	protected override void OnDoubleClick(EventArgs e)
	{
		if (base.Parent is SplitContainerAdv splitContainerAdv)
		{
			splitContainerAdv.OnPanelDoubleClick(this);
		}
		base.OnDoubleClick(e);
	}
}
