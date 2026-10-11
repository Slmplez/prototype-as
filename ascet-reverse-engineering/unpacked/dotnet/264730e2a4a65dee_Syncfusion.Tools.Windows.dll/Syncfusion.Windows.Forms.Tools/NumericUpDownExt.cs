using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(NumericUpDownExtDesigner), typeof(IDesigner))]
[Description("")]
[ToolboxBitmap(typeof(NumericUpDownExt), "ToolboxIcons.NumericUpDownExt.bmp")]
public class NumericUpDownExt : NumericUpDown, IThemedControl, INonClientPaintingSupport, ISupportOffice2007Theme
{
	private static readonly Color c_defaultBorderColor = Color.Black;

	private ThemedSpinButtonDrawing themedSpinButtonDrawing;

	private ThemedEditDrawing themedEditDrawing;

	private TextBox upDownEdit;

	private Control upDownButtons;

	private bool themesEnabled;

	private bool _themedBorder = true;

	private Border3DSide borderSides = Border3DSide.All;

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private Color m_borderColor = Color.Black;

	private ControlDrawing cd;

	private VisualStyle m_vStyle;

	private Office2007Theme m_colorScheme;

	private IUpDownRenderer m_renderer;

	private IntPtr cachedRgn = IntPtr.Zero;

	private bool positioningControls;

	private ButtonID hitButton;

	private ButtonID capturedButton;

	[Description("Indicates the border sides of the control to be drawn in 3D mode.")]
	[Category("Appearance")]
	[DefaultValue(Border3DSide.All)]
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
				OnBorderSidesChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the color of the 2D border.")]
	public Color BorderColor
	{
		get
		{
			return m_borderColor;
		}
		set
		{
			if (m_borderColor != value && VisualStyle != VisualStyle.Office2007)
			{
				m_borderColor = value;
				OnBorderColorChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	public override Color BackColor
	{
		get
		{
			return base.BackColor;
		}
		set
		{
			if (base.BackColor != value)
			{
				base.BackColor = value;
				Refresh();
			}
		}
	}

	[Description("Indicates the style of the 3D border.")]
	[Category("Appearance")]
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
				OnBorder3DStyleChanged(EventArgs.Empty);
				InvalidateWindow();
			}
		}
	}

	[Description("Gets or Sets the maximum length of the text that can be entered into the editable portion of the control.")]
	[DefaultValue(32767)]
	[Category("Behavior")]
	public int MaxLength
	{
		get
		{
			if (upDownEdit == null)
			{
				return 32767;
			}
			return upDownEdit.MaxLength;
		}
		set
		{
			if (upDownEdit == null)
			{
				upDownEdit = GetTextBox();
			}
			if (upDownEdit.MaxLength != value)
			{
				upDownEdit.MaxLength = value;
			}
		}
	}

	public new bool ReadOnly
	{
		get
		{
			return base.ReadOnly;
		}
		set
		{
			if (value != base.ReadOnly)
			{
				base.ReadOnly = value;
				OnReadOnlyChanged();
			}
		}
	}

	[Browsable(false)]
	[Description("Gets the value in hexadecimal numeration.")]
	public string HexValue
	{
		get
		{
			string empty = string.Empty;
			if (base.Hexadecimal)
			{
				return upDownEdit.Text;
			}
			return ((long)base.Value).ToString("X");
		}
	}

	[DefaultValue(typeof(Office2007Theme), "Blue")]
	[Description("Gets or sets Office2007Theme for Office2007 style.")]
	[Category("Appearance")]
	public Office2007Theme ColorScheme
	{
		get
		{
			return m_colorScheme;
		}
		set
		{
			if (m_colorScheme != value)
			{
				m_colorScheme = value;
				OnColorSchemeChanged();
			}
		}
	}

