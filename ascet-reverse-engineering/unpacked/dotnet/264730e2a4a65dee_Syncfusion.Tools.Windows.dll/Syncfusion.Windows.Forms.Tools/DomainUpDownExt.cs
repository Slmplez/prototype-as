using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.VisualStyles;
using Syncfusion.Core.Licensing;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Extends DomainUpDown control to provide Themed Look and Feel.")]
[ToolboxBitmap(typeof(DomainUpDownExt), "ToolboxIcons.DomainUpDownExt.bmp")]
[Designer(typeof(DomainUpDownExtDesigner), typeof(IDesigner))]
public class DomainUpDownExt : DomainUpDown, IThemedControl, INonClientPaintingSupport, IUpDownButtonsOrientable, ISupportOffice2007Theme
{
	private static readonly Color c_defualtBorderColor = Color.Black;

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

	private Orientation m_spinOrientation = Orientation.Vertical;

	private Rectangle m_rTopButton;

	private Rectangle m_rBottomButton;

	private bool m_bNativeButtonPress;

	private Timer m_timer;

	private VisualStyle m_visualStyle;

	private Office2007Theme m_colorScheme;

	private IUpDownRenderer m_renderer;

	private IntPtr cachedRgn = IntPtr.Zero;

	private bool positioningControls;

	private ButtonID hitButton;

	private ButtonID capturedButton;

	[Category("Appearance")]
	[Description("Indicates the border sides of the control to be drawn in 3D mode.")]
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

	[DefaultValue(typeof(Color), "Black")]
	[Description("Indicates the color of the 2D border.")]
	[Category("Appearance")]
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

	[DefaultValue(Border3DStyle.Sunken)]
	[Category("Appearance")]
	[Description("Indicates the style of the 3D border.")]
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

	[DefaultValue(32767)]
	[Description("Gets or Sets the maximum length of the text that can be entered into the editable portion of the control.")]
	[Category("Behavior")]
	public int MaxLength
	{
		get
		{
			return upDownEdit.MaxLength;
		}
		set
		{
			if (upDownEdit.MaxLength != value)
			{
				upDownEdit.MaxLength = value;
			}
		}
	}

