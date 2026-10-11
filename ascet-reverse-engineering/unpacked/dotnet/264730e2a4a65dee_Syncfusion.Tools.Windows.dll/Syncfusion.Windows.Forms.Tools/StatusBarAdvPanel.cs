using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Globalization;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(StatusBarAdvPanel), "ToolboxIcons.StatusBarAdvPanel.bmp")]
[Description("Represents a control used with StatusBarAdv to show information like key states date and time")]
public class StatusBarAdvPanel : GradientPanel
{
	private const int VK_INSERT = 45;

	private const int DEF_IMAGE_GAP = 2;

	private const int DEF_ANIMATION_DELAY = 5;

	private const int DEF_ANIMATION_SPEED = 1;

	private IContainer components;

	private string text;

	private string customOnText = "Custom ON";

	private string customOffText = "Custom OFF";

	private HorizontalAlignment align = HorizontalAlignment.Center;

	private StatusBarAdvPanelType type;

	private Icon icon;

	private Timer timer;

	private KeyListener keyListener;

	private FlowLayoutConstraints constraints;

	private Size preferredSize = Size.Empty;

	private Size minimumSize = Size.Empty;

	private Color oldBackColor = SystemColors.Control;

	private bool sizeToContent;

	private string toolTip = string.Empty;

	private ToolTip m_toolTip;

	private ThemedControlDrawing tcd;

	private AnimationHelper m_animator;

	private bool m_bIsMarquee;

	private bool m_showCustomText;

	private int m_animationSpeed = 1;

	private int m_animationDelay = 5;

	private Point m_animationPoint = Point.Empty;

	private MarqueeDirection m_enAnimationDirection;

	private MarqueeStyle m_enAnimationStyle;

	private bool m_bAnimationStarted;

	private MarqueeDirection m_enPerformingDirection;

	private short m_initialInsertState;

	private bool themesEnabled;

	[Description("Indicates the tool tip of the panel.")]
	[Category("Appearance")]
	[DefaultValue("")]
	public string ToolTip
	{
		get
		{
			return toolTip;
		}
		set
		{
			if (toolTip != value)
			{
				toolTip = value;
				m_toolTip.RemoveAll();
				m_toolTip.SetToolTip(this, value);
			}
		}
	}

	[Category("Layout")]
	[Description("Indicates if the size of the panel will be automatically calculated by the size of it`s contents.")]
	[DefaultValue(false)]
	public bool SizeToContent
	{
		get
		{
			return sizeToContent;
		}
		set
		{
			if (value)
			{
				Alignment = HorizontalAlignment.Left;
			}
			if (sizeToContent != value)
			{
				sizeToContent = value;
				RecalculateSize();
				Update();
			}
		}
	}

	[Category("Layout")]
	[Description("Indicates the minimum size of the panel in the FlowLayout.")]
	internal new Size MinimumSize
	{
		get
		{
			return minimumSize;
		}
		set
		{
			minimumSize = value;
		}
	}

	[Category("Layout")]
	[Description("Indicates the preferred size of the panel in the FlowLayout.")]
	public new Size PreferredSize
	{
		get
		{
			if (preferredSize == Size.Empty)
			{
				return base.Size;
			}
			return preferredSize;
		}
		set
		{
			if (preferredSize != value && !sizeToContent)
			{
				preferredSize = value;
				OnPreferredSizeChanged();
			}
		}
	}

	[Description("Indicates the constraints in the FlowLayout.")]
	[Category("Layout")]
	internal FlowLayoutConstraints Constraints
	{
		get
		{
			return constraints;
		}
		set
		{
			constraints = value;
			OnConstraintsChanged();
		}
	}

	[Description("Indicates the HorizontalAlignment in the FlowLayout.")]
	[DefaultValue(HorzFlowAlign.Left)]
	[Category("Layout")]
	public HorzFlowAlign HAlign
	{
		get
		{
			return constraints.HAlign;
		}
		set
		{
			if (HAlign != value)
			{
				constraints.HAlign = value;
				if (HAlign == HorzFlowAlign.Justify && !ShouldSerializePreferredSize())
				{
					PreferredSize = new Size(base.Width - 1, base.Height);
				}
				OnConstraintsChanged();
			}
		}
	}

