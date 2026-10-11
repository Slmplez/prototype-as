using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Collections;
using Syncfusion.Windows.Forms.Localization;
using Syncfusion.Windows.Forms.Renderers;
using Syncfusion.Windows.Forms.Scrolling.Renderers;

namespace Syncfusion.Windows.Forms;

[Designer(typeof(ScrollBarCustomDrawDesigner), typeof(IDesigner))]
[ToolboxItem(false)]
[TypeConverter(typeof(ExpandableObjectConverter))]
public class ScrollBarCustomDraw : ContainerControl
{
	private const string DEF_COLOR_SCHEME = "";

	private static readonly object EventLargeChangeChanged = new object();

	private static readonly object EventMaximumChanged = new object();

	private static readonly object EventMinimumChanged = new object();

	private static readonly object EventSmallChangeChanged = new object();

	private static readonly object EventValueChanged = new object();

	private static readonly object EventVisualStyleChanged = new object();

	private static readonly object EventColorSchemeChanged = new object();

	private static readonly object EventThemeEnabledChanged = new object();

	private readonly TimerCallback timerDelegate;

	protected int m_largeChange = 10;

	protected int m_cachedLargeChange = 10;

	protected int m_max = 100;

	protected int m_min;

	protected int m_smallChange = 1;

	protected int m_value = 10;

	private ScrollBarCustomDrawStyles m_styles;

	private bool m_bThemeEnabled = true;

	private bool m_bDisableThumb;

	private bool m_bDisableMin;

	private bool m_bDisableMax;

	private ControlsCollection m_controlsBefore;

	private ControlsCollection m_controlsAfter;

	private bool m_bKeepSystemmetrics;

	private IRenderer m_renderer;

	protected Rectangle[] m_rects = new Rectangle[5];

	private System.Threading.Timer m_timer;

	protected Point m_lastPressedPoint = Point.Empty;

	private PressedZone m_pressedZone = PressedZone.None;

	private PressedZone m_selectedZone = PressedZone.None;

	private PressedZone m_cachedSelectedZone = PressedZone.None;

	private MovedZone m_movedZone = MovedZone.Out;

	private bool m_bUpdateStates;

	private Office2007ColorScheme m_OfficeColorScheme;

	protected IContextMenuProvider m_MenuProvider;

	protected Point m_ptLocation = Point.Empty;

	protected bool m_IsSetControlsVisiblity;

	private bool m_bRefreshOnValueChange;

	protected ScrollersFrame m_owner;