	[DefaultValue(typeof(Orientation), "Vertical")]
	[Category("Behavior")]
	[Description("Gets or sets UpDownButton's orientation.")]
	public Orientation SpinOrientation
	{
		get
		{
			return m_spinOrientation;
		}
		set
		{
			if (m_spinOrientation != value)
			{
				m_spinOrientation = value;
				OnSpinOrientationChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(VisualStyle.Default)]
	[TypeConverter(typeof(UpDownVisualStyleEnumFilter))]
	[Description("Specifies visual style that is used for drawing a control.")]
	[Category("Appearance")]
	public VisualStyle VisualStyle
	{
		get
		{
			return m_visualStyle;
		}
		set
		{
			if (m_visualStyle != value)
			{
				m_visualStyle = value;
				OnVisualStyleChanged();
			}
		}
	}

	[Description("Gets or sets color scheme for control.")]
	[DefaultValue(typeof(Office2007Theme), "Blue")]
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

	[Description("Specifies whether XP Themes (visual styles) should be used for this control when available.")]
	[DefaultValue(false)]
	[Category("Appearance")]
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
				OnThemeChanged();
			}
		}
	}

	[DefaultValue(true)]
	[Description("Specifies whether or not you want themed border around the control when themes are enabled.")]
	[Category("Appearance")]
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

	[Category("Property Changed")]
	[Description("Occurs when border's 3D style is changed.")]
	public event EventHandler Border3DStyleChanged;

	[Category("Property Changed")]
	[Description("Occurs when border's color is changed.")]
	public event EventHandler BorderColorChanged;

	[Description("Occurs when border's sides are changed.")]
	[Category("Property Changed")]
	public event EventHandler BorderSidesChanged;

	[Category("Property Changed")]
	[Description("Occurs when the SpinOrientation property has changed.")]
	public event EventHandler SpinOrientationChanged;

	public DomainUpDownExt()
	{
		SetStyle(ControlStyles.DoubleBuffer, value: true);
		SetStyle(ControlStyles.AllPaintingInWmPaint, value: true);
		SetStyle(ControlStyles.UserPaint, value: true);
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(DomainUpDownExt));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		Control buttons = GetButtons();
		buttons.Paint += Buttons_Paint;
		buttons.Resize += Buttons_Resize;
		Buttons_Resize(null, EventArgs.Empty);
		cd = new ControlDrawing();
		if (XPThemes.IsThemedOS)
		{
			themedSpinButtonDrawing = new ThemedSpinButtonDrawing(this);
			themedEditDrawing = new ThemedEditDrawing(this);
		}
		base.Height++;
		Office2007Colors.ManagedColorsApplied += Office2007ManagedColorsApplied;
	}

	protected override void Dispose(bool disposing)
	{
		StopTimer();
		Control buttons = GetButtons();
		buttons.Paint -= Buttons_Paint;
		buttons.Resize -= Buttons_Resize;
		Office2007Colors.ManagedColorsApplied -= Office2007ManagedColorsApplied;
		if (themedSpinButtonDrawing != null)
		{
			themedSpinButtonDrawing.Dispose();
			themedSpinButtonDrawing = null;
		}
		if (themedEditDrawing != null)
		{
			themedEditDrawing.Dispose();
			themedEditDrawing = null;
		}
		upDownEdit = null;
		upDownButtons = null;
		m_renderer = null;
		cd = null;
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

	protected override void OnTextBoxResize(object source, EventArgs e)
	{
		UpdateHeight();
	}

	protected override void OnLayout(LayoutEventArgs e)
	{
		base.OnLayout(e);
		PositionControls();
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
	}

	protected override void OnFontChanged(EventArgs e)
	{
		base.OnFontChanged(e);
		UpdateHeight();
	}

	protected virtual void UpdateHeight()
	{
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled)
		{
			base.Height = base.PreferredHeight;
			PositionControls();
		}
	}

	public override void UpButton()
	{
		if (m_spinOrientation == Orientation.Vertical || m_bNativeButtonPress)
		{
			base.UpButton();
			m_bNativeButtonPress = false;
		}
	}

	public override void DownButton()
	{
		if (m_spinOrientation == Orientation.Vertical || m_bNativeButtonPress)
		{
			base.DownButton();
			m_bNativeButtonPress = false;
		}
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		m_bNativeButtonPress = true;
		base.OnMouseWheel(e);
	}

	protected override void OnTextBoxKeyDown(object source, KeyEventArgs e)
	{
		m_bNativeButtonPress = true;
		base.OnTextBoxKeyDown(source, e);
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
			Size clientSize = base.ClientSize;
			LeftRightAlignment leftRightAlignment = RtlTranslateLeftRight(UpDownAlign);
			TextBox textBox = GetTextBox();
			Control buttons = GetButtons();
			Size size = new Size(16, base.ClientRectangle.Height - 2);
			if (buttons != null)
			{
				size = upDownButtons.Size;
			}
			if (VSBorderStyle == BorderStyle.None)
			{
				base.Height -= 4;
			}
			else
			{
				base.Height += 4;
			}
			if (!XPThemes.IsThemedOS || !XPThemes.IsThemeActive || !ThemesEnabled)
			{
				return;
			}
			if (textBox != null)
			{
				SizeF sizeF;
				using (Graphics graphics = textBox.CreateGraphics())
				{
					sizeF = graphics.MeasureString("Wg", textBox.Font);
				}
				int num = (int)Math.Round(((float)clientSize.Height - sizeF.Height) / 2f);
				int num2 = ((num < 0) ? 1 : num);
				textBox.Size = new Size(clientSize.Width - size.Width - 2, clientSize.Height - num2 - 2);
				if (leftRightAlignment == LeftRightAlignment.Left)
				{
					textBox.Location = new Point(size.Width + 1, num2);
				}
				else
				{
					textBox.Location = new Point(1, num2);
				}
			}
			if (buttons != null)
			{
				if (leftRightAlignment == LeftRightAlignment.Left)
				{
					buttons.Location = new Point(1, 1);
				}
				else
				{
					buttons.Location = new Point(clientSize.Width - size.Width - 1, 1);
				}
				buttons.Size = new Size(size.Width, clientSize.Height - 2);
				buttons.Invalidate();
			}
		}
		finally
		{
			positioningControls = false;
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled && ThemedBorder)
		{
			themedEditDrawing.DrawEditBoxBackground(graphics, base.ClientRectangle, base.Enabled);
			return;
		}
		Rectangle clientRectangle = base.ClientRectangle;
		using Brush brush = new SolidBrush(BackColor);
		graphics.FillRectangle(brush, clientRectangle);
	}

	private void Buttons_Resize(object sender, EventArgs e)
	{
		Control buttons = GetButtons();
		Size clientSize = buttons.ClientSize;
		if (m_spinOrientation == Orientation.Vertical)
		{
			int num = clientSize.Height / 2;
			m_rTopButton = new Rectangle(0, 0, clientSize.Width, num);
			m_rBottomButton = new Rectangle(0, num, clientSize.Width, num);
		}
		else
		{
			int num = clientSize.Width / 2;
			m_rTopButton = new Rectangle(num, 0, num, clientSize.Height);
			m_rBottomButton = new Rectangle(0, 0, num, clientSize.Height);
		}
	}

	private void Buttons_Paint(object sender, PaintEventArgs e)
	{
		bool flag = XPThemes.IsThemedOS && XPThemes.IsThemeActive && ThemesEnabled;
		if (m_visualStyle != VisualStyle.Default && m_renderer != null && !flag)
		{
			ButtonState buttonStateForDrawing = GetButtonStateForDrawing(ButtonID.Up);
			ButtonState buttonStateForDrawing2 = GetButtonStateForDrawing(ButtonID.Down);
			m_renderer.Render(e.Graphics, buttonStateForDrawing, buttonStateForDrawing2);
		}
		else if (flag)
		{
			ScrollButtonAppearance appearance = ((m_spinOrientation != Orientation.Vertical) ? ScrollButtonAppearance.Horizontal : ScrollButtonAppearance.Vertical);
			themedSpinButtonDrawing.DrawScrollButton(e.Graphics, m_rTopButton, ButtonID.Up, appearance, GetButtonStateForDrawing(ButtonID.Up));
			themedSpinButtonDrawing.DrawScrollButton(e.Graphics, m_rBottomButton, ButtonID.Down, appearance, GetButtonStateForDrawing(ButtonID.Down));
		}
		else if (m_spinOrientation == Orientation.Horizontal)
		{
			DrawHorizontalUpDownButtons(e.Graphics);
		}
		else
		{
			DrawVerticalUpDownButtons(e.Graphics);
		}
	}

	private void DrawVerticalUpDownButtons(Graphics g)
	{
		_ = upDownButtons.ClientSize.Width / 2;
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
			visualStyleRenderer.DrawBackground(g, m_rTopButton);
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
			visualStyleRenderer2.DrawBackground(g, m_rBottomButton);
		}
		else
		{
			DrawClassicScrollButtons(g, buttonStateForDrawing, buttonStateForDrawing2);
		}
	}

	private void DrawHorizontalUpDownButtons(Graphics g)
	{
		_ = upDownButtons.ClientSize.Width / 2;
		ButtonState buttonStateForDrawing = GetButtonStateForDrawing(ButtonID.Up);
		ButtonState buttonStateForDrawing2 = GetButtonStateForDrawing(ButtonID.Down);
		if (Application.RenderWithVisualStyles)
		{
			VisualStyleElement normal = VisualStyleElement.Spin.UpHorizontal.Normal;
			VisualStyleRenderer visualStyleRenderer = new VisualStyleRenderer(normal);
			normal = VisualStyleElement.Spin.DownHorizontal.Normal;
			VisualStyleRenderer visualStyleRenderer2 = new VisualStyleRenderer(normal);
			if (!base.Enabled)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.UpHorizontal.Disabled);
			}
			else if (ButtonState.Pushed == buttonStateForDrawing)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.UpHorizontal.Pressed);
			}
			else if (buttonStateForDrawing == ButtonState.Normal)
			{
				visualStyleRenderer.SetParameters(VisualStyleElement.Spin.UpHorizontal.Hot);
			}
			visualStyleRenderer.DrawBackground(g, m_rTopButton);
			if (!base.Enabled)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.DownHorizontal.Disabled);
			}
			else if (ButtonState.Pushed == buttonStateForDrawing2)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.DownHorizontal.Pressed);
			}
			else if (buttonStateForDrawing2 == ButtonState.Normal)
			{
				visualStyleRenderer2.SetParameters(VisualStyleElement.Spin.DownHorizontal.Hot);
			}
			visualStyleRenderer2.DrawBackground(g, m_rBottomButton);
		}
		else
		{
			DrawClassicScrollButtons(g, buttonStateForDrawing, buttonStateForDrawing2);
		}
	}

	private void DrawClassicScrollButtons(Graphics g, ButtonState upButtonState, ButtonState downButtonState)
	{
		if (SpinOrientation == Orientation.Horizontal)
		{
			ControlPaint.DrawButton(g, m_rTopButton, (ButtonState.Flat != upButtonState) ? upButtonState : ButtonState.Normal);
			DrawArrow(g, m_rTopButton, isRight: true);
			ControlPaint.DrawButton(g, m_rBottomButton, (ButtonState.Flat != downButtonState) ? downButtonState : ButtonState.Normal);
			DrawArrow(g, m_rBottomButton, isRight: false);
		}
		else
		{
			ControlPaint.DrawScrollButton(g, m_rTopButton, System.Windows.Forms.ScrollButton.Up, (ButtonState.Flat != upButtonState) ? upButtonState : ButtonState.Normal);
			ControlPaint.DrawScrollButton(g, m_rBottomButton, System.Windows.Forms.ScrollButton.Down, (ButtonState.Flat != downButtonState) ? downButtonState : ButtonState.Normal);
		}
	}

	private void DrawArrow(Graphics g, Rectangle rectangle, bool isRight)
	{
		int num = 1;
		if (!isRight)
		{
			num = -1;
		}
		Point point = new Point(rectangle.Width / 2 + num + rectangle.X, (rectangle.Height - 1) / 2 + rectangle.Y);
		Point point2 = new Point(point.X - num * 2, point.Y - 2);
		Point point3 = new Point(point.X - num * 2, point.Y + 2);
		g.FillPolygon(new SolidBrush(Color.Black), new Point[3] { point, point2, point3 });
	}

	private ButtonState GetButtonStateForDrawing(ButtonID button)
	{
		ButtonState result = ButtonState.Flat;
		if (!base.Enabled)
		{
			result = ButtonState.Inactive;
		}
		else if (CapturedButton == button)
		{
			result = ButtonState.Pushed;
		}
		else if (hitButton == button)
		{
			result = ButtonState.Normal;
		}
		return result;
	}

	private void OnVisualStyleChanged()
	{
		if (!ThemesEnabled)
		{
			if (m_visualStyle == VisualStyle.Office2007)
			{
				m_renderer = new UpDownOffice2007Renderer(this, m_colorScheme);
				m_borderColor = (m_renderer as UpDownOffice2007Renderer).BorderColor;
			}
			else
			{
				m_renderer = null;
				ResetBackColor();
				BorderColor = c_defualtBorderColor;
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
				BorderColor = c_defualtBorderColor;
			}
			else
			{
				OnVisualStyleChanged();
			}
		}
		if (BorderStyle == BorderStyle.None)
		{
			BorderStyle = BorderStyle.Fixed3D;
		}
		RaiseThemeChangedEvent(EventArgs.Empty);
		if (base.IsHandleCreated)
		{
			RecreateHandle();
			UpdateHeight();
			Invalidate(invalidateChildren: true);
		}
		upDownEdit.Width++;
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

	protected virtual void OnSpinOrientationChanged(EventArgs e)
	{
		Control buttons = GetButtons();
		Buttons_Resize(buttons, EventArgs.Empty);
		buttons.Invalidate();
		StopTimer();
		if (this.SpinOrientationChanged != null)
		{
			this.SpinOrientationChanged(this, e);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		Point mousePosition = Control.MousePosition;
		Point pt = GetButtons().PointToClient(mousePosition);
		if (GetButtons().ClientRectangle.Contains(pt))
		{
			CapturedButton = HitButton;
			if (m_spinOrientation == Orientation.Horizontal)
			{
				ProcessMouseDown();
				StartTimer();
			}
		}
		base.OnMouseDown(e);
	}

	private void ProcessMouseDown()
	{
		m_bNativeButtonPress = true;
		if ((capturedButton == ButtonID.Down) ^ (RightToLeft == RightToLeft.Yes))
		{
			UpButton();
		}
		else
		{
			DownButton();
		}
	}

	protected override void OnMouseUp(MouseEventArgs mevent)
	{
		if (m_spinOrientation == Orientation.Horizontal)
		{
			StopTimer();
		}
		base.OnMouseUp(mevent);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		Point mousePosition = Control.MousePosition;
		Point point = GetButtons().PointToClient(mousePosition);
		if (Control.MouseButtons == MouseButtons.None)
		{
			CapturedButton = ButtonID.None;
		}
		if (GetButtons().ClientRectangle.Contains(point))
		{
			HitButton = GetMouseHoverButton(point);
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

	protected virtual ButtonID GetMouseHoverButton(Point ptButtonsClient)
	{
		ButtonID result = ButtonID.None;
		if (m_rTopButton.Contains(ptButtonsClient))
		{
			result = ButtonID.Up;
		}
		else if (m_rBottomButton.Contains(ptButtonsClient))
		{
			result = ButtonID.Down;
		}
		return result;
	}

	private void TimerTick(object sender, EventArgs e)
	{
		if (!GetButtons().Capture)
		{
			capturedButton = ButtonID.None;
			hitButton = ButtonID.None;
			StopTimer();
			return;
		}
		ProcessMouseDown();
		int interval = m_timer.Interval;
		interval *= 7;
		interval /= 10;
		if (interval < 1)
		{
			interval = 1;
		}
		m_timer.Interval = interval;
	}

	private void StartTimer()
	{
		if (m_timer == null)
		{
			m_timer = new Timer();
			m_timer.Tick += TimerTick;
		}
		m_timer.Interval = 500;
		m_timer.Start();
	}

	private void StopTimer()
	{
		if (m_timer != null)
		{
			m_timer.Tick -= TimerTick;
			m_timer.Stop();
			m_timer.Dispose();
			m_timer = null;
		}
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		VisualStyle = VisualStyle.Office2007;
	}

	public void Office2007ManagedColorsApplied(Office2007Colors.ManagedColorsAppliedEventArgs args)
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
}
