using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Core.Licensing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms;

[Designer(typeof(ButtonAdvDesigner), typeof(IDesigner))]
[ToolboxItem(true)]
[ToolboxBitmap(typeof(ButtonAdv), "ToolboxIcons.ButtonAdv.bmp")]
public class ButtonAdv : Button, ISupportOffice2007Theme, ISupportThemeChanged, IMessageFilter
{
	private delegate int DrawBorderEventHandler(Graphics g, Rectangle rectClient, Color clrBorder);

	private const int c_nDEFAULT_BORDER_WIDTH = 1;

	private const int PRF_CHECKVISIBLE = 1;

	private const int PRF_NONCLIENT = 2;

	private const int PRF_CLIENT = 4;

	private const int PRF_ERASEBKGND = 8;

	private const int PRF_CHILDREN = 16;

	private const int PRF_OWNED = 32;

	private const int PRF_ALL = 30;

	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool isLastLeftButton;

	[EditorBrowsable(EditorBrowsableState.Never)]
	public bool isFirstRightButton;

	private bool m_bIgnoreMouse;

	private ButtonAdvBorderStyle m_bsBorderStyle = ButtonAdvBorderStyle.Default;

	private static Hashtable s_hashDelegates;

	private static int s_nHashDelegates = 0;

	internal bool altPressed;

	private bool m_bKeepFocusRectangle = true;

	private ButtonAppearance m_appearance = ButtonAppearance.Classic;

	private ButtonAppearance m_cachedAppearance;

	private ButtonRenderer m_renderer;

	private ButtonAdvState m_state = ButtonAdvState.Default;

	private ButtonTypes m_buttonImageType;

	private Color m_comboEditBackColor = Color.Empty;

	private bool m_isComboButton;

	private bool m_bPushable;

	private bool m_pushed;

	private bool m_bIsDown;

	private int m_animateState;

	private Office2007Theme m_colorScheme;

	private Color m_foreColor = Color.Empty;

	private Color m_backColor = Color.Empty;

	private Color m_customColor = Color.Empty;

	private bool m_overrideManagedColor;

	private UseStyle m_useStyle;

	private XPThemesThemeChangedWeakContainer m_weakThemeChanged;

	private bool resetStateOnLostFocus = true;