	[DefaultValue(10)]
	[Category("CatBehavior")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("ScrollBarLargeChangeDescr")]
	public int LargeChange
	{
		get
		{
			return m_largeChange;
		}
		set
		{
			if (m_largeChange != value)
			{
				if (value > m_max - m_min + 1)
				{
					m_largeChange = m_max - m_min + 1;
					m_value = m_min;
				}
				else
				{
					m_largeChange = value;
					m_cachedLargeChange = value;
				}
				OnLargeChangeChanged(EventArgs.Empty);
				RecalculateThumb();
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(100)]
	[Description("ScrollBarMaximumDescr")]
	public int Maximum
	{
		get
		{
			return m_max;
		}
		set
		{
			if (m_max == value)
			{
				return;
			}
			m_max = value;
			if (m_max < m_min)
			{
				m_min = m_max;
			}
			if (m_max < m_value + m_largeChange - 1)
			{
				m_value = m_max - m_largeChange + 1;
			}
			if (m_max < m_min + m_largeChange - 1 || m_largeChange < m_cachedLargeChange)
			{
				if (m_max - m_min == m_cachedLargeChange)
				{
					m_largeChange = m_max - m_min;
					m_value = m_min + 1;
				}
				else
				{
					m_largeChange = ((m_max - m_min + 1 < m_cachedLargeChange) ? (m_max - m_min + 1) : m_cachedLargeChange);
					m_value = m_min;
				}
			}
			else
			{
				m_largeChange = m_cachedLargeChange;
			}
			OnMaximumChanged(EventArgs.Empty);
			RecalculateThumb();
			Invalidate();
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[Description("ScrollBarMinimumDescr")]
	[Category("Behavior")]
	[DefaultValue(0)]
	public int Minimum
	{
		get
		{
			return m_min;
		}
		set
		{
			if (m_min == value)
			{
				return;
			}
			m_min = value;
			if (m_min > m_max)
			{
				m_max = m_min;
			}
			if (m_min > m_value)
			{
				m_value = m_min;
			}
			if (m_min > m_max - m_largeChange + 1 || m_largeChange < m_cachedLargeChange)
			{
				if (m_max - m_min == m_cachedLargeChange)
				{
					m_largeChange = m_max - m_min;
					m_value = m_min + 1;
				}
				else
				{
					m_largeChange = ((m_max - m_min + 1 < m_cachedLargeChange) ? (m_max - m_min + 1) : m_cachedLargeChange);
					m_value = m_min;
				}
			}
			else
			{
				m_largeChange = m_cachedLargeChange;
			}
			OnMinimumChanged(EventArgs.Empty);
			RecalculateThumb();
			Invalidate();
		}
	}

	[Category("Behavior")]
	[Description("ScrollBarSmallChangeDescr")]
	[DefaultValue(1)]
	public int SmallChange
	{
		get
		{
			return m_smallChange;
		}
		set
		{
			if (m_smallChange != value)
			{
				m_smallChange = value;
				OnSmallChangeChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Behavior")]
	[Description("ScrollBarValueDescr")]
	[Bindable(true)]
	public int Value
	{
		get
		{
			return m_value;
		}
		set
		{
			if (m_value != value)
			{
				SetInnerValue(value);
				OnValueChanged(EventArgs.Empty);
				if (RefreshOnValueChange)
				{
					Refresh();
				}
				else
				{
					Invalidate();
				}
			}
		}
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Browsable(false)]
	[Bindable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override string Text
	{
		get
		{
			return base.Text;
		}
		set
		{
			base.Text = value;
		}
	}

	[Category("Appearance - Styles")]
	public ScrollBarCustomDrawStyles VisualStyle
	{
		get
		{
			return m_styles;
		}
		set
		{
			if (m_styles != value)
			{
				m_styles = value;
				OnVisualStyleChanged(EventArgs.Empty);
			}
		}
	}

	[DefaultValue(true)]
	[Category("Appearance - Styles")]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool ThemeEnabled
	{
		get
		{
			return m_bThemeEnabled;
		}
		set
		{
			if (m_bThemeEnabled != value)
			{
				m_bThemeEnabled = value;
				OnThemeEnabledChanged(EventArgs.Empty);
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool DisableThumb
	{
		get
		{
			return m_bDisableThumb;
		}
		set
		{
			if (m_bDisableThumb != value)
			{
				m_bDisableThumb = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool DisableMinimumArrow
	{
		get
		{
			return m_bDisableMin;
		}
		set
		{
			if (m_bDisableMin != value)
			{
				m_bDisableMin = value;
				Invalidate();
			}
		}
	}

	[RefreshProperties(RefreshProperties.Repaint)]
	[DefaultValue(false)]
	[Category("Behavior")]
	public bool DisableMaximumArrow
	{
		get
		{
			return m_bDisableMax;
		}
		set
		{
			if (m_bDisableMax != value)
			{
				m_bDisableMax = value;
				Invalidate();
			}
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Category("Behavior")]
	public ControlsCollection ControlsBefore => m_controlsBefore;

	[Category("Behavior")]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ControlsCollection ControlsAfter => m_controlsAfter;

	[Description("True - say control to keep System settings instead of user defined, otherwise False.")]
	[Category("Behavior")]
	[DefaultValue(false)]
	[RefreshProperties(RefreshProperties.Repaint)]
	public bool KeepSystemMetrics
	{
		get
		{
			return m_bKeepSystemmetrics;
		}
		set
		{
			if (value != m_bKeepSystemmetrics)
			{
				m_bKeepSystemmetrics = value;
				if (KeepSystemMetrics)
				{
					ResetToSystemMetrics();
				}
			}
		}
	}

	internal virtual IRenderer InternalRender
	{
		get
		{
			return m_renderer;
		}
		set
		{
			if (value != null && value != m_renderer)
			{
				m_renderer = value;
			}
		}
	}

	protected bool IsRtl => RightToLeft == RightToLeft.Yes;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public new ControlCollection Controls => base.Controls;

	[Description("Specifies the color scheme (Silver, Blue, Black).")]
	public Office2007ColorScheme OfficeColorScheme
	{
		get
		{
			return m_OfficeColorScheme;
		}
		set
		{
			if (m_OfficeColorScheme != value)
			{
				m_OfficeColorScheme = value;
				OnVisualStyleChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Specifies the context menu provider for the ScrollBarCustomDraw control.")]
	[Category("Behavior")]
	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public IContextMenuProvider ContextMenuProvider
	{
		get
		{
			return m_MenuProvider;
		}
		set
		{
			if (m_MenuProvider != value)
			{
				m_MenuProvider = value;
			}
		}
	}

	[Category("Behavior")]
	[Description("Indicates whether scrollbar should be refreshed on each value change. If set to false, scrollbar is invalidated only \r\n\t\t\tand therefore is visually refreshed after processing all scrolling messages.")]
	[DefaultValue(false)]
	public bool RefreshOnValueChange
	{
		get
		{
			return m_bRefreshOnValueChange;
		}
		set
		{
			m_bRefreshOnValueChange = value;
		}
	}

	protected bool AttachedToListView
	{
		get
		{
			ListView listView = ((m_owner != null) ? (m_owner.AttachedTo as ListView) : null);
			if (listView != null)
			{
				return listView.View == View.List;
			}
			return false;
		}
	}

	[Category("Property changed")]
	public event EventHandler LargeChangeChanged
	{
		add
		{
			base.Events.AddHandler(EventLargeChangeChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventLargeChangeChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler MaximumChanged
	{
		add
		{
			base.Events.AddHandler(EventMaximumChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventMaximumChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler MinimumChanged
	{
		add
		{
			base.Events.AddHandler(EventMinimumChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventMinimumChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler SmallChangeChanged
	{
		add
		{
			base.Events.AddHandler(EventSmallChangeChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventSmallChangeChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler ValueChanged
	{
		add
		{
			base.Events.AddHandler(EventValueChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventValueChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler VisualStyleChanged
	{
		add
		{
			base.Events.AddHandler(EventVisualStyleChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventVisualStyleChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler ColorSchemeChanged
	{
		add
		{
			base.Events.AddHandler(EventColorSchemeChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventColorSchemeChanged, value);
		}
	}

	[Category("Property changed")]
	public event EventHandler ThemeEnabledChanged
	{
		add
		{
			base.Events.AddHandler(EventThemeEnabledChanged, value);
		}
		remove
		{
			base.Events.RemoveHandler(EventThemeEnabledChanged, value);
		}
	}

	internal ScrollBarCustomDraw(ScrollersFrame owner)
	{
		m_owner = owner;
		SetStyle(ControlStyles.UserPaint | ControlStyles.ResizeRedraw | ControlStyles.Selectable | ControlStyles.AllPaintingInWmPaint | ControlStyles.DoubleBuffer, value: true);
		m_renderer = new BasicRenderer(this);
		timerDelegate = timer_Tick;
		m_controlsAfter = new ControlsCollection(this, OnAfterControlConfigure);
		m_controlsBefore = new ControlsCollection(this, OnBeforeControlConfigure);
		m_MenuProvider = MenuProviderFactory.CreateContextMenuProvider();
		OnVisualStyleChanged(EventArgs.Empty);
	}

	public ScrollBarCustomDraw()
		: this(null)
	{
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_renderer = null;
			if (m_timer != null)
			{
				m_timer.Dispose();
				m_timer = null;
			}
			if (m_controlsAfter != null)
			{
				DisposeControls(m_controlsAfter);
				m_controlsAfter.Clear();
				m_controlsAfter = null;
			}
			if (m_controlsBefore != null)
			{
				DisposeControls(m_controlsBefore);
				m_controlsBefore.Clear();
				m_controlsBefore = null;
			}
			m_owner = null;
		}
		base.Dispose(disposing);
	}

	protected bool ShouldSerializeControlsBefore()
	{
		if (ControlsBefore == null)
		{
			return false;
		}
		return ControlsBefore.Count > 0;
	}

	protected bool ShouldSerializeControlsAfter()
	{
		if (ControlsAfter == null)
		{
			return false;
		}
		return ControlsAfter.Count > 0;
	}

	private void InitializeMenu(IContextMenuProvider menu)
	{
		bool flag = this is VScrollBarCustomDraw;
		menu.AddContextMenuItem(string.Empty, SR.GetString("ScrollHere"), OnScrollHereClick);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("Top") : SR.GetString("LeftEdge"), OnMinimumClick);
		menu.SetContextMenuItemSeparator(flag ? SR.GetString("Top") : SR.GetString("LeftEdge"), binsertseparator: true);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("Bottom") : SR.GetString("RightEdge"), OnMaximumClick);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("PageUp") : SR.GetString("PageLeft"), OnPageUpLeftClick);
		menu.SetContextMenuItemSeparator(flag ? SR.GetString("PageUp") : SR.GetString("PageLeft"), binsertseparator: true);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("PageDown") : SR.GetString("PageRight"), OnPageDownRightClick);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("ScrollUp") : SR.GetString("ScrollLeft"), OnScrollUpLeftClick);
		menu.SetContextMenuItemSeparator(flag ? SR.GetString("ScrollUp") : SR.GetString("ScrollLeft"), binsertseparator: true);
		menu.AddContextMenuItem(string.Empty, flag ? SR.GetString("ScrollDown") : SR.GetString("ScrollRight"), OnScrollDownRightClick);
	}

	protected virtual void OnBeforeControlConfigure(Control control)
	{
		control.Dock = GetBeforeControlsDockStyle();
	}

	protected virtual void OnAfterControlConfigure(Control control)
	{
		control.Dock = GetAfterControlsDockStyle();
	}

	protected override void OnLayout(LayoutEventArgs levent)
	{
		Layout();
		base.OnLayout(levent);
	}

	public new virtual void Layout()
	{
		if (!m_IsSetControlsVisiblity)
		{
			ValidateControlsVisibility();
		}
		RecalculateScroll();
		Invalidate();
	}

	protected override void OnControlAdded(ControlEventArgs e)
	{
		if (!m_IsSetControlsVisiblity)
		{
			ValidateControlsVisibility();
		}
		base.OnControlAdded(e);
	}

	protected override void OnControlRemoved(ControlEventArgs e)
	{
		if (!m_IsSetControlsVisiblity)
		{
			if (m_controlsAfter != null)
			{
				m_controlsAfter.Remove(e.Control);
			}
			if (m_controlsBefore != null)
			{
				m_controlsBefore.Remove(e.Control);
			}
			ValidateControlsVisibility();
		}
		base.OnControlRemoved(e);
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		base.OnPaint(e);
		Graphics graphics = e.Graphics;
		ButtonState buttonState = ((!base.Enabled || DisableThumb) ? ButtonState.Inactive : ((m_pressedZone == PressedZone.ThumbLeftZone && m_movedZone == MovedZone.ThumbLeftZone) ? ButtonState.Pushed : ButtonState.Normal));
		ButtonState buttonState2 = ((!base.Enabled || DisableThumb) ? ButtonState.Inactive : ((m_pressedZone == PressedZone.ThumbRightZone && m_movedZone == MovedZone.ThumbRightZone) ? ButtonState.Pushed : ButtonState.Normal));
		InternalRender.DrawBackground(graphics, m_rects[3], buttonState);
		InternalRender.DrawBackground(graphics, m_rects[4], buttonState2);
		bool flag = false;
		bool flag2 = false;
		bool flag3 = false;
		if (VisualStyle == ScrollBarCustomDrawStyles.Office2007 || VisualStyle == ScrollBarCustomDrawStyles.Office2007Generic)
		{
			flag = m_selectedZone == PressedZone.Thumb || m_selectedZone == PressedZone.ThumbLeftZone || m_selectedZone == PressedZone.ThumbRightZone;
			flag2 = flag || m_selectedZone == PressedZone.MaxButton;
			flag3 = flag || m_selectedZone == PressedZone.MinButton;
		}
		ButtonState buttonState3 = ((!base.Enabled || DisableMinimumArrow || flag2) ? ButtonState.Inactive : ((m_pressedZone == PressedZone.MinButton && m_movedZone == MovedZone.MinButton) ? ButtonState.Pushed : ((m_selectedZone == PressedZone.MinButton) ? ButtonState.Checked : ButtonState.Normal)));
		InternalRender.DrawArrowButton(graphics, m_rects[0], GetMinButton(), buttonState3);
		ButtonState buttonState4 = ((!base.Enabled || DisableMaximumArrow || flag3) ? ButtonState.Inactive : ((m_pressedZone == PressedZone.MaxButton && m_movedZone == MovedZone.MaxButton) ? ButtonState.Pushed : ((m_selectedZone == PressedZone.MaxButton) ? ButtonState.Checked : ButtonState.Normal)));
		InternalRender.DrawArrowButton(graphics, m_rects[1], GetMaxButton(), buttonState4);
		m_bUpdateStates = buttonState != ButtonState.Normal || buttonState2 != ButtonState.Normal || buttonState3 != ButtonState.Normal || buttonState4 != ButtonState.Normal;
		ButtonState buttonState5 = ((!base.Enabled || DisableThumb) ? ButtonState.Inactive : ((m_pressedZone == PressedZone.Thumb) ? ButtonState.Pushed : ((m_selectedZone == PressedZone.Thumb) ? ButtonState.Checked : ButtonState.Normal)));
		InternalRender.DrawThumb(graphics, m_rects[2], buttonState5);
	}

	protected override void OnSizeChanged(EventArgs e)
	{
		base.OnSizeChanged(e);
		RecalculateScroll();
		if (KeepSystemMetrics)
		{
			ResetToSystemMetrics();
		}
	}

	protected virtual void ResetToSystemMetrics()
	{
	}

	protected virtual void OnLargeChangeChanged(EventArgs e)
	{
		if (base.Events[EventLargeChangeChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnSmallChangeChanged(EventArgs e)
	{
		if (base.Events[EventSmallChangeChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnMaximumChanged(EventArgs e)
	{
		if (base.Events[EventMaximumChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnMinimumChanged(EventArgs e)
	{
		if (base.Events[EventMinimumChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	internal virtual void OnVisualStyleChanged(EventArgs e)
	{
		switch (VisualStyle)
		{
		case ScrollBarCustomDrawStyles.Classic:
			InternalRender = new ClassicRenderer(this);
			break;
		case ScrollBarCustomDrawStyles.WindowsXP:
			InternalRender = new WindowsXPRenderer(this);
			break;
		case ScrollBarCustomDrawStyles.Office2007:
		case ScrollBarCustomDrawStyles.Office2007Generic:
			InternalRender = new Office2007Renderer(this, ColorTableOffice2007.GetColorTable(VisualStyle, OfficeColorScheme));
			break;
		}
		Invalidate();
		if (base.Events[EventVisualStyleChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnThemeEnabledChanged(EventArgs e)
	{
		if (base.Events[EventThemeEnabledChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void OnValueChanged(EventArgs e)
	{
		if (base.Events[EventValueChanged] is EventHandler eventHandler)
		{
			eventHandler(this, e);
		}
	}

	protected virtual void ValidateControlsVisibility()
	{
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			m_pressedZone = HitTest(e.X, e.Y);
			DefineMovedZone(e.X, e.Y);
			int num = 0;
			switch (m_pressedZone)
			{
			case PressedZone.MinButton:
			case PressedZone.MaxButton:
			{
				ScrollEventType type2 = ((m_pressedZone == PressedZone.MaxButton) ? ScrollEventType.SmallIncrement : ScrollEventType.SmallDecrement);
				num = ((m_pressedZone == PressedZone.MaxButton) ? 1 : (-1));
				if (IsRtl)
				{
					num = -num;
				}
				Value += num * m_smallChange;
				OnScroll(new ScrollEventArgs(type2, m_value));
				m_timer = new System.Threading.Timer(timerDelegate, null, 500, 50);
				break;
			}
			case PressedZone.ThumbLeftZone:
			case PressedZone.ThumbRightZone:
			{
				ScrollEventType type = ((m_pressedZone == PressedZone.ThumbLeftZone) ? ScrollEventType.LargeDecrement : ScrollEventType.LargeIncrement);
				num = ((m_pressedZone == PressedZone.ThumbRightZone) ? 1 : (-1));
				if (IsRtl)
				{
					num *= -1;
				}
				Value += num * m_largeChange;
				OnScroll(new ScrollEventArgs(type, m_value));
				m_timer = new System.Threading.Timer(timerDelegate, null, 500, 50);
				break;
			}
			case PressedZone.Thumb:
				CalculatedDelta(e.X, e.Y);
				break;
			}
		}
		base.OnMouseDown(e);
	}

	protected override void OnRightToLeftChanged(EventArgs e)
	{
		base.OnRightToLeftChanged(e);
		SuspendLayout();
		foreach (Control item in ControlsAfter)
		{
			item.Dock = GetAfterControlsDockStyle();
		}
		foreach (Control item2 in ControlsBefore)
		{
			item2.Dock = GetBeforeControlsDockStyle();
		}
		ResumeLayout(performLayout: true);
		RecalculateScroll();
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Left)
		{
			if (m_pressedZone == PressedZone.Thumb && (!IsRtl || !AttachedToListView))
			{
				SetInnerValue(m_value);
				OnScroll(new ScrollEventArgs(ScrollEventType.ThumbPosition, m_value));
				Invalidate();
			}
			m_pressedZone = PressedZone.None;
			if (m_timer != null)
			{
				m_timer.Dispose();
			}
			Invalidate();
		}
		Rectangle rectangle = new Rectangle(Point.Empty, base.Size);
		if (e.Button == MouseButtons.Right && rectangle.Contains(new Point(e.X, e.Y)))
		{
			m_ptLocation = new Point(e.X, e.Y);
			ShowContextMenu(this);
		}
		base.OnMouseUp(e);
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		if (m_pressedZone == PressedZone.Thumb && e.Button == MouseButtons.Left)
		{
			OnMovedPositionChanged(e.X, e.Y);
			int num = PointToValue(m_rects[2].X, m_rects[2].Y);
			if (m_value != num)
			{
				m_value = num;
				if (IsRtl && AttachedToListView)
				{
					num = m_min + m_max - num;
					OnScroll(new ScrollEventArgs(ScrollEventType.ThumbTrack, num));
				}
				else
				{
					OnScroll(new ScrollEventArgs(ScrollEventType.ThumbTrack, m_value));
					OnValueChanged(EventArgs.Empty);
				}
			}
			Invalidate();
		}
		else if (m_pressedZone == PressedZone.ThumbLeftZone || m_pressedZone == PressedZone.ThumbRightZone)
		{
			DefineMovedZone(e.X, e.Y);
		}
		else if (m_pressedZone == PressedZone.None)
		{
			m_selectedZone = HitTest(e.X, e.Y);
			if (m_cachedSelectedZone == PressedZone.None)
			{
				m_cachedSelectedZone = m_selectedZone;
			}
			else
			{
				Invalidate(m_rects[(int)m_cachedSelectedZone]);
			}
			m_cachedSelectedZone = m_selectedZone;
		}
		if (VisualStyle == ScrollBarCustomDrawStyles.Office2007 || VisualStyle == ScrollBarCustomDrawStyles.Office2007Generic)
		{
			Invalidate(m_rects[0]);
			Invalidate(m_rects[1]);
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		if (m_cachedSelectedZone != PressedZone.None)
		{
			int selectedZone = (int)m_selectedZone;
			if (selectedZone > 0 && selectedZone < m_rects.Length)
			{
				Invalidate(m_rects[(int)m_selectedZone]);
			}
		}
		if (VisualStyle == ScrollBarCustomDrawStyles.Office2007 || VisualStyle == ScrollBarCustomDrawStyles.Office2007Generic)
		{
			Invalidate(m_rects[0]);
			Invalidate(m_rects[1]);
		}
		m_selectedZone = PressedZone.None;
		base.OnMouseLeave(e);
	}

	protected override void OnSystemColorsChanged(EventArgs e)
	{
		ScrollBarCustomDrawStyles visualStyle = VisualStyle;
		if (visualStyle == ScrollBarCustomDrawStyles.WindowsXP)
		{
			InternalRender = new WindowsXPRenderer(this);
			(InternalRender as WindowsXPRenderer).SetColorScheme();
		}
		base.OnSystemColorsChanged(e);
	}

	protected virtual void OnMovedPositionChanged(int x, int y)
	{
	}

	protected virtual ScrollButton GetMinButton()
	{
		return ScrollButton.Up;
	}

	protected virtual ScrollButton GetMaxButton()
	{
		return ScrollButton.Right;
	}

	protected virtual PressedZone HitTest(int x, int y)
	{
		int i = 0;
		for (int num = m_rects.Length; i < num; i++)
		{
			if (m_rects[i].Contains(x, y))
			{
				return (PressedZone)i;
			}
		}
		return PressedZone.None;
	}

	protected internal virtual void RecalculateScroll()
	{
		RecalculateArrow();
		RecalculateThumb();
	}

	protected virtual void RecalculateArrow()
	{
	}

	protected virtual void RecalculateThumb()
	{
	}

	protected virtual bool IsControlsVisible()
	{
		return true;
	}

	protected virtual DockStyle GetAfterControlsDockStyle()
	{
		return DockStyle.Right;
	}

	protected virtual DockStyle GetBeforeControlsDockStyle()
	{
		return DockStyle.Left;
	}

	protected virtual void CalculatedDelta(int x, int y)
	{
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	public virtual int PointToValue(int x, int y)
	{
		return 0;
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	[Obsolete]
	public virtual Point ValueToPoint(int value)
	{
		return Point.Empty;
	}

	public void DropHandle()
	{
		DestroyHandle();
	}

	public void SetSafeSmallChange(int value)
	{
		if (m_smallChange != value)
		{
			if (value > m_largeChange)
			{
				m_smallChange = m_largeChange;
			}
			else
			{
				m_smallChange = value;
			}
			OnSmallChangeChanged(EventArgs.Empty);
			Invalidate();
		}
	}

	private void timer_Tick(object sender)
	{
		EventHandler eventHandler = null;
		switch (m_pressedZone)
		{
		case PressedZone.ThumbLeftZone:
			eventHandler = OnTickForThumbMin;
			break;
		case PressedZone.ThumbRightZone:
			eventHandler = OnTickForThumbMaxZone;
			break;
		case PressedZone.MinButton:
			eventHandler = OnTickForMinButton;
			break;
		case PressedZone.MaxButton:
			eventHandler = OnTickForMaxButton;
			break;
		}
		if (eventHandler != null)
		{
			if (base.InvokeRequired)
			{
				BeginInvoke(eventHandler, this, EventArgs.Empty);
			}
			else
			{
				eventHandler(this, EventArgs.Empty);
			}
		}
	}

	private void OnTickForThumbMin(object sender, EventArgs e)
	{
		DefineMovedZone(PointToClient(Cursor.Position));
		if (m_movedZone == MovedZone.ThumbLeftZone)
		{
			int num = 1;
			if (IsRtl)
			{
				num *= -1;
			}
			Value -= num * m_largeChange;
			OnScroll(new ScrollEventArgs(ScrollEventType.LargeDecrement, m_value));
		}
		else if (m_bUpdateStates)
		{
			Invalidate();
		}
	}

	private void OnTickForThumbMaxZone(object sender, EventArgs e)
	{
		DefineMovedZone(PointToClient(Cursor.Position));
		if (m_movedZone == MovedZone.ThumbRightZone)
		{
			int num = 1;
			if (IsRtl)
			{
				num *= -1;
			}
			Value += num * m_largeChange;
			OnScroll(new ScrollEventArgs(ScrollEventType.LargeIncrement, m_value));
		}
		else if (m_bUpdateStates)
		{
			Invalidate();
		}
	}

	private void OnTickForMinButton(object sender, EventArgs e)
	{
		DefineMovedZone(PointToClient(Cursor.Position));
		if (m_movedZone == MovedZone.MinButton)
		{
			int num = 1;
			if (IsRtl)
			{
				num *= -1;
			}
			Value -= num * m_smallChange;
			OnScroll(new ScrollEventArgs(ScrollEventType.SmallDecrement, m_value));
		}
		else if (m_bUpdateStates)
		{
			Invalidate();
		}
	}

	private void OnTickForMaxButton(object sender, EventArgs e)
	{
		DefineMovedZone(PointToClient(Cursor.Position));
		if (m_movedZone == MovedZone.MaxButton)
		{
			int num = 1;
			if (IsRtl)
			{
				num *= -1;
			}
			Value += num * m_smallChange;
			OnScroll(new ScrollEventArgs(ScrollEventType.SmallIncrement, m_value));
		}
		else if (m_bUpdateStates)
		{
			Invalidate();
		}
	}

	protected virtual void OnScrollHereClick(object sender, EventArgs e)
	{
	}

	protected virtual void OnMinimumClick(object sender, EventArgs e)
	{
		Value = Minimum;
		OnScroll(new ScrollEventArgs(ScrollEventType.First, m_value));
	}

	protected virtual void OnMaximumClick(object sender, EventArgs e)
	{
		Value = Maximum;
		OnScroll(new ScrollEventArgs(ScrollEventType.First, m_value));
	}

	protected virtual void OnPageUpLeftClick(object sender, EventArgs e)
	{
		OnScroll(new ScrollEventArgs(ScrollEventType.LargeDecrement, m_value));
	}

	protected virtual void OnPageDownRightClick(object sender, EventArgs e)
	{
		OnScroll(new ScrollEventArgs(ScrollEventType.LargeIncrement, m_value));
	}

	protected virtual void OnScrollUpLeftClick(object sender, EventArgs e)
	{
		Value -= m_smallChange;
		OnScroll(new ScrollEventArgs(ScrollEventType.SmallDecrement, m_value));
	}

	protected virtual void OnScrollDownRightClick(object sender, EventArgs e)
	{
		Value += m_smallChange;
		OnScroll(new ScrollEventArgs(ScrollEventType.SmallIncrement, m_value));
	}

	protected virtual void OnBeforeControlConfigure(object sender, ConfigureControlEventArgs e)
	{
		if (e != null && e.Control != null)
		{
			e.Control.Dock = GetBeforeControlsDockStyle();
		}
	}

	protected virtual void OnAfterControlConfigure(object sender, ConfigureControlEventArgs e)
	{
		if (e != null && e.Control != null)
		{
			e.Control.Dock = GetAfterControlsDockStyle();
		}
	}

	protected Size Accumulate(ControlsCollection collection)
	{
		Size result = default(Size);
		if (collection != null)
		{
			foreach (Control item in collection)
			{
				if (base.DesignMode || item.Visible)
				{
					result.Width += item.Width;
					result.Height += item.Height;
				}
			}
		}
		return result;
	}

	protected void SetControlsLayoutVisibility(bool hide)
	{
		if (ControlsAfter != null)
		{
			ControlsAfter.HideControls(hide);
		}
		if (ControlsAfter != null)
		{
			ControlsBefore.HideControls(hide);
		}
	}

	private void DefineMovedZone(Point p)
	{
		DefineMovedZone(p.X, p.Y);
	}

	private void DefineMovedZone(int x, int y)
	{
		m_movedZone = MovedZone.Out;
		int i = 0;
		for (int num = m_rects.Length; i < num; i++)
		{
			if (m_rects[i].Contains(x, y))
			{
				m_movedZone = (MovedZone)i;
			}
		}
	}

	private void SetInnerValue(int value)
	{
		if (value <= m_min)
		{
			m_value = m_min;
		}
		else
		{
			m_value = ((value <= m_max - m_largeChange) ? value : (m_max - m_largeChange + 1));
		}
		RecalculateThumb();
	}

	private void DisposeControls(ControlsCollection controls)
	{
		int count = controls.Count;
		for (int i = 0; i < count; i++)
		{
			controls[0].Dispose();
		}
	}

	private void ShowContextMenu(ScrollBarCustomDraw scrollBar)
	{
		IContextMenuProvider contextMenuProvider = ContextMenuProvider;
		contextMenuProvider.InitializeContextMenu();
		if (XPThemes.IsThemedOS && XPThemes.IsThemeActive && VisualStyle == ScrollBarCustomDrawStyles.Office2007)
		{
			contextMenuProvider.SetVisualStyle(Syncfusion.Windows.Forms.VisualStyle.Office2007);
		}
		InitializeMenu(contextMenuProvider);
		contextMenuProvider.ShowContextMenu(scrollBar, PointToClient(Cursor.Position));
	}
}
