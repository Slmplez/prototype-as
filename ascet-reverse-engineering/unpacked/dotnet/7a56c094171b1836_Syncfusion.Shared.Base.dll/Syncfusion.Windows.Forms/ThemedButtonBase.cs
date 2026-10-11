using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Drawing;
using Syncfusion.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms;

public class ThemedButtonBase : ThemedControl
{
	private const int DEF_REDUCE_SIZE_IMAGE = 2;

	private const int DEF_SHIFT_LOCATION_IMAGE = 1;

	private ButtonState buttonState = ButtonState.Flat;

	private ButtonState defaultButtonState = ButtonState.Flat;

	private CheckState checkState;

	protected bool mouseOver;

	protected ControlDrawing cd = new ControlDrawing();

	private ContentAlignment textAlign = ContentAlignment.MiddleCenter;

	private bool drawText;

	private VisualStyle style;

	private Office2007Theme m_office2007Theme;

	protected Office2007Colors office2007ColorTable;

	private Color flatColor = SystemColors.ControlDark;

	private Image m_image;

	private bool m_stretchImage;

	private bool m_bIsMouseOver;

	public Image Image
	{
		get
		{
			return m_image;
		}
		set
		{
			if (value != m_image)
			{
				m_image = value;
				Invalidate();
			}
		}
	}

	private bool IsMouseOver
	{
		get
		{
			return m_bIsMouseOver;
		}
		set
		{
			if (value != m_bIsMouseOver)
			{
				m_bIsMouseOver = value;
				Invalidate();
			}
		}
	}

	public bool StretchImage
	{
		get
		{
			return m_stretchImage;
		}
		set
		{
			if (value != m_stretchImage)
			{
				m_stretchImage = value;
				OnStretchImageChanged();
			}
		}
	}

	public Color FlatColor
	{
		get
		{
			return flatColor;
		}
		set
		{
			if (flatColor != value)
			{
				flatColor = value;
				Invalidate();
			}
		}
	}