	internal bool IsDesignMode => base.DesignMode;

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Specifies color scheme for the control.")]
	[DefaultValue(Office2007Theme.Blue)]
	[Browsable(true)]
	[Category("Appearance - Styles")]
	public Office2007Theme Office2007ColorScheme
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
				if (m_renderer != null && m_renderer is Office2007ButtonRenderer)
				{
					m_renderer.SetColorScheme(m_colorScheme);
				}
				Invalidate();
			}
		}
	}

	[Description("Specifies ButtonAdv border style. Has influence only on Office2003, OfficeXp and WindowsXP styles.")]
	[Browsable(true)]
	[DefaultValue(ButtonAdvBorderStyle.Default)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance - Styles")]
	public ButtonAdvBorderStyle BorderStyleAdv
	{
		get
		{
			return m_bsBorderStyle;
		}
		set
		{
			if (m_bsBorderStyle != value)
			{
				m_bsBorderStyle = value;
				Invalidate();
			}
		}
	}

	[Description("Indicates whether ButtonAdv will show focus rectangle receiving focus.")]
	[Category("Appearance - Styles")]
	[Browsable(true)]
	[DefaultValue(true)]
	public bool KeepFocusRectangle
	{
		get
		{
			return m_bKeepFocusRectangle;
		}
		set
		{
			m_bKeepFocusRectangle = value;
		}
	}

	[Category("Appearance - Styles")]
	[DefaultValue(ButtonAppearance.Classic)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the look and feel of the ButtonAdv. Set UseVisualStyle property to True if you want to apply style on button.")]
	[AmbientValue(ButtonAppearance.None)]
	[Browsable(true)]
	public ButtonAppearance Appearance
	{
		get
		{
			if (m_appearance != ButtonAppearance.None)
			{
				return m_appearance;
			}
			if (AmbientHelper.GetAmbientValue(base.Parent, "Appearance", typeof(ButtonAppearance), out var retValue))
			{
				return (ButtonAppearance)retValue;
			}
			return GetButtonAppearance();
		}
		set
		{
			if (m_appearance != value || m_renderer == null)
			{
				m_appearance = value;
				SetRenderer();
				if (m_renderer is Office2007ButtonRenderer)
				{
					m_renderer.SetColorScheme(m_colorScheme);
				}
				Refresh();
				OnButtonChanged(EventArgs.Empty);
			}
		}
	}

	[Category("Appearance")]
	[Browsable(true)]
	[Description("Gets or sets the foreground color of the control.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override Color ForeColor
	{
		get
		{
			if (m_foreColor != Color.Empty)
			{
				return m_foreColor;
			}
			return base.ForeColor;
		}
		set
		{
			if (value != m_foreColor)
			{
				m_foreColor = value;
				base.OnForeColorChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Gets or sets the background color of the control.")]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public override Color BackColor
	{
		get
		{
			if (m_backColor != Color.Empty)
			{
				return m_backColor;
			}
			return base.BackColor;
		}
		set
		{
			if (value != m_backColor)
			{
				m_backColor = value;
				base.OnBackColorChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Gets or sets the custom managed color of the control.")]
	[DefaultValue(typeof(Color), "")]
	[Category("Appearance")]
	[Browsable(true)]
	public Color CustomManagedColor
	{
		get
		{
			return m_customColor;
		}
		set
		{
			if (value != m_customColor)
			{
				m_customColor = value;
				Invalidate();
			}
		}
	}

	[Browsable(true)]
	[DefaultValue(false)]
	[Category("Appearance")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates whether the custom managed color is to be applied by overiding the Form's managed color")]
	public bool OverrideFormManagedColor
	{
		get
		{
			return m_overrideManagedColor;
		}
		set
		{
			if (value != m_overrideManagedColor)
			{
				m_overrideManagedColor = value;
			}
		}
	}

	[Browsable(true)]
	[Description("Indicates whether Visual Styles must be enabled for the button. Set value to True if you want to apply settings of properties: Appearance, BorderStyleAdv, ButtonType and etc. on current button.")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Category("Appearance - Styles")]
	public virtual bool UseVisualStyle
	{
		get
		{
			if (m_useStyle == UseStyle.Inherited && AmbientHelper.GetAmbientValue(base.Parent, "UseVisualStyle", typeof(bool), out var retValue))
			{
				bool result = (bool)retValue;
				if (m_renderer == null)
				{
					SetRenderer();
				}
				return result;
			}
			if (m_useStyle == UseStyle.True)
			{
				return base.FlatStyle != FlatStyle.System;
			}
			return false;
		}
		set
		{
			if (base.FlatStyle != FlatStyle.System)
			{
				m_useStyle = (value ? UseStyle.True : UseStyle.False);
				if (m_renderer == null)
				{
					SetRenderer();
				}
				SetRegion();
				Refresh();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the type of button to be used.")]
	[Browsable(true)]
	[Category("Appearance - Styles")]
	[DefaultValue(ButtonTypes.Normal)]
	public virtual ButtonTypes ButtonType
	{
		get
		{
			return m_buttonImageType;
		}
		set
		{
			if (m_buttonImageType != value)
			{
				m_buttonImageType = value;
				if (value != ButtonTypes.Normal)
				{
					base.ImageAlign = ContentAlignment.MiddleCenter;
				}
				Refresh();
			}
		}
	}

	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
			Invalidate();
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public ButtonAdvState State
	{
		get
		{
			return m_state;
		}
		set
		{
			if (m_state == value)
			{
				return;
			}
			m_state = value;
			if (PushButton)
			{
				if (m_state == ButtonAdvState.Pressed)
				{
					m_pushed = true;
				}
				else if (m_state == ButtonAdvState.Default)
				{
					m_pushed = false;
				}
			}
			Invalidate();
		}
	}

	[Category("Appearance - Styles")]
	[Description("Indicates the state of control.")]
	[DefaultValue(false)]
	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool PushButton
	{
		get
		{
			return m_bPushable;
		}
		set
		{
			m_bPushable = value;
			State = ButtonAdvState.Default;
			Invalidate();
		}
	}

	[DefaultValue(true)]
	[Description("Indicates whether state should be reset on focus lost.")]
	[Category("Appearance - Styles")]
	public bool ResetStateOnLostFocus
	{
		get
		{
			return resetStateOnLostFocus;
		}
		set
		{
			resetStateOnLostFocus = value;
		}
	}

	[Browsable(false)]
	[DefaultValue(false)]
	public bool IsMouseDown
	{
		get
		{
			return m_bIsDown;
		}
		set
		{
			m_bIsDown = value;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool IsComboButton => m_isComboButton;

	[Browsable(true)]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("Indicates the combo edit backcolor.")]
	[Category("Appearance - Styles")]
	public Color ComboEditBackColor
	{
		get
		{
			return m_comboEditBackColor;
		}
		set
		{
			m_comboEditBackColor = value;
		}
	}

	Office2007Theme ISupportOffice2007Theme.Office2007ColorTheme
	{
		get
		{
			return Office2007ColorScheme;
		}
		set
		{
			Office2007ColorScheme = value;
		}
	}

	[Description("Indicates whether Appearance of the ButtonAdv has changed.")]
	[Category("Property Changed")]
	public event EventHandler ButtonChanged;

	public static void PaintButton(Graphics g, ButtonAdv control, Point p)
	{
		if (control == null || !control.IsHandleCreated || g == null)
		{
			return;
		}
		Rectangle bounds = control.Bounds;
		using Bitmap bitmap = new Bitmap(bounds.Width, bounds.Height);
		bitmap.SetResolution(g.DpiX, g.DpiY);
		using (Graphics graphics = Graphics.FromImage(bitmap))
		{
			IntPtr hdc = graphics.GetHdc();
			try
			{
				NativeMethods.SendMessage(control.Handle, 791, hdc, 30);
			}
			finally
			{
				graphics.ReleaseHdc(hdc);
			}
		}
		g.DrawImage(bitmap, p);
	}

	public ButtonAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ButtonAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		InitializeComponent();
		InitializeProperties();
		DrawBorderDelegateRoutine();
		Application.AddMessageFilter(this);
	}

	public ButtonAdv(bool isComboButton)
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(MaskedEditBox));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		InitializeComponent();
		InitializeProperties();
		m_isComboButton = isComboButton;
	}

	private void InitializeProperties()
	{
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer, value: true);
		base.TextAlign = ContentAlignment.MiddleCenter;
		base.ImageAlign = ContentAlignment.MiddleCenter;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_renderer != null)
			{
				m_renderer.Dispose();
			}
			s_nHashDelegates--;
			if (s_nHashDelegates == 0)
			{
				s_hashDelegates.Clear();
				s_hashDelegates = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
	}

	private bool GetFlag(int flag)
	{
		return (m_animateState & flag) == flag;
	}

	private void SetFlag(int flag, bool value)
	{
		if (value)
		{
			m_animateState |= flag;
		}
		else
		{
			m_animateState &= ~flag;
		}
	}

	private void OnFrameChanged(object sender, EventArgs e)
	{
		if (base.InvokeRequired)
		{
			BeginInvoke(new EventHandler(OnFrameChanged), sender, e);
		}
		else
		{
			Invalidate();
		}
	}

	private void Animate(bool animate)
	{
		if (animate == GetFlag(16))
		{
			return;
		}
		if (animate)
		{
			if (base.Image != null)
			{
				ImageAnimator.Animate(base.Image, OnFrameChanged);
				SetFlag(16, animate);
			}
		}
		else if (base.Image != null)
		{
			ImageAnimator.StopAnimate(base.Image, OnFrameChanged);
			SetFlag(16, animate);
		}
	}

	private void Animate()
	{
		Animate(!base.DesignMode && base.Visible && base.Enabled);
	}

	private void StopAnimate()
	{
		Animate(animate: false);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		if (UseVisualStyle)
		{
			if (m_appearance == ButtonAppearance.None)
			{
				SetRenderer();
			}
			Animate();
			ImageAnimator.UpdateFrames();
			int num = DrawBorder(e);
			Rectangle clientRectangle = base.ClientRectangle;
			m_renderer.SetBounds(Rectangle.Inflate(clientRectangle, -num, -num));
			m_renderer.Render(e.Graphics);
			DrawFocus(e.Graphics);
			RaisePaintEvent(e);
		}
		else
		{
			base.OnPaint(e);
		}
	}

	private void DrawFocus(Graphics g)
	{
		if (KeepFocusRectangle && Focused)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			clientRectangle.Inflate(-4, -4);
			ControlPaint.DrawFocusRectangle(g, clientRectangle);
		}
	}

	private static void DrawBorderDelegateRoutine()
	{
		s_nHashDelegates++;
		if (s_hashDelegates == null)
		{
			s_hashDelegates = new Hashtable();
			s_hashDelegates.Add(ButtonAdvBorderStyle.None, new DrawBorderEventHandler(DrawNoBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Default, new DrawBorderEventHandler(DrawNoBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Dashed, new DrawBorderEventHandler(DrawDashedBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Dotted, new DrawBorderEventHandler(DrawDottedBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Solid, new DrawBorderEventHandler(DrawSolidBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Inset, new DrawBorderEventHandler(DrawInsetBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Outset, new DrawBorderEventHandler(DrawOutsetBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Bump, new DrawBorderEventHandler(DrawBumpBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Etched, new DrawBorderEventHandler(DrawEtchedBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Raised, new DrawBorderEventHandler(DrawRaisedBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.RaisedInner, new DrawBorderEventHandler(DrawRaisedInnerBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.RaisedOuter, new DrawBorderEventHandler(DrawRaisedOuterBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Sunken, new DrawBorderEventHandler(DrawSunkenBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.SunkenInner, new DrawBorderEventHandler(DrawSunkenInnerBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.SunkenOuter, new DrawBorderEventHandler(DrawSunkenOuterBorder));
			s_hashDelegates.Add(ButtonAdvBorderStyle.Flat, new DrawBorderEventHandler(DrawFlatBorder));
		}
	}

	private int DrawBorder(PaintEventArgs e)
	{
		int result = 0;
		if (m_renderer is Office2003ButtonRenderer || m_renderer is OfficeXPButtonRenderer || m_renderer is WindowsXPButtonRenderer)
		{
			using (Pen pen = new Pen(SystemColors.Control))
			{
				Rectangle rect = new Rectangle(base.ClientRectangle.X, base.ClientRectangle.Y, base.ClientRectangle.Width - 1, base.ClientRectangle.Height - 1);
				e.Graphics.DrawRectangle(pen, rect);
				rect.Inflate(-1, -1);
				e.Graphics.DrawRectangle(pen, rect);
			}
			DrawBorderDelegateRoutine();
			if (s_hashDelegates[BorderStyleAdv] is DrawBorderEventHandler drawBorderEventHandler)
			{
				result = drawBorderEventHandler(e.Graphics, e.ClipRectangle, GetBorderColor());
			}
		}
		return result;
	}

	private static int DrawFlatBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.Flat);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawSunkenOuterBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.RaisedOuter);
		return 2;
	}

	private static int DrawSunkenInnerBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.RaisedInner);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawSunkenBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.Raised);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawRaisedOuterBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.RaisedOuter);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawRaisedInnerBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.RaisedInner);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawRaisedBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.Raised);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawEtchedBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.Etched);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawBumpBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder3D(g, rectClient, Border3DStyle.Bump);
		return SystemInformation.Border3DSize.Width;
	}

	private static int DrawOutsetBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder(g, rectClient, clrBorder, ButtonBorderStyle.Outset);
		return 1;
	}

	private static int DrawInsetBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder(g, rectClient, clrBorder, ButtonBorderStyle.Inset);
		return 1;
	}

	private static int DrawSolidBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder(g, rectClient, clrBorder, ButtonBorderStyle.Solid);
		return 1;
	}

	private static int DrawDottedBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder(g, rectClient, clrBorder, ButtonBorderStyle.Dotted);
		return 1;
	}

	private static int DrawDashedBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		ControlPaint.DrawBorder(g, rectClient, clrBorder, ButtonBorderStyle.Dashed);
		return 1;
	}

	private static int DrawNoBorder(Graphics g, Rectangle rectClient, Color clrBorder)
	{
		return 0;
	}

	private Color GetBorderColor()
	{
		if (m_renderer is Office2003ButtonRenderer)
		{
			return ButtonOffice2003Colors.FocusBorderColor;
		}
		return ButtonOfficeXPColors.BorderColor;
	}

	[Obsolete("Do not use this method. Instead use methods pair SuspendMouseState, ResumeMouseState.")]
	[EditorBrowsable(EditorBrowsableState.Never)]
	public void SetIgnoreMouse(bool ignoreMouse)
	{
		if (m_bIgnoreMouse != ignoreMouse)
		{
			m_bIgnoreMouse = ignoreMouse;
		}
	}

	public void SuspendMouseState()
	{
		m_bIgnoreMouse = true;
	}

	public void ResumeMouseState()
	{
		m_bIgnoreMouse = false;
	}

	public void SetIsLastLeftButton(bool val)
	{
		isLastLeftButton = val;
	}

	public void SetIsFirstRightButton(bool val)
	{
		isFirstRightButton = val;
	}

	protected internal bool GetIsLastLeftButton()
	{
		return isLastLeftButton;
	}

	protected internal bool GetIsFirstRightButton()
	{
		return isFirstRightButton;
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		ButtonAppearance appearance = Appearance;
		if (appearance == ButtonAppearance.WindowsXP)
		{
			m_renderer = new WindowsXPButtonRenderer(this);
			(m_renderer as WindowsXPButtonRenderer).SetColorScheme();
		}
		base.OnSystemColorsChanged(e);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		Invalidate();
		base.OnSizeChanged(e);
		SetRegion();
	}

	protected virtual void OnButtonChanged(EventArgs e)
	{
		if (this.ButtonChanged != null)
		{
			this.ButtonChanged(this, e);
		}
	}

	protected override void OnClick(EventArgs e)
	{
		if (PushButton)
		{
			m_pushed = !m_pushed;
			if (m_pushed)
			{
				State &= ~ButtonAdvState.Default;
				State |= ButtonAdvState.Pressed;
			}
			else
			{
				State &= ~ButtonAdvState.Pressed;
				State |= ButtonAdvState.Default;
			}
			State &= ~ButtonAdvState.MouseOver;
		}
		IsMouseDown = true;
		Invalidate();
		base.OnClick(e);
		IsMouseDown = false;
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		if (!m_bIgnoreMouse)
		{
			State &= ~ButtonAdvState.Default;
			State |= ButtonAdvState.MouseOver;
		}
		Refresh();
		base.OnMouseEnter(e);
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		if (!m_bIgnoreMouse)
		{
			State &= ~ButtonAdvState.MouseOver;
			State |= ButtonAdvState.Default;
		}
		Invalidate();
		base.OnMouseLeave(e);
	}

	protected override void OnLostFocus(EventArgs e)
	{
		if (resetStateOnLostFocus)
		{
			State = ButtonAdvState.All;
			Invalidate();
		}
		base.OnLostFocus(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (!MousePointInside())
		{
			State &= ~ButtonAdvState.MouseOver;
			State |= ButtonAdvState.Default;
			IsMouseDown = false;
		}
		else
		{
			if (!m_bIgnoreMouse && (e.Button & MouseButtons.Left) == MouseButtons.Left && !m_pushed)
			{
				State |= ButtonAdvState.Pressed;
			}
			IsMouseDown = true;
		}
		Refresh();
		base.OnMouseDown(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		if (!MousePointInside())
		{
			State &= ~ButtonAdvState.MouseOver;
			State |= ButtonAdvState.Default;
		}
		base.OnMouseMove(e);
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (!MousePointInside())
		{
			State &= ~ButtonAdvState.MouseOver;
			State |= ButtonAdvState.Default;
		}
		else if (!m_bIgnoreMouse && (e.Button & MouseButtons.Left) == MouseButtons.Left)
		{
			if (m_pushed || !PushButton)
			{
				State &= ~ButtonAdvState.Pressed;
			}
			State |= ButtonAdvState.MouseOver;
			IsMouseDown = false;
		}
		Refresh();
		base.OnMouseUp(e);
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (m_weakThemeChanged == null)
		{
			m_weakThemeChanged = new XPThemesThemeChangedWeakContainer(this);
		}
	}

	protected override void OnHandleDestroyed(EventArgs e)
	{
		m_weakThemeChanged.Target = null;
		m_weakThemeChanged = null;
		base.OnHandleDestroyed(e);
	}

	protected override void OnKeyDown(KeyEventArgs kevent)
	{
		base.OnKeyDown(kevent);
		if (kevent.KeyData == Keys.Space)
		{
			State |= ButtonAdvState.Pressed;
			Invalidate();
		}
	}

	protected override void OnKeyUp(KeyEventArgs kevent)
	{
		if ((kevent.KeyCode == Keys.Return || kevent.KeyCode == Keys.Space) && (State & ButtonAdvState.Pressed) != 0)
		{
			State &= ~ButtonAdvState.Pressed;
		}
		base.OnKeyUp(kevent);
	}

	protected virtual void ResetUseVisualStyle()
	{
		m_useStyle = UseStyle.Inherited;
	}

	protected virtual bool ShouldSerializeUseVisualStyle()
	{
		return m_useStyle != UseStyle.Inherited;
	}

	protected virtual void ResetComboEditBackColor()
	{
		ComboEditBackColor = Color.Empty;
	}

	protected virtual bool ShouldSerializeComboEditBackColor()
	{
		return ComboEditBackColor != Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void ResetForeColor()
	{
		ForeColor = Color.Empty;
	}

	protected internal virtual bool ShouldSerializeForeColor()
	{
		return m_foreColor != Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public override void ResetBackColor()
	{
		BackColor = Color.Empty;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual bool ShouldSerializeBackColor()
	{
		return m_backColor != Color.Empty;
	}

	protected void RaisePaintEvent(PaintEventArgs e)
	{
		if (base.Events[ControlEventsHelper.EventPaint] is PaintEventHandler paintEventHandler)
		{
			paintEventHandler(this, e);
		}
	}

	private void SetRenderer()
	{
		if (m_renderer != null)
		{
			m_renderer.Dispose();
		}
		if (m_cachedAppearance != Appearance)
		{
			switch (Appearance)
			{
			case ButtonAppearance.Classic:
				m_renderer = new ClassicButtonRenderer(this);
				break;
			case ButtonAppearance.Office2000:
				m_renderer = new Office2000ButtonRenderer(this);
				break;
			case ButtonAppearance.OfficeXP:
				m_renderer = new OfficeXPButtonRenderer(this);
				break;
			case ButtonAppearance.WindowsXP:
				m_renderer = new WindowsXPButtonRenderer(this);
				break;
			case ButtonAppearance.Office2003:
				m_renderer = new Office2003ButtonRenderer(this);
				break;
			case ButtonAppearance.Office2007:
				m_renderer = new Office2007ButtonRenderer(this);
				break;
			}
			SetRegion();
		}
		m_cachedAppearance = Appearance;
	}

	private void SetRegion()
	{
		if (UseVisualStyle && m_renderer != null)
		{
			base.Region = m_renderer.GetRegion(base.ClientRectangle);
		}
		else
		{
			base.Region = null;
		}
	}

	private ButtonAppearance GetButtonAppearance()
	{
		OperatingSystem oSVersion = Environment.OSVersion;
		if (oSVersion.Platform == PlatformID.Win32NT && oSVersion.Version.Major == 5 && oSVersion.Version.Minor != 0 && NativeMethods.IsThemeActive())
		{
			return ButtonAppearance.WindowsXP;
		}
		return ButtonAppearance.Classic;
	}

	private bool MousePointInside()
	{
		if (!base.IsDisposed)
		{
			Rectangle rectangle = RectangleToScreen(base.ClientRectangle);
			Point mousePosition = Control.MousePosition;
			if (!base.Visible)
			{
				return rectangle.Contains(mousePosition);
			}
			return true;
		}
		return false;
	}

	void ISupportOffice2007Theme.EnableOffice2007Style()
	{
		Appearance = ButtonAppearance.Office2007;
	}

	void ISupportThemeChanged.ThemeChanged(object sender, EventArgs e)
	{
		SetRenderer();
		Invalidate();
	}

	bool IMessageFilter.PreFilterMessage(ref Message m)
	{
		int msg = m.Msg;
		if (msg == 260)
		{
			altPressed = true;
		}
		return false;
	}
}