	protected override CreateParams CreateParams
	{
		get
		{
			CreateParams createParams = base.CreateParams;
			createParams.ExStyle &= -513;
			createParams.Style &= -8388609;
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled)
			{
				if (VSBorderStyle == BorderStyle.FixedSingle)
				{
					createParams.Style |= 8388608;
				}
				if (VSBorderStyle == BorderStyle.Fixed3D)
				{
					createParams.ExStyle |= 512;
				}
			}
			createParams.Style = createParams.Style | 0x2000 | 2 | (int)WhidbeyCompatibleControlStyles.DoubleBuffer;
			return createParams;
		}
	}

	public new LeftRightAlignment UpDownAlign
	{
		get
		{
			return base.UpDownAlign;
		}
		set
		{
			base.UpDownAlign = value;
			PositionControls();
		}
	}

	public new BorderStyle BorderStyle
	{
		get
		{
			return base.BorderStyle;
		}
		set
		{
			if (base.BorderStyle == value)
			{
				return;
			}
			if (value == BorderStyle.None && ThemesEnabled)
			{
				if (base.DesignMode)
				{
					MessageBox.Show("Cannot set BorderStyle to None when ThemesEnabled. Use ThemedBorder property to disable borders when themed.");
				}
			}
			else
			{
				base.BorderStyle = value;
			}
			if (base.IsHandleCreated)
			{
				PositionControls();
			}
		}
	}

	private BorderStyle VSBorderStyle
	{
		get
		{
			if (VisualStyle != VisualStyle.Office2007 || ThemesEnabled)
			{
				return BorderStyle;
			}
			return BorderStyle.FixedSingle;
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
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
				if (BorderStyle == BorderStyle.None)
				{
					BorderStyle = BorderStyle.Fixed3D;
				}
				OnThemeChanged();
				SetupThemesSupport(bFromInit: false);
			}
		}
	}

	[Category("Appearance")]
	[Description("Specifies whether or not you want themed border around the control when themes are enabled.")]
	[DefaultValue(true)]
	public bool ThemedBorder
	{
		get
		{
			return _themedBorder;
		}
		set
		{
			if (_themedBorder != value)
			{
				_themedBorder = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(VisualStyle.Default)]
	[Description("Specifies visual style that is used for drawing a control.")]
	[TypeConverter(typeof(UpDownVisualStyleEnumFilter))]
	[Category("Appearance")]
	public VisualStyle VisualStyle
	{
		get
		{
			return m_vStyle;
		}
		set
		{
			if (m_vStyle != value)
			{
				m_vStyle = value;
				OnStyleChanged();
			}
		}
	}

	private ButtonID HitButton
	{
		get
		{
			return hitButton;
		}
		set
		{
			if (hitButton != value && (value == ButtonID.None || capturedButton == ButtonID.None))
			{
				hitButton = value;
			}
		}
	}

	private ButtonID CapturedButton
	{
		get
		{
			return capturedButton;
		}
		set
		{
			if (capturedButton != value)
			{
				capturedButton = value;
			}
		}
	}

	Office2007Theme ISupportOffice2007Theme.Office2007ColorTheme
	{
		get
		{
			return ColorScheme;
		}
		set
		{
			ColorScheme = value;
		}
	}

	[Description("Fired when the ThemesEnabled property is changed.")]
	public event EventHandler ThemeChanged;

	[Description("Occurs when Border3DStyle property is changed.")]
	[Category("Property Changed")]
	public event EventHandler Border3DStyleChanged;

	[Description("Occurs when BorderColor property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderColorChanged;

	[Description("Occurs when BorderSides property is changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Description("Occurs when a ReadOnly is changed.")]
	[Category("Property Changed")]
	public event EventHandler ReadOnlyChanged;

	public NumericUpDownExt()
	{
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		SetStyle(ControlStyles.DoubleBuffer, value: true);
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(NumericUpDownExt));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		Office2007Colors.ManagedColorsApplied += Office2007ManagedColorsApplied;
	}

	private void Init()
	{
		Control buttons = GetButtons();
		buttons.Paint += Buttons_Paint;
		TextBox textBox = GetTextBox();
		textBox.MouseEnter += TextBox_MouseEnter;
		if (cd == null)
		{
			cd = new ControlDrawing();
		}
		if (XPThemes.IsThemedOS && themedSpinButtonDrawing == null && themedEditDrawing == null)
		{
			themedSpinButtonDrawing = new ThemedSpinButtonDrawing();
			themedEditDrawing = new ThemedEditDrawing();
			SetupThemesSupport(bFromInit: true);
		}
	}

	private void TextBox_MouseEnter(object sender, EventArgs e)
	{
		if (hitButton != ButtonID.None)
		{
			hitButton = ButtonID.None;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (themedEditDrawing != null)
			{
				themedEditDrawing.Dispose();
				themedEditDrawing = null;
			}
			if (themedSpinButtonDrawing != null)
			{
				themedSpinButtonDrawing.Dispose();
				themedSpinButtonDrawing = null;
			}
			Office2007Colors.ManagedColorsApplied -= Office2007ManagedColorsApplied;
		}
		base.Dispose(disposing);
	}

	private TextBox GetTextBox()
	{
		if (upDownEdit != null)
		{
			return upDownEdit;
		}
		foreach (Control control in base.Controls)
		{
			if (control is TextBox)
			{
				upDownEdit = control as TextBox;
				break;
			}
		}
		return upDownEdit;
	}

	private Control GetButtons()
	{
		if (upDownButtons != null)
		{
			return upDownButtons;
		}
		foreach (Control control in base.Controls)
		{
			if (!(control is TextBox))
			{
				upDownButtons = control;
			}
		}
		return upDownButtons;
	}

	protected override void OnBackColorChanged(EventArgs e)
	{
		base.OnBackColorChanged(e);
		InvalidateWindow();
	}

	private void InvalidateWindow()
	{
		int redrawFlags = 1281;
		NativeMethodsHelper.RedrawWindow(base.Handle, redrawFlags);
	}

	IntPtr INonClientPaintingSupport.NonClientPaint(PaintEventArgs e, Rectangle displayRect, Rectangle windowRectInScreen)
	{
		Graphics graphics = e.Graphics;
		Rectangle rc = displayRect;
		int num = 2;
		if (VSBorderStyle == BorderStyle.FixedSingle)
		{
			num = 1;
		}
		Rectangle[] array = new Rectangle[4]
		{
			new Rectangle(rc.Location, new Size(num, rc.Height)),
			new Rectangle(rc.Location, new Size(rc.Width, num)),
			new Rectangle(rc.Width - num, rc.Y, num, rc.Height),
			new Rectangle(rc.X, rc.Height - num, rc.Width, num)
		};
		for (int i = 0; i < 4; i++)
		{
			graphics.FillRectangle(new SolidBrush(BackColor), array[i]);
		}
		if (BorderSides != Border3DSide.All)
		{
			if (BorderSides != Border3DSide.Middle)
			{
				cd.DrawBorder(graphics, rc, VSBorderStyle, border3DStyle, ButtonBorderStyle.Solid, m_borderColor, borderSides);
			}
		}
		else
		{
			cd.DrawBorder(graphics, rc, VSBorderStyle, border3DStyle, ButtonBorderStyle.Solid, m_borderColor);
		}
		return Syncfusion.Runtime.InteropServices.NativeMethods.CreateRectRgn(windowRectInScreen.Left + num, windowRectInScreen.Top + num, windowRectInScreen.Right - num, windowRectInScreen.Bottom - num);
	}

	protected override void OnValidated(EventArgs e)
	{
		base.OnValidated(e);
		_ = base.Value;
	}

	protected override void OnEnabledChanged(EventArgs e)
	{
		base.OnEnabledChanged(e);
		if (upDownEdit != null)
		{
			upDownEdit.BackColor = BackColor;
		}
	}

	protected override void OnTextBoxResize(object source, EventArgs e)
	{
		UpdateHeight();
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		if (base.IsHandleCreated)
		{
			PositionControls();
		}
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		Init();
		PositionControls();
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		base.OnHandleDestroyed(e);
		Uninit();
	}

	private void Uninit()
	{
		Control buttons = GetButtons();
		TextBox textBox = GetTextBox();
		if (buttons != null)
		{
			buttons.Paint -= Buttons_Paint;
		}
		if (textBox != null)
		{
			textBox.MouseEnter -= TextBox_MouseEnter;
		}
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		UpdateHeight();
	}

	protected virtual void UpdateHeight()
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && base.Visible)
		{
			base.Height = base.PreferredHeight;
			PositionControls();
		}
	}

	protected virtual void PositionControls()
	{
		if (positioningControls)
		{
			return;
		}
		try
		{
			positioningControls = true;
			base.Height = base.PreferredHeight;
			Size clientSize = base.ClientSize;
			LeftRightAlignment leftRightAlignment = RtlTranslateLeftRight(UpDownAlign);
			TextBox textBox = GetTextBox();
			Control buttons = GetButtons();
			int num = 0;
			if (buttons != null)
			{
				num = buttons.Width;
				int num2 = ((leftRightAlignment == LeftRightAlignment.Left) ? 1 : (clientSize.Width - (num + 1)));
				buttons.SetBounds(num2, 1, num, clientSize.Height - 2);
				buttons.Invalidate();
			}
			if (textBox != null)
			{
				Size preferredSize = textBox.GetPreferredSize(Size.Empty);
				int num3 = ((leftRightAlignment != LeftRightAlignment.Left) ? 1 : (num + 1));
				int num4 = Math.Max(1, (clientSize.Height - preferredSize.Height) / 2);
				int num5 = clientSize.Width - num - 2;
				int num6 = clientSize.Height - 2 * num4;
				textBox.SetBounds(num3, num4, num5, num6);
			}
		}
		finally
		{
			positioningControls = false;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		bool flag = XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled;
		Graphics graphics = e.Graphics;
		Color color = BackColor;
		if (BackColor == SystemColors.HotTrack)
		{
			color = Color.FromArgb(49, 106, 197);
		}
		base.OnPaint(e);
		if (flag && !ThemedBorder)
		{
			using Brush brush = new SolidBrush(color);
			graphics.FillRectangle(brush, base.ClientRectangle);
		}
		if (flag && ThemedBorder)
		{
			themedEditDrawing.DrawEditBoxBackground(graphics, base.ClientRectangle, base.Enabled);
			Rectangle clientRectangle = base.ClientRectangle;
			clientRectangle.Inflate(-2, -2);
			using Brush brush2 = new SolidBrush(color);
			graphics.FillRectangle(brush2, clientRectangle);
		}
		if (!flag)
		{
			Rectangle clientRectangle2 = base.ClientRectangle;
			using Brush brush3 = new SolidBrush(color);
			graphics.FillRectangle(brush3, clientRectangle2);
		}
	}

	protected virtual void Buttons_Paint(object sender, PaintEventArgs e)
	{
		Graphics graphics = e.Graphics;
		Control control = sender as Control;
		Size clientSize = control.ClientSize;
		int num = clientSize.Height / 2;
		Rectangle rectangle = new Rectangle(0, 0, clientSize.Width, num);
		Rectangle rectangle2 = new Rectangle(0, num, clientSize.Width, num);
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			themedSpinButtonDrawing.DrawScrollButton(graphics, rectangle, ButtonID.Up, ScrollButtonAppearance.Vertical, GetButtonStateForDrawing(ButtonID.Up));
			themedSpinButtonDrawing.DrawScrollButton(graphics, rectangle2, ButtonID.Down, ScrollButtonAppearance.Vertical, GetButtonStateForDrawing(ButtonID.Down));
		}
		else if (VisualStyle != VisualStyle.Default && m_renderer != null)
		{
			ButtonState buttonStateForDrawing = GetButtonStateForDrawing(ButtonID.Up);
			ButtonState buttonStateForDrawing2 = GetButtonStateForDrawing(ButtonID.Down);
			m_renderer.Render(graphics, buttonStateForDrawing, buttonStateForDrawing2);
		}
		else
		{
			DrawUpDownButtons(e.Graphics, rectangle, rectangle2);
		}
	}

	private void DrawUpDownButtons(Graphics g, Rectangle topRect, Rectangle bottomRect)
	{
		ButtonState buttonStateForDrawing = GetButtonStateForDrawing(ButtonID.Up);
		ButtonState buttonStateForDrawing2 = GetButtonStateForDrawing(ButtonID.Down);
		if (Application.RenderWithVisualStyles)
		{
			VisualStyleElement normal = VisualStyleElement.Spin.Up.Normal;
			VisualStyleRenderer visualStyleRenderer = new VisualStyleRenderer(normal);
			normal = VisualStyleElement.Spin.Down.Normal;
			VisualStyleRenderer visualStyleRenderer2 = new VisualStyleRenderer(normal);
			if (!base.Enabled)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.Up.Disabled);
			}
			else if (ButtonState.Pushed == buttonStateForDrawing)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.Up.Pressed);
			}
			else if (buttonStateForDrawing == ButtonState.Normal)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.Up.Hot);
			}
			visualStyleRenderer.DrawBackground(g, topRect);
			if (!base.Enabled)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.Down.Disabled);
			}
			else if (ButtonState.Pushed == buttonStateForDrawing2)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.Down.Pressed);
			}
			else if (buttonStateForDrawing2 == ButtonState.Normal)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.Down.Hot);
			}
			visualStyleRenderer2.DrawBackground(g, bottomRect);
		}
		else
		{
			ControlPaint.DrawScrollButton(g, topRect, System.Windows.Forms.ScrollButton.Up, (ButtonState.Flat != buttonStateForDrawing) ? buttonStateForDrawing : ButtonState.Normal);
			ControlPaint.DrawScrollButton(g, bottomRect, System.Windows.Forms.ScrollButton.Down, (ButtonState.Flat != buttonStateForDrawing2) ? buttonStateForDrawing2 : ButtonState.Normal);
		}
	}

	private ButtonState GetButtonStateForDrawing(ButtonID button)
	{
		ButtonState result = ButtonState.Flat;
		if (!base.Enabled)
		{
			result = ButtonState.Inactive;
		}
		else if (capturedButton == button)
		{
			result = ButtonState.Pushed;
		}
		else if (hitButton == button)
		{
			result = ButtonState.Normal;
		}
		return result;
	}

	protected void DrawOffice2007Buttons(Graphics g)
	{
		Control control = upDownButtons;
		Size clientSize = control.ClientSize;
		int num = clientSize.Height / 2;
		Rectangle rectangle = new Rectangle(0, 0, clientSize.Width, num);
		Rectangle rectangle2 = new Rectangle(0, num, clientSize.Width, num);
		using (Brush brush = new SolidBrush(BackColor))
		{
			g.FillRectangle(brush, control.ClientRectangle);
		}
		Rectangle rect = rectangle;
		rect.Inflate(0, -1);
		rect.Width -= 2;
		Rectangle rect2 = rectangle2;
		rect2.Height -= 2;
		rect2.Width -= 2;
		ButtonState buttonStateForDrawing = GetButtonStateForDrawing(ButtonID.Up);
		ButtonState buttonStateForDrawing2 = GetButtonStateForDrawing(ButtonID.Down);
		DrawOffice2007Button(g, rect, ButtonID.Up, buttonStateForDrawing);
		DrawOffice2007Button(g, rect2, ButtonID.Down, buttonStateForDrawing2);
	}

	private void DrawOffice2007Button(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		DrawOffice2007ButtonBackground(g, rect, button, state);
		DrawOffice2007ButtonBorder(g, rect, button, state);
		DrawOffice2007ButtonArrow(g, rect, button, state);
	}

	protected virtual void DrawOffice2007ButtonBorder(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		using Pen pen = GetButtonBorderPen(state);
		g.DrawRectangle(pen, rect);
	}

	protected virtual void DrawOffice2007ButtonArrow(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		Point location = ((button == ButtonID.Down) ? new Point(rect.X + rect.Width / 2 - 3, rect.Y + rect.Height / 2 - 2) : new Point(rect.X + rect.Width / 2 - 3, rect.Bottom - rect.Height / 2 - 3));
		Size size = new Size(5, 3);
		Rectangle rect2 = new Rectangle(location, size);
		Point[] points = ((button != ButtonID.Up) ? new Point[3]
		{
			new Point(rect2.X + 6, rect2.Y + 1),
			new Point(rect2.X + 3, rect2.Y + 4),
			new Point(rect2.X + 1, rect2.Y + 1)
		} : new Point[3]
		{
			new Point(rect2.X + 3, rect2.Y + 1),
			new Point(rect2.X + 6, rect2.Y + 5),
			new Point(rect2.X, rect2.Y + 5)
		});
		GraphicsPath graphicsPath = new GraphicsPath();
		graphicsPath.AddLines(points);
		Brush brush = ((state == ButtonState.Inactive) ? ((Brush)new SolidBrush(SystemColors.ControlDark)) : ((Brush)((button != ButtonID.Up) ? new LinearGradientBrush(rect2, Office2007Colors.Default.NumericUpDownArrowLightColor, Office2007Colors.Default.NumericUpDownArrowDarkColor, LinearGradientMode.Vertical) : new LinearGradientBrush(rect2, Office2007Colors.Default.NumericUpDownArrowLightColor, Office2007Colors.Default.NumericUpDownArrowDarkColor, LinearGradientMode.Vertical))));
		using (brush)
		{
			g.FillPath(brush, graphicsPath);
			graphicsPath.Dispose();
		}
	}

	protected virtual void DrawOffice2007ButtonBackground(Graphics g, Rectangle rect, ButtonID button, ButtonState state)
	{
		Rectangle rect2 = rect;
		Brush brush = new SolidBrush(SystemColors.Window);
		switch (state)
		{
		case ButtonState.Pushed:
			brush = new SolidBrush(Color.FromArgb(198, 231, 247));
			break;
		case ButtonState.Flat:
			brush = new LinearGradientBrush(rect2, Color.White, Color.FromArgb(214, 239, 255), LinearGradientMode.Vertical);
			break;
		}
		using (brush)
		{
			g.FillRectangle(brush, rect2);
		}
		if (state == ButtonState.Pushed)
		{
			Pen pen = new Pen(Color.FromArgb(107, 142, 156));
			Point[] array = null;
			array = ((button != ButtonID.Down) ? new Point[3]
			{
				new Point(rect.Left + 1, rect.Top + 1),
				new Point(rect.Left + 1, rect.Bottom - 1),
				new Point(rect.Right - 1, rect.Bottom - 1)
			} : new Point[3]
			{
				new Point(rect.Left + 1, rect.Bottom - 1),
				new Point(rect.Left + 1, rect.Top + 1),
				new Point(rect.Right - 1, rect.Top + 1)
			});
			using (pen)
			{
				g.DrawLines(pen, array);
			}
		}
	}

	private Pen GetButtonBorderPen(ButtonState buttonState)
	{
		if (VisualStyle == VisualStyle.Office2007)
		{
			Color empty = Color.Empty;
			return new Pen(buttonState switch
			{
				ButtonState.Pushed => Office2007Colors.Default.NumericUpDownSelectedBorderColor, 
				ButtonState.Normal => Office2007Colors.Default.NumericUpDownHighLightedBorderColor, 
				_ => Office2007Colors.Default.NumericUpDownBorderColor, 
			});
		}
		return new Pen(Color.Black);
	}

	private void Office2007ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
	{
		if (VisualStyle == VisualStyle.Office2007)
		{
			Color comboBoxAdvNormalBorderColor = Office2007Colors.GetColorTable(ColorScheme).ComboBoxAdvNormalBorderColor;
			if (m_borderColor != comboBoxAdvNormalBorderColor)
			{
				m_borderColor = comboBoxAdvNormalBorderColor;
				Invalidate();
			}
		}
	}

	private void SetupThemesSupport(bool bFromInit)
	{
		if (base.IsHandleCreated)
		{
			UpdateHeight();
			if (!bFromInit)
			{
				RecreateHandle();
				Invalidate(invalidateChildren: true);
			}
		}
	}

	private void OnStyleChanged()
	{
		if (!ThemesEnabled)
		{
			if (VisualStyle == VisualStyle.Office2007)
			{
				m_renderer = new UpDownOffice2007Renderer(this, m_colorScheme);
				m_borderColor = (m_renderer as UpDownOffice2007Renderer).BorderColor;
			}
			else
			{
				m_renderer = null;
				ResetBackColor();
				BorderColor = c_defaultBorderColor;
			}
			if (base.IsHandleCreated)
			{
				RecreateHandle();
			}
		}
	}

	private void OnColorSchemeChanged()
	{
		if (!ThemesEnabled && VisualStyle == VisualStyle.Office2007)
		{
			(m_renderer as UpDownOffice2007Renderer).ColorSheme = m_colorScheme;
			m_borderColor = (m_renderer as UpDownOffice2007Renderer).BorderColor;
			if (base.IsHandleCreated)
			{
				RecreateHandle();
			}
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (cachedRgn != IntPtr.Zero)
		{
			Syncfusion.Runtime.InteropServices.NativeMethods.DeleteObject(cachedRgn);
			cachedRgn = IntPtr.Zero;
		}
		if (m.Msg == 794)
		{
			RecreateHandle();
			Invalidate();
		}
		if (m.Msg == 133 && (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled))
		{
			cachedRgn = DrawingUtils.NCPaintHelper(this, this, ref m);
		}
		base.WndProc(ref m);
	}

	private void OnThemeChanged()
	{
		if (VisualStyle != VisualStyle.Default)
		{
			if (themesEnabled)
			{
				ResetBackColor();
				BorderColor = c_defaultBorderColor;
			}
			else
			{
				OnStyleChanged();
			}
		}
		if (BorderStyle == BorderStyle.None)
		{
			BorderStyle = BorderStyle.Fixed3D;
		}
		RaiseThemeChangedEvent(EventArgs.Empty);
		SetupThemesSupport(bFromInit: false);
	}

	protected virtual void RaiseThemeChangedEvent(EventArgs e)
	{
		if (this.ThemeChanged != null)
		{
			try
			{
				this.ThemeChanged(this, e);
			}
			catch
			{
			}
		}
	}

	protected virtual void OnBorder3DStyleChanged(EventArgs e)
	{
		if (this.Border3DStyleChanged != null)
		{
			this.Border3DStyleChanged(this, e);
		}
	}

	protected virtual void OnBorderColorChanged(EventArgs e)
	{
		if (this.BorderColorChanged != null)
		{
			this.BorderColorChanged(this, e);
		}
	}

	protected virtual void OnBorderSidesChanged(EventArgs e)
	{
		if (this.BorderSidesChanged != null)
		{
			this.BorderSidesChanged(this, e);
		}
	}

	private void RaiseReadOnlyChanged()
	{
		if (this.ReadOnlyChanged != null)
		{
			this.ReadOnlyChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnReadOnlyChanged()
	{
		Control buttons = GetButtons();
		if (buttons != null)
		{
			buttons.Enabled = !ReadOnly;
		}
		base.InterceptArrowKeys = !ReadOnly;
		RaiseReadOnlyChanged();
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		Point mousePosition = Control.MousePosition;
		Point pt = GetButtons().PointToClient(mousePosition);
		if (GetButtons().ClientRectangle.Contains(pt))
		{
			CapturedButton = HitButton;
		}
		base.OnMouseDown(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		Point mousePosition = Control.MousePosition;
		Point pt = GetButtons().PointToClient(mousePosition);
		if (Control.MouseButtons == MouseButtons.None)
		{
			CapturedButton = ButtonID.None;
		}
		if (GetButtons().ClientRectangle.Contains(pt))
		{
			if (pt.Y < GetButtons().Height / 2)
			{
				HitButton = ButtonID.Up;
			}
			else
			{
				HitButton = ButtonID.Down;
			}
		}
		else
		{
			HitButton = ButtonID.None;
		}
		base.OnMouseMove(e);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		CapturedButton = ButtonID.None;
		HitButton = ButtonID.None;
		base.OnMouseLeave(e);
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		VisualStyle = VisualStyle.Office2007;
	}
}