	[DefaultValue(null)]
	[Description("Indicates the icon of the panel.")]
	[Category("Appearance")]
	public Icon Icon
	{
		get
		{
			return icon;
		}
		set
		{
			if (icon != value)
			{
				if (value == null)
				{
					icon = null;
				}
				else
				{
					icon = new Icon(value, new Size(16, 16));
				}
				OnIconChanged();
				RecalculateSize();
				Invalidate();
			}
		}
	}

	[Description("Indicates the type of the panel.")]
	[DefaultValue(StatusBarAdvPanelType.Custom)]
	[Category("Appearance")]
	public StatusBarAdvPanelType PanelType
	{
		get
		{
			return type;
		}
		set
		{
			if (type == value)
			{
				return;
			}
			timer.Enabled = false;
			type = value;
			OnTypeChanged();
			if (type == StatusBarAdvPanelType.LongDate || type == StatusBarAdvPanelType.LongTime || type == StatusBarAdvPanelType.ShortDate || type == StatusBarAdvPanelType.ShortTime || type == StatusBarAdvPanelType.CurrentCulture)
			{
				if (base.DesignMode && ShowCustomText)
				{
					throw new ArgumentException("Custom text entry has to be disabled for the PanelType " + PanelType.ToString() + ". The custom text entry is enabled only when the selected PanelType is CapsLockState/InsertKeyState/NumLockState/ScrollLockState. Please disable the custom Text property");
				}
				timer.Enabled = true;
			}
			RecalculateSize();
			Invalidate();
		}
	}

	[DefaultValue(HorizontalAlignment.Center)]
	[Description("Indicates the alignment type of the text and icon of the panel.")]
	[Category("Appearance")]
	public HorizontalAlignment Alignment
	{
		get
		{
			return align;
		}
		set
		{
			if (align != value && !sizeToContent)
			{
				align = value;
				OnAlignChanged();
				Invalidate();
			}
		}
	}