	[TypeConverter(typeof(DefaultVisualStyleEnumFilter))]
	public VisualStyle Style
	{
		get
		{
			return style;
		}
		set
		{
			if (style != value)
			{
				style = value;
				if (style == VisualStyle.Office2007)
				{
					office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
				}
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets / sets a value indicating the Office2007 theme used for drawing the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	public Office2007Theme Office2007Theme
	{
		get
		{
			return m_office2007Theme;
		}
		set
		{
			if (m_office2007Theme != value)
			{
				m_office2007Theme = value;
				if (Style == VisualStyle.Office2007)
				{
					office2007ColorTable = Office2007Colors.GetColorTable(m_office2007Theme);
					Invalidate();
				}
			}
		}
	}

	public bool DrawText
	{
		get
		{
			return drawText;
		}
		set
		{
			if (drawText != value)
			{
				drawText = value;
				Invalidate();
			}
		}
	}

	public ContentAlignment TextAlign
	{
		get
		{
			return textAlign;
		}
		set
		{
			if (textAlign != value)
			{
				textAlign = value;
				Invalidate();
			}
		}
	}

	public CheckState CheckState
	{
		get
		{
			return checkState;
		}
		set
		{
			if (checkState != value)
			{
				checkState = value;
				OnCheckStateChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	public ButtonState DefaultButtonState
	{
		get
		{
			return defaultButtonState;
		}
		set
		{
			defaultButtonState = value;
			buttonState = value;
		}
	}

	public event EventHandler CheckStateChanged;

	public event EventHandler ImageChanged;

	public event EventHandler StretchImageChanged;

	private void RaiseImageChanged()
	{
		if (this.ImageChanged != null)
		{
			this.ImageChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseStretchImageChanged()
	{
		if (this.StretchImageChanged != null)
		{
			this.StretchImageChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnImageChanged()
	{
		Invalidate();
		RaiseImageChanged();
	}

	protected virtual void OnStretchImageChanged()
	{
		Invalidate();
		RaiseStretchImageChanged();
	}

	protected void OnCheckStateChanged(EventArgs e)
	{
		if (this.CheckStateChanged == null)
		{
			return;
		}
		try
		{
			this.CheckStateChanged(this, e);
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
		}
	}

	public ThemedButtonBase()
	{
		InitializeComponent();
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer | ControlStyles.SupportsTransparentBackColor, value: true);
	}

	private void ThemedButtonBase_MouseEnter(object sender, EventArgs e)
	{
		buttonState = ButtonState.Normal;
		mouseOver = true;
		Invalidate(invalidateChildren: true);
	}

	private void ThemedButtonBase_MouseLeave(object sender, EventArgs e)
	{
		buttonState = defaultButtonState;
		mouseOver = false;
		Invalidate(invalidateChildren: true);
	}

	private void ThemedButtonBase_MouseDown(object sender, MouseEventArgs e)
	{
		if (base.TabStop)
		{
			Focus();
		}
		if (e.Button == MouseButtons.Left)
		{
			buttonState = ButtonState.Pushed;
			switch (checkState)
			{
			case CheckState.Checked:
				checkState = CheckState.Unchecked;
				break;
			case CheckState.Unchecked:
				checkState = CheckState.Checked;
				break;
			case CheckState.Indeterminate:
				checkState = CheckState.Unchecked;
				break;
			}
			OnCheckStateChanged(EventArgs.Empty);
			Invalidate(invalidateChildren: true);
		}
	}

	private void ThemedButtonBase_MouseUp(object sender, MouseEventArgs e)
	{
		if ((e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			buttonState = ButtonState.Normal;
			Invalidate(invalidateChildren: true);
		}
	}

	private void InitializeComponent()
	{
		base.EnabledChanged += new System.EventHandler(ThemedButtonBase_EnabledChanged);
		base.SizeChanged += new System.EventHandler(ThemedButtonBase_SizeChanged);
		base.MouseEnter += new System.EventHandler(ThemedButtonBase_MouseEnter);
		base.MouseUp += new System.Windows.Forms.MouseEventHandler(ThemedButtonBase_MouseUp);
		base.MouseLeave += new System.EventHandler(ThemedButtonBase_MouseLeave);
		base.MouseDown += new System.Windows.Forms.MouseEventHandler(ThemedButtonBase_MouseDown);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		Point pt = PointToClient(Control.MousePosition);
		IsMouseOver = base.ClientRectangle.Contains(pt);
		base.OnMouseMove(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			buttonState = ButtonState.Pushed;
			Invalidate(base.ClientRectangle);
			Refresh();
		}
		base.OnMouseDown(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (!base.Enabled)
		{
			buttonState = ButtonState.Inactive;
		}
		if (Image == null)
		{
			if (Style == VisualStyle.Default)
			{
				if (ThemesEnabled && XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive)
				{
					DrawThemedControl(e.Graphics, buttonState, checkState);
				}
				else
				{
					DrawNotThemedControl(e.Graphics, buttonState, checkState);
				}
			}
			else
			{
				DrawStyledControl(e.Graphics, buttonState, checkState);
			}
		}
		else
		{
			DrawImage(e.Graphics, buttonState, checkState);
		}
		DrawControlText(e.Graphics);
		base.OnPaint(e);
	}

	protected virtual void DrawImage(Graphics g, ButtonState buttonState, CheckState checkState)
	{
		Rectangle rectangle;
		if (StretchImage)
		{
			Size size = new Size(base.ClientSize.Width - 2, base.ClientSize.Height - 2);
			Point location = new Point(base.ClientRectangle.X + 1, base.ClientRectangle.Y + 1);
			rectangle = new Rectangle(location, size);
		}
		else
		{
			int num = (Image.Width - base.ClientSize.Width) / 2;
			int num2 = (Image.Height - base.ClientSize.Height) / 2;
			rectangle = new Rectangle(base.ClientRectangle.X - num, base.ClientRectangle.Y - num2, Image.Width, Image.Height);
		}
		if (buttonState == ButtonState.Inactive)
		{
			if (StretchImage)
			{
				Rectangle rectangle2 = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, Image.Width, Image.Height);
				DrawingUtils.DrawGrayedImage(g, Image, rectangle, rectangle2, 0.5f);
			}
			else
			{
				DrawingUtils.DrawGrayedImage(g, Image, rectangle.Left, rectangle.Top, 0.5f);
			}
		}
		else if (buttonState == ButtonState.Normal || (buttonState == ButtonState.Pushed && !IsMouseOver))
		{
			DrawingUtils.DrawShadow(g, Image, rectangle.Left + 1, rectangle.Top + 1);
			rectangle.Offset(-1, -1);
			g.DrawImage(Image, rectangle);
		}
		else
		{
			g.DrawImage(Image, rectangle);
		}
	}

	protected override void OnParentBackColorChanged(EventArgs e)
	{
		Invalidate();
		base.OnParentBackColorChanged(e);
	}

	protected virtual void DrawControlText(Graphics g)
	{
		if (drawText)
		{
			cd.DrawAlignedText(g, Text, Font, ForeColor, base.ClientRectangle, textAlign);
		}
	}

	protected virtual void DrawThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
	}

	protected virtual void DrawNotThemedControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
	}

	protected virtual void DrawStyledControl(Graphics g, ButtonState buttonState, CheckState checkState)
	{
	}

	private void ThemedButtonBase_SizeChanged(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void ThemedButtonBase_EnabledChanged(object sender, EventArgs e)
	{
		buttonState = (base.Enabled ? defaultButtonState : ButtonState.Inactive);
		Invalidate();
	}
}