	[DefaultValue("")]
	[Browsable(true)]
	public new string Text
	{
		get
		{
			return text;
		}
		set
		{
			if (text != value)
			{
				text = value;
				RecalculateSize();
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(false)]
	[Description("A value indicating whether control uses custom texts for displaying text.")]
	public bool ShowCustomText
	{
		get
		{
			return m_showCustomText;
		}
		set
		{
			if (value == m_showCustomText)
			{
				return;
			}
			if (base.DesignMode)
			{
				if (PanelType != StatusBarAdvPanelType.CapsLockState && PanelType != StatusBarAdvPanelType.InsertKeyState && PanelType != StatusBarAdvPanelType.NumLockState && PanelType != StatusBarAdvPanelType.ScrollLockState)
				{
					throw new ArgumentException("Custom text entry is disabled for the PanelType " + PanelType.ToString() + ". The custom text entry is enabled only when the selected PanelType is CapsLockState/InsertKeyState/NumLockState/ScrollLockState.");
				}
				m_showCustomText = value;
				Invalidate();
			}
			m_showCustomText = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Determines the Custom Text for StatusBarAdvPanel instead of default Caps-ON/Scroll-ON/Insert/Num-ON Text. This will be applied only if EnableCustomText is set to True.")]
	[DefaultValue("Custom ON")]
	public string CustomONText
	{
		get
		{
			return customOnText;
		}
		set
		{
			if (customOnText != value)
			{
				customOnText = value;
				Invalidate();
			}
		}
	}

	[Description("Determines the Custom OFF Text for StatusBarAdvPanel instead of default Caps-OFF/Scroll-OFF/NUM-OFF/Overwrite Text. This will be applied only if EnableCustomText is set to True")]
	[Category("Appearance")]
	[DefaultValue("Custom OFF")]
	public string CustomOFFText
	{
		get
		{
			return customOffText;
		}
		set
		{
			if (customOffText != value)
			{
				customOffText = value;
				Invalidate();
			}
		}
	}

	[Description("A value indicating whether control uses marquee style for displaying text.")]
	[Category("Appearance")]
	[DefaultValue(false)]
	public bool IsMarquee
	{
		get
		{
			return m_bIsMarquee;
		}
		set
		{
			if (value != m_bIsMarquee)
			{
				m_bIsMarquee = value;
				OnIsMarqueeChanged();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(1)]
	[Description("Animation speed of marquee style.")]
	public int AnimationSpeed
	{
		get
		{
			return m_animationSpeed;
		}
		set
		{
			if (value != m_animationSpeed)
			{
				m_animationSpeed = value;
				OnAnimationSpeedChanged();
			}
		}
	}

	[DefaultValue(5)]
	[Category("Behavior")]
	[Description("Delay for animation of marquee style.")]
	public int AnimationDelay
	{
		get
		{
			return m_animationDelay;
		}
		set
		{
			if (value != m_animationDelay)
			{
				m_animationDelay = value;
				OnAnimationDelayChanged();
			}
		}
	}

	[DefaultValue(MarqueeDirection.Left)]
	[Category("Behavior")]
	[Description("Direction of animation for marquee style.")]
	public MarqueeDirection AnimationDirection
	{
		get
		{
			return m_enAnimationDirection;
		}
		set
		{
			if (value != m_enAnimationDirection)
			{
				m_enAnimationDirection = value;
				OnAnimationDirectionChanged();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(MarqueeStyle.Scroll)]
	[Description("Style of animation for marquee style.")]
	public MarqueeStyle AnimationStyle
	{
		get
		{
			return m_enAnimationStyle;
		}
		set
		{
			if (value != m_enAnimationStyle)
			{
				m_enAnimationStyle = value;
				OnAnimationStyleChanged();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Indicates if the background color will be set to Transparent. Indicated settings:BorderSides = Right, BorderStyle = Fixed3D, Border3DStyle = Etched.")]
	[Category("Appearance")]
	public new bool ThemesEnabled
	{
		get
		{
			return themesEnabled;
		}
		set
		{
			base.ThemesEnabled = false;
			if (themesEnabled != value)
			{
				themesEnabled = value;
				if (value)
				{
					base.BackColor = Color.Transparent;
				}
				else
				{
					base.BackColor = oldBackColor;
				}
			}
		}
	}

	[Browsable(false)]
	public new bool IgnoreThemeBackground
	{
		get
		{
			return false;
		}
		set
		{
		}
	}

	public new Color BackColor
	{
		get
		{
			return oldBackColor;
		}
		set
		{
			if (oldBackColor != value)
			{
				oldBackColor = value;
				if (!ThemesEnabled)
				{
					base.BackColor = value;
				}
			}
		}
	}

	[Description("Event is triggered when panel has changed the preferred size.")]
	[Category("Property Changed")]
	public event EventHandler PreferredSizeChanged;

	[Category("Property Changed")]
	internal event EventHandler MinimumSizeChanged;

	[Category("Property Changed")]
	[Description("Event is raised if the list of constraints has changed.")]
	public event EventHandler ConstraintsChanged;

	[Description("Event  is thrown at any time, if the alignment of panel changes.")]
	[Category("Property Changed")]
	public event EventHandler AlignChanged;

	[Category("Property Changed")]
	[Description("Event is triggered when PanelType changes.")]
	public event EventHandler TypeChanged;

	[Category("Property Changed")]
	[Description("Event is raised when icon of the panel changes.")]
	public event EventHandler IconChanged;

	[Category("Property Changed")]
	[Description("Raised when the IsMarquee property is changed.")]
	public event EventHandler IsMarqueeChanged;

	[Description("Raised when the Animation speed property is changed.")]
	[Category("Property Changed")]
	public event EventHandler AnimationSpeedChanged;

	[Description("Raised when the Animation delay property is changed.")]
	[Category("Property Changed")]
	public event EventHandler AnimationDelayChanged;

	[Description("Raised when the Animation direction property is changed.")]
	[Category("Property Changed")]
	public event EventHandler AnimationDirectionChanged;

	[Category("Property Changed")]
	[Description("Raised when the Animation style is changed.")]
	public event EventHandler AnimationStyleChanged;

	protected void OnPreferredSizeChanged()
	{
		if (this.PreferredSizeChanged != null)
		{
			this.PreferredSizeChanged(this, EventArgs.Empty);
		}
	}

	protected void OnMinimumSizeChanged()
	{
		if (this.MinimumSizeChanged != null)
		{
			this.MinimumSizeChanged(this, EventArgs.Empty);
		}
	}

	protected void OnConstraintsChanged()
	{
		if (this.ConstraintsChanged != null)
		{
			this.ConstraintsChanged(this, EventArgs.Empty);
		}
	}

	protected void OnAlignChanged()
	{
		if (this.AlignChanged != null)
		{
			this.AlignChanged(this, EventArgs.Empty);
		}
	}

	protected void OnTypeChanged()
	{
		if (this.TypeChanged != null)
		{
			this.TypeChanged(this, EventArgs.Empty);
		}
	}

	protected void OnIconChanged()
	{
		if (this.IconChanged != null)
		{
			this.IconChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseIsMarqueeChanged()
	{
		if (this.IsMarqueeChanged != null)
		{
			this.IsMarqueeChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseAnimationSpeedChanged()
	{
		if (this.AnimationSpeedChanged != null)
		{
			this.AnimationSpeedChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseAnimationDelayChanged()
	{
		if (this.AnimationDelayChanged != null)
		{
			this.AnimationDelayChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseAnimationDirectionChanged()
	{
		if (this.AnimationDirectionChanged != null)
		{
			this.AnimationDirectionChanged(this, EventArgs.Empty);
		}
	}

	private void RaiseAnimationStyleChanged()
	{
		if (this.AnimationStyleChanged != null)
		{
			this.AnimationStyleChanged(this, EventArgs.Empty);
		}
	}

	protected virtual void OnAnimationStyleChanged()
	{
		RefreshAnimation();
		RaiseAnimationStyleChanged();
	}

	protected virtual void OnAnimationDirectionChanged()
	{
		RefreshAnimation();
		RaiseAnimationDirectionChanged();
	}

	protected virtual void OnIsMarqueeChanged()
	{
		if (!IsMarquee)
		{
			StopAnimation();
		}
		RaiseIsMarqueeChanged();
	}

	protected virtual void OnAnimationSpeedChanged()
	{
		RefreshAnimation();
		RaiseAnimationSpeedChanged();
	}

	protected virtual void OnAnimationDelayChanged()
	{
		RefreshAnimation();
		RaiseAnimationDelayChanged();
	}

	private bool KeyState(short state)
	{
		return StatusBarAdvNativeMethods.LOWORD(state) == 1 || StatusBarAdvNativeMethods.LOWORD(state) == 65409;
	}

	public StatusBarAdvPanel()
	{
		InitializeComponent();
		constraints = new FlowLayoutConstraints(active: true, HorzFlowAlign.Left, VertFlowAlign.Top, newline: false, proportionalColWidth: false, proportionalRowHeight: false);
		keyListener = new KeyListener(this);
		MessageFilterEntryHelper.AddMessageFilter(keyListener, ontop: false);
		preferredSize = Size.Empty;
		base.ThemedBorder = false;
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		RecalculateSize();
		m_toolTip = new ToolTip();
		m_toolTip.InitialDelay = 0;
		m_toolTip.AutomaticDelay = 0;
		m_toolTip.AutoPopDelay = 0;
		m_toolTip.ReshowDelay = 0;
		m_toolTip.ShowAlways = true;
		m_toolTip.SetToolTip(this, toolTip);
		m_initialInsertState = StatusBarAdvNativeMethods.GetKeyState(45);
		InitializeAnimation();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("STATUS", this);
		}
		base.Margin = new Padding(0);
	}

	private void InitializeAnimation()
	{
		m_animator = new AnimationHelper();
		m_animator.AnimationPositionChanged += Animator_AnimationPositionChanged;
		m_animator.AnimationDone += Animator_AnimationDone;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		if (base.Parent is IThemedControl)
		{
			ThemesEnabled = (base.Parent as IThemedControl).ThemesEnabled;
		}
	}

	private bool ShouldSerializePreferredSize()
	{
		if (preferredSize == Size.Empty)
		{
			return false;
		}
		return true;
	}

	private void ResetPreferredSize()
	{
		if (HAlign != HorzFlowAlign.Justify)
		{
			PreferredSize = Size.Empty;
		}
		else if (base.DesignMode)
		{
			MessageBox.Show("You cannot reset this property when the HAlign is Justify");
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
			if (m_toolTip != null)
			{
				m_toolTip.RemoveAll();
				m_toolTip.Dispose();
			}
			MessageFilterEntryHelper.RemoveMessageFilter(keyListener);
			if (tcd != null)
			{
				tcd.Dispose();
				tcd = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this.timer = new System.Windows.Forms.Timer(this.components);
		this.timer.Interval = 1000;
		this.timer.Tick += new System.EventHandler(Timer_Tick);
		base.Size = new System.Drawing.Size(100, 16);
		base.SizeChanged += new System.EventHandler(StatusBarAdvPanel_SizeChanged);
		base.ThemeChanged += new System.EventHandler(StatusBarAdvPanel_ThemeChanged);
	}

	public void StartAnimation()
	{
		m_bAnimationStarted = true;
		m_enPerformingDirection = AnimationDirection;
		BeginAnimation();
	}

	public void StopAnimation()
	{
		m_bAnimationStarted = false;
		EndAnimation();
		Invalidate();
	}

	private void BeginAnimation()
	{
		if (!m_bAnimationStarted || !IsMarquee || AnimationSpeed == 0 || AnimationDelay == 0)
		{
			return;
		}
		m_animationPoint = GetStartAnimationPoint(m_enPerformingDirection);
		Size textSize = GetTextSize();
		int num = 0;
		int num2 = ((icon != null) ? (icon.Width + 2) : 0);
		switch (AnimationStyle)
		{
		case MarqueeStyle.Scroll:
			num = (textSize.Width + base.Size.Width + num2) / AnimationSpeed;
			break;
		case MarqueeStyle.Slide:
			switch (Alignment)
			{
			case HorizontalAlignment.Left:
				num = ((m_enPerformingDirection == MarqueeDirection.Left) ? base.ClientRectangle.Width : (textSize.Width + num2));
				break;
			case HorizontalAlignment.Right:
				num = ((m_enPerformingDirection == MarqueeDirection.Left) ? (textSize.Width + num2) : base.ClientRectangle.Width);
				break;
			case HorizontalAlignment.Center:
				num = (base.ClientRectangle.Width - textSize.Width - num2) / 2;
				num += textSize.Width + num2;
				break;
			}
			num /= AnimationSpeed;
			break;
		case MarqueeStyle.Alternate:
			num = ((base.ClientRectangle.Width > textSize.Width) ? (base.Size.Width - textSize.Width - num2) : (textSize.Width + num2 - base.Size.Width));
			num /= AnimationSpeed;
			break;
		}
		m_animator.StartAnimation(num, directionExpand: true, AnimationDelay);
	}

	private void EndAnimation()
	{
		if (m_animator.AnimationOn)
		{
			m_animationPoint = Point.Empty;
			m_animator.StopAnimation();
		}
	}

	private void RefreshAnimation()
	{
		if (m_animator.AnimationOn)
		{
			EndAnimation();
		}
		if (IsMarquee)
		{
			m_enPerformingDirection = AnimationDirection;
			BeginAnimation();
		}
	}

	private Size GetTextSize()
	{
		string text = GetText();
		Graphics graphics = CreateGraphics();
		return graphics.MeasureString(text, Font).ToSize();
	}

	private Point GetStartAnimationPoint(MarqueeDirection direction)
	{
		Size textSize = GetTextSize();
		int num = ((icon != null) ? (icon.Width + 2) : 0);
		int num2 = 0;
		switch (AnimationStyle)
		{
		case MarqueeStyle.Scroll:
			num2 = ((direction == MarqueeDirection.Left) ? base.ClientRectangle.Right : (base.ClientRectangle.Left - textSize.Width - num));
			break;
		case MarqueeStyle.Slide:
			num2 = ((direction == MarqueeDirection.Left) ? base.ClientRectangle.Right : (base.ClientRectangle.Left - textSize.Width - num));
			break;
		case MarqueeStyle.Alternate:
		{
			int num3 = base.Size.Width - textSize.Width - num;
			num2 = ((base.ClientRectangle.Width <= textSize.Width) ? ((direction != MarqueeDirection.Left) ? num3 : 0) : ((direction == MarqueeDirection.Left) ? num3 : 0));
			break;
		}
		}
		int num4 = (base.ClientRectangle.Height - textSize.Height) / 2;
		return new Point(num2, num4);
	}

	private void RecalculateSize()
	{
		if (sizeToContent)
		{
			int num = 0;
			int num2 = 0;
			if (icon != null)
			{
				num += icon.Width + 2;
			}
			Graphics graphics = CreateGraphics();
			graphics.TextRenderingHint = TextRenderingHint.SystemDefault;
			num2 = Convert.ToInt32(Math.Ceiling(graphics.MeasureString(" ", Font).Width));
			num += graphics.MeasureString(GetText(), Font).ToSize().Width + num2;
			base.ClientSize = new Size(num, base.ClientSize.Height);
			MinimumSize = base.Size;
			PreferredSize = base.Size;
			graphics.Dispose();
		}
	}

	public string GetText()
	{
		short keyState = StatusBarAdvNativeMethods.GetKeyState(20);
		short keyState2 = StatusBarAdvNativeMethods.GetKeyState(144);
		short keyState3 = StatusBarAdvNativeMethods.GetKeyState(145);
		short keyState4 = StatusBarAdvNativeMethods.GetKeyState(45);
		bool flag = StatusBarAdvNativeMethods.LOWORD(keyState) != 0 && KeyState(keyState);
		bool flag2 = StatusBarAdvNativeMethods.LOWORD(keyState2) != 0 && KeyState(keyState2);
		bool flag3 = StatusBarAdvNativeMethods.LOWORD(keyState3) != 0 && KeyState(keyState3);
		bool flag4 = StatusBarAdvNativeMethods.LOWORD(keyState4) != 0 && KeyState(keyState4);
		string result = text;
		switch (type)
		{
		case StatusBarAdvPanelType.Custom:
			result = text;
			break;
		case StatusBarAdvPanelType.CapsLockState:
			result = (m_showCustomText ? (flag ? customOnText : customOffText) : (flag ? "CapsLock ON" : "CapsLock OFF"));
			break;
		case StatusBarAdvPanelType.NumLockState:
			result = (m_showCustomText ? (flag2 ? customOnText : customOffText) : (flag2 ? "NumLock ON" : "NumLock OFF"));
			break;
		case StatusBarAdvPanelType.ScrollLockState:
			result = (m_showCustomText ? (flag3 ? customOnText : customOffText) : (flag3 ? "ScrollLock ON" : "ScrollLock OFF"));
			break;
		case StatusBarAdvPanelType.LongDate:
			result = DateTime.Now.ToLongDateString();
			break;
		case StatusBarAdvPanelType.ShortDate:
			result = DateTime.Now.ToShortDateString();
			break;
		case StatusBarAdvPanelType.LongTime:
			result = DateTime.Now.ToLongTimeString();
			break;
		case StatusBarAdvPanelType.ShortTime:
			result = DateTime.Now.ToShortTimeString();
			break;
		case StatusBarAdvPanelType.CurrentCulture:
			result = CultureInfo.CurrentCulture.DisplayName;
			break;
		case StatusBarAdvPanelType.InsertKeyState:
			result = (m_showCustomText ? (flag4 ? customOnText : customOffText) : (flag4 ? "Insert" : "Overwrite"));
			break;
		}
		return result;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		if (tcd != null)
		{
			tcd.DrawMirrored = RightToLeft == RightToLeft.Yes;
		}
		string s = GetText();
		e.Graphics.TextRenderingHint = TextRenderingHint.SystemDefault;
		Size size = e.Graphics.MeasureString(s, Font).ToSize();
		Point point = new Point(0, 0);
		switch (align)
		{
		case HorizontalAlignment.Left:
			point = new Point(2, (base.ClientRectangle.Height - size.Height) / 2);
			break;
		case HorizontalAlignment.Center:
			point = new Point((base.ClientRectangle.Width - size.Width - ((icon != null) ? icon.Width : 0)) / 2, (base.ClientRectangle.Height - size.Height) / 2);
			break;
		case HorizontalAlignment.Right:
			point = new Point(base.ClientRectangle.Width - size.Width - 3 - ((icon != null) ? icon.Width : 0), (base.ClientRectangle.Height - size.Height) / 2);
			break;
		}
		Point point2 = ((m_animationPoint == Point.Empty) ? point : m_animationPoint);
		if (icon != null)
		{
			e.Graphics.DrawIcon(icon, point2.X, (base.ClientRectangle.Height - icon.Height) / 2);
			point2.X += icon.Width + 2;
		}
		if (base.Enabled)
		{
			e.Graphics.DrawString(s, Font, new SolidBrush(ForeColor), point2);
		}
		else
		{
			ControlPaint.DrawStringDisabled(layoutRectangle: new Rectangle(point2, size), dc: e.Graphics, s: s, font: Font, color: BackColor, format: TextFormatFlags.Default);
		}
	}

	protected override void ThemedPaintBackground(Graphics graphics, Rectangle rect, Rectangle clip)
	{
		tcd.DrawThemeBackground(graphics, 1, 0, base.ClientRectangle);
	}

	private void StatusBarAdvPanel_SizeChanged(object sender, EventArgs e)
	{
		RecalculateSize();
		if (!ShouldSerializePreferredSize())
		{
			OnPreferredSizeChanged();
		}
		Invalidate();
	}

	internal void KeyListener_KeyEvent(Keys key)
	{
		if (PanelType == StatusBarAdvPanelType.CapsLockState && key == Keys.Capital)
		{
			Invalidate();
		}
		if (PanelType == StatusBarAdvPanelType.NumLockState && key == Keys.NumLock)
		{
			Invalidate();
		}
		if (PanelType == StatusBarAdvPanelType.ScrollLockState && key == Keys.Scroll)
		{
			Invalidate();
		}
		if (PanelType == StatusBarAdvPanelType.InsertKeyState && key == Keys.Insert)
		{
			Invalidate();
		}
	}

	private void Timer_Tick(object sender, EventArgs e)
	{
		Invalidate();
	}

	private void StatusBarAdvPanel_ThemeChanged(object sender, EventArgs e)
	{
		if (ThemesEnabled)
		{
			if (BackColor != Color.Transparent)
			{
				oldBackColor = BackColor;
				BackColor = Color.Transparent;
			}
		}
		else
		{
			BackColor = oldBackColor;
		}
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && XPThemes.IsAppThemed)
		{
			tcd = new ThemedControlDrawing("STATUS");
		}
	}

	private void Animator_AnimationPositionChanged(object sender, EventArgs e)
	{
		Point animationPoint = m_animationPoint;
		switch (m_enPerformingDirection)
		{
		case MarqueeDirection.Left:
			animationPoint.Offset(-AnimationSpeed, 0);
			break;
		case MarqueeDirection.Right:
			animationPoint.Offset(AnimationSpeed, 0);
			break;
		}
		m_animationPoint = animationPoint;
		Invalidate();
	}

	private void Animator_AnimationDone(object sender, EventArgs e)
	{
		if (IsMarquee && m_bAnimationStarted)
		{
			switch (AnimationStyle)
			{
			case MarqueeStyle.Scroll:
				BeginAnimation();
				break;
			case MarqueeStyle.Slide:
				EndAnimation();
				break;
			case MarqueeStyle.Alternate:
				if (m_enPerformingDirection == MarqueeDirection.Left)
				{
					m_enPerformingDirection = MarqueeDirection.Right;
				}
				else
				{
					m_enPerformingDirection = MarqueeDirection.Left;
				}
				BeginAnimation();
				break;
			}
		}
		else if (!m_bAnimationStarted)
		{
			EndAnimation();
		}
	}
}
