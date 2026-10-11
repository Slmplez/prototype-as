using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[Designer(typeof(TrackBarExDesigner))]
[Description("TrackBar control extended with increase and decrease buttons.")]
[ToolboxBitmap(typeof(TrackBarEx), "ToolboxIcons.TrackBarEx.bmp")]
[TypeConverter(typeof(TrackBarExConverter))]
public class TrackBarEx : Control
{
	protected enum TrackBarExArea
	{
		None,
		DecreaseButton,
		IncreaseButton,
		LargeDecrease,
		LargeIncrease,
		Slider
	}

	private enum ItemState
	{
		Default,
		Highlighted,
		Pushed
	}

	private const int CHANNEL_HEIGHT = 4;

	private const int MIN_HEIGHT = 20;

	private const int LARGE_CHANGE = 5;

	private const int MAXIMUM = 10;

	private const int MINIMUM = 0;

	private const int SMALL_CHANGE = 1;

	private const int TIMER_INT = 100;

	private static readonly Size DECR_BUTTON_SIZE;

	private static readonly Size INCR_BUTTON_SIZE;

	private static readonly Size SLIDER_SIZE;

	private static readonly Color TRACK_BAR_GRADIENT_START;

	private static readonly Color TRACK_BAR_GRADIENT_END;

	private static readonly Color BUTTON_COLOR;

	private static readonly Color HIGHLIGHTED_BUTTON_COLOR;

	private static readonly Color PUSHED_BUTTON_COLOR;

	private static readonly ControlStyles PAINT_STYLES;

	private bool m_bShowButtons = true;

	private int m_channelHeight = 4;

	private Size m_decrButtonSize = DECR_BUTTON_SIZE;

	private Size m_incrButtonSize = INCR_BUTTON_SIZE;

	private int m_setHeight;

	private int m_largeChange = 5;

	private int m_maximum = 10;

	private int m_minimum;

	private int m_smallChange = 1;

	private int m_value;

	private Size m_sliderSize = SLIDER_SIZE;

	private Timer m_timer;

	private bool m_bSliderMoving;

	private TrackBarExArea m_curArea;

	private TrackBarExArea m_pushedItem;

	private bool m_bTransparent;

	private int m_timerInt = 100;

	private bool m_bShowFocusRect = true;

	private Color m_clrTrackBarGradientStart = TRACK_BAR_GRADIENT_START;

	private Color m_clrTrackBarGradientEnd = TRACK_BAR_GRADIENT_END;

	private Color m_clrButton = BUTTON_COLOR;

	private Color m_clrHighlightedButton = HIGHLIGHTED_BUTTON_COLOR;

	private Color m_clrPushedButton = PUSHED_BUTTON_COLOR;

	private Orientation m_orientation;

	private static Blend _sliderBlend;

	private static Blend _buttonsBlend;

	[Description("Indicates whether buttons should be shown.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool ShowButtons
	{
		get
		{
			return m_bShowButtons;
		}
		set
		{
			if (m_bShowButtons != value)
			{
				m_bShowButtons = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Height of channel.")]
	[DefaultValue(4)]
	public int ChannelHeight
	{
		get
		{
			return m_channelHeight;
		}
		set
		{
			if (m_channelHeight != value)
			{
				m_channelHeight = value;
				Invalidate();
			}
		}
	}

	[Description("Size of decrease button.")]
	[Category("Appearance")]
	public Size DecreaseButtonSize
	{
		get
		{
			Size result = DecreaseButtonSizeInternal;
			if (Orientation == Orientation.Vertical)
			{
				result = new Size(result.Height, result.Width);
			}
			return result;
		}
		set
		{
			if (Orientation == Orientation.Vertical)
			{
				value = new Size(value.Height, value.Width);
			}
			DecreaseButtonSizeInternal = value;
		}
	}

	[Category("Appearance")]
	[Description("Size of increase button.")]
	public Size IncreaseButtonSize
	{
		get
		{
			Size result = IncreaseButtonSizeInternal;
			if (Orientation == Orientation.Vertical)
			{
				result = new Size(result.Height, result.Width);
			}
			return result;
		}
		set
		{
			if (Orientation == Orientation.Vertical)
			{
				value = new Size(value.Height, value.Width);
			}
			IncreaseButtonSizeInternal = value;
		}
	}

	[DefaultValue(5)]
	[Description("Large change of TrackBar value.")]
	[Category("Behavior")]
	public int LargeChange
	{
		get
		{
			return m_largeChange;
		}
		set
		{
			m_largeChange = value;
		}
	}

	[Category("Behavior")]
	[DefaultValue(1)]
	[Description("Small change of TrackBar value.")]
	public int SmallChange
	{
		get
		{
			return m_smallChange;
		}
		set
		{
			m_smallChange = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Category("Behavior")]
	[Description("Minimum value of TrackBar.")]
	[DefaultValue(0)]
	public int Minimum
	{
		get
		{
			return m_minimum;
		}
		set
		{
			if (m_minimum != value)
			{
				if (value < m_maximum)
				{
					m_minimum = value;
				}
				else
				{
					m_minimum = m_maximum - 1;
				}
				if (m_value < m_minimum)
				{
					Value = m_minimum;
				}
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(10)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Description("Maximum value of TrackBar.")]
	public int Maximum
	{
		get
		{
			return m_maximum;
		}
		set
		{
			if (m_maximum != value)
			{
				if (value > m_minimum)
				{
					m_maximum = value;
				}
				else
				{
					m_maximum = m_minimum + 1;
				}
				if (m_value > m_maximum)
				{
					Value = m_maximum;
				}
				Invalidate();
			}
		}
	}

	[Description("Value of TrackBar position.")]
	[Category("Behavior")]
	public int Value
	{
		get
		{
			return m_value;
		}
		set
		{
			value = GetValidValue(value);
			if (m_value != value)
			{
				InvalidateSlider();
				m_value = value;
				InvalidateSlider();
				Update();
				OnValueChanged();
			}
		}
	}

	[Description("Size of slider.")]
	[Category("Appearance")]
	public Size SliderSize
	{
		get
		{
			return m_sliderSize;
		}
		set
		{
			if (m_sliderSize != value)
			{
				m_sliderSize = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(false)]
	[Category("Appearance")]
	[Description("Indicates whether control background should be transparent.")]
	public bool Transparent
	{
		get
		{
			return m_bTransparent;
		}
		set
		{
			if (m_bTransparent != value)
			{
				m_bTransparent = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(200)]
	[Description("Interval for timer.")]
	[Category("Behavior")]
	public int TimerInterval
	{
		get
		{
			return m_timerInt;
		}
		set
		{
			m_timerInt = value;
		}
	}

	[Description("Indicates whether focus rect should be shown.")]
	[DefaultValue(true)]
	[Category("Appearance")]
	public bool ShowFocusRect
	{
		get
		{
			return m_bShowFocusRect;
		}
		set
		{
			if (m_bShowFocusRect != value)
			{
				m_bShowFocusRect = value;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[Description("Start color of trackbar gradient.")]
	public Color TrackBarGradientStart
	{
		get
		{
			return m_clrTrackBarGradientStart;
		}
		set
		{
			if (m_clrTrackBarGradientStart != value)
			{
				m_clrTrackBarGradientStart = value;
				if (!m_bTransparent)
				{
					Invalidate();
				}
			}
		}
	}

	[Category("Appearance")]
	[Description("End color of trackbar gradient.")]
	public Color TrackBarGradientEnd
	{
		get
		{
			return m_clrTrackBarGradientEnd;
		}
		set
		{
			if (m_clrTrackBarGradientEnd != value)
			{
				m_clrTrackBarGradientEnd = value;
				if (!m_bTransparent)
				{
					Invalidate();
				}
			}
		}
	}

	[Description("Color of the buttons.")]
	[Category("Appearance")]
	public Color ButtonColor
	{
		get
		{
			return m_clrButton;
		}
		set
		{
			if (m_clrButton != value)
			{
				m_clrButton = value;
				InvalidateArea(TrackBarExArea.DecreaseButton);
				InvalidateArea(TrackBarExArea.IncreaseButton);
				InvalidateArea(TrackBarExArea.Slider);
			}
		}
	}

	[Category("Appearance")]
	[Description("Color of highlighted buttons.")]
	public Color HighlightedButtonColor
	{
		get
		{
			return m_clrHighlightedButton;
		}
		set
		{
			if (m_clrHighlightedButton != value)
			{
				m_clrHighlightedButton = value;
				InvalidateArea(TrackBarExArea.DecreaseButton);
				InvalidateArea(TrackBarExArea.IncreaseButton);
				InvalidateArea(TrackBarExArea.Slider);
			}
		}
	}

	[Description("Color of pushed buttons.")]
	[Category("Appearance")]
	public Color PushedButtonEndColor
	{
		get
		{
			return m_clrPushedButton;
		}
		set
		{
			if (m_clrPushedButton != value)
			{
				m_clrPushedButton = value;
				InvalidateArea(TrackBarExArea.DecreaseButton);
				InvalidateArea(TrackBarExArea.IncreaseButton);
				InvalidateArea(TrackBarExArea.Slider);
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override Color BackColor
	{
		get
		{
			return Color.Transparent;
		}
		set
		{
			base.BackColor = value;
		}
	}

	[Description("Specify the orientation of TrackBarEx control.")]
	[DefaultValue(typeof(Orientation), "Horizontal")]
	[Category("Behavior")]
	public Orientation Orientation
	{
		get
		{
			return m_orientation;
		}
		set
		{
			if (m_orientation != value)
			{
				m_orientation = value;
				Size size = base.Size;
				int num = size.Height;
				size.Height = size.Width;
				size.Width = num;
				base.Size = size;
				Invalidate();
			}
		}
	}

	internal Rectangle DisplayRectangleInternal
	{
		get
		{
			Rectangle displayRectangle = DisplayRectangle;
			if (m_orientation == Orientation.Vertical)
			{
				int num = displayRectangle.Width;
				displayRectangle.Width = displayRectangle.Height;
				displayRectangle.Height = num;
			}
			return displayRectangle;
		}
	}

	internal Size DecreaseButtonSizeInternal
	{
		get
		{
			return m_decrButtonSize;
		}
		set
		{
			if (m_decrButtonSize != value)
			{
				m_decrButtonSize = value;
				Invalidate();
			}
		}
	}

	internal Size IncreaseButtonSizeInternal
	{
		get
		{
			return m_incrButtonSize;
		}
		set
		{
			if (m_incrButtonSize != value)
			{
				m_incrButtonSize = value;
				Invalidate();
			}
		}
	}

	protected virtual Color ButtonBorderColor => Color.FromArgb(66, 109, 165);

	protected virtual Color ButtonStartColor
	{
		get
		{
			if (base.Enabled)
			{
				return Color.FromArgb(248, 248, 255);
			}
			return Color.FromArgb(150, Color.FromArgb(248, 248, 255));
		}
	}

	protected virtual Color ButtonHighlightedStartColor
	{
		get
		{
			if (base.Enabled)
			{
				return Color.FromArgb(248, 248, 255);
			}
			return Color.FromArgb(100, Color.FromArgb(248, 248, 255));
		}
	}

	protected virtual Color ButtonSignColor
	{
		get
		{
			if (base.Enabled)
			{
				return Color.FromArgb(78, 97, 115);
			}
			return Color.FromArgb(100, Color.FromArgb(78, 97, 115));
		}
	}

	protected virtual Rectangle DecreaseButtonBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			int num = m_decrButtonSize.Width;
			int num2 = m_decrButtonSize.Height;
			int num3 = ((RightToLeft != RightToLeft.Yes) ? displayRectangleInternal.X : (displayRectangleInternal.Right - num));
			int num4 = displayRectangleInternal.Y + (displayRectangleInternal.Height - num2) / 2;
			return new Rectangle(num3, num4, num, num2);
		}
	}

	protected virtual Rectangle IncreaseButtonBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			int num = m_incrButtonSize.Width;
			int num2 = m_incrButtonSize.Height;
			int num3 = ((RightToLeft != RightToLeft.Yes) ? (displayRectangleInternal.Right - num) : displayRectangleInternal.X);
			int num4 = displayRectangleInternal.Y + (displayRectangleInternal.Height - num2) / 2;
			return new Rectangle(num3, num4, num, num2);
		}
	}

	protected virtual Rectangle ChannelBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			int num = displayRectangleInternal.X + m_sliderSize.Width / 2 + ((RightToLeft != RightToLeft.Yes) ? m_decrButtonSize.Width : m_incrButtonSize.Width);
			int num2 = displayRectangleInternal.Y + (displayRectangleInternal.Height - m_channelHeight) / 2;
			int num3 = displayRectangleInternal.Width - (m_decrButtonSize.Width + m_incrButtonSize.Width + m_sliderSize.Width);
			return new Rectangle(num, num2, num3, m_channelHeight);
		}
	}

	protected virtual Rectangle SliderBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			Rectangle channelBounds = ChannelBounds;
			int num = channelBounds.Width * (m_value - m_minimum) / (m_maximum - m_minimum);
			int num2 = channelBounds.X - m_sliderSize.Width / 2 + ((RightToLeft != RightToLeft.Yes) ? num : (channelBounds.Width - num));
			int num3 = displayRectangleInternal.Y + (displayRectangleInternal.Height - m_sliderSize.Height) / 2;
			return new Rectangle(new Point(num2, num3), m_sliderSize);
		}
	}

	protected virtual Rectangle SliderActionBounds
	{
		get
		{
			Rectangle sliderBounds = SliderBounds;
			sliderBounds.Inflate(2, 1);
			return sliderBounds;
		}
	}

	protected TrackBarExArea CurrentArea
	{
		get
		{
			return m_curArea;
		}
		set
		{
			if (m_curArea != value)
			{
				TrackBarExArea curArea = m_curArea;
				m_curArea = value;
				InvalidateArea(curArea);
				InvalidateArea(m_curArea);
			}
		}
	}

	protected TrackBarExArea PushedItem
	{
		get
		{
			return m_pushedItem;
		}
		set
		{
			if (m_pushedItem != value)
			{
				TrackBarExArea pushedItem = m_pushedItem;
				m_pushedItem = value;
				InvalidateArea(pushedItem);
				InvalidateArea(m_pushedItem);
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[EditorBrowsable(EditorBrowsableState.Always)]
	public override bool AutoSize
	{
		get
		{
			return base.AutoSize;
		}
		set
		{
			if (base.AutoSize == value)
			{
				return;
			}
			base.AutoSize = value;
			if (value)
			{
				m_setHeight = ((m_orientation == Orientation.Horizontal) ? base.Height : base.Width);
				if (m_orientation == Orientation.Horizontal)
				{
					base.Height = GetPreferredHeight();
				}
				else
				{
					base.Width = GetPreferredHeight();
				}
			}
			else if (m_orientation == Orientation.Horizontal)
			{
				base.Height = m_setHeight;
			}
			else
			{
				base.Width = m_setHeight;
			}
		}
	}

	[Description("Occurs when the Value property of a track bar changes, either by movement of the scroll box or by manipulation in code.")]
	public event EventHandler ValueChanged;

	[Description("Occurs when either a mouse or keyboard action moves the scroll box. ")]
	public event EventHandler Scroll;

	static TrackBarEx()
	{
		DECR_BUTTON_SIZE = new Size(18, 18);
		INCR_BUTTON_SIZE = new Size(18, 18);
		SLIDER_SIZE = new Size(11, 14);
		TRACK_BAR_GRADIENT_START = Color.FromArgb(198, 222, 254);
		TRACK_BAR_GRADIENT_END = Color.FromArgb(115, 150, 198);
		BUTTON_COLOR = Color.FromArgb(159, 191, 239);
		HIGHLIGHTED_BUTTON_COLOR = Color.FromArgb(247, 199, 82);
		PUSHED_BUTTON_COLOR = Color.FromArgb(255, 138, 24);
		PAINT_STYLES = ControlStyles.UserPaint | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer;
		_sliderBlend = new Blend();
		_sliderBlend.Factors = new float[5] { 0f, 0f, 1f, 0f, 0f };
		_sliderBlend.Positions = new float[5] { 0f, 0.15f, 0.35f, 0.8f, 1f };
		_buttonsBlend = new Blend();
		_buttonsBlend.Factors = new float[5] { 0f, 0f, 1f, 0f, 0f };
		_buttonsBlend.Positions = new float[5] { 0f, 0.2f, 0.5f, 0.8f, 1f };
	}

	public TrackBarEx()
	{
		base.Width = 250;
		AutoSize = true;
		m_setHeight = ((m_orientation == Orientation.Horizontal) ? base.Height : base.Width);
		m_value = (m_minimum + m_maximum) / 2;
		m_timer = new Timer();
		m_timer.Tick += OnTimerTick;
		SetStyle(PAINT_STYLES, value: true);
		BackColor = Color.Transparent;
	}

	public TrackBarEx(int min, int max)
		: this()
	{
		m_minimum = min;
		m_maximum = max;
	}

	public void SmallDecrease()
	{
		ScrollTo(m_value - m_smallChange);
	}

	public void LargeDecrease()
	{
		ScrollTo(m_value - m_largeChange);
	}

	public void SmallIncrease()
	{
		ScrollTo(m_value + m_smallChange);
	}

	public void LargeIncrease()
	{
		ScrollTo(m_value + m_largeChange);
	}

	protected virtual void DrawButtons(Graphics graphics)
	{
		Rectangle decreaseButtonBounds = DecreaseButtonBounds;
		Rectangle increaseButtonBounds = IncreaseButtonBounds;
		ItemState itemState = ItemState.Default;
		if (CurrentArea == TrackBarExArea.DecreaseButton)
		{
			if (PushedItem == TrackBarExArea.DecreaseButton)
			{
				itemState = ItemState.Pushed;
			}
			else if (PushedItem == TrackBarExArea.None)
			{
				itemState = ItemState.Highlighted;
			}
		}
		ItemState itemState2 = ItemState.Default;
		if (CurrentArea == TrackBarExArea.IncreaseButton)
		{
			if (PushedItem == TrackBarExArea.IncreaseButton)
			{
				itemState2 = ItemState.Pushed;
			}
			else if (PushedItem == TrackBarExArea.None)
			{
				itemState2 = ItemState.Highlighted;
			}
		}
		DrawButtonBackground(graphics, decreaseButtonBounds, itemState);
		DrawButtonBackground(graphics, increaseButtonBounds, itemState2);
		using Pen pen = new Pen(ButtonSignColor);
		using Pen pen2 = new Pen(Color.FromArgb(110, ButtonSignColor), 3f);
		using Pen pen3 = new Pen(ButtonStartColor, 3f);
		int num = 4;
		int num2 = decreaseButtonBounds.Width * num / 10;
		int num3 = (decreaseButtonBounds.Width - num2) / 2;
		int num4 = decreaseButtonBounds.Top + decreaseButtonBounds.Height / 2;
		if (m_orientation == Orientation.Horizontal)
		{
			graphics.DrawLine(pen3, decreaseButtonBounds.Left + num3 - 1, num4, decreaseButtonBounds.Right - num3 + 1, num4);
			graphics.DrawLine(pen2, decreaseButtonBounds.Left + num3, num4, decreaseButtonBounds.Right - num3, num4);
			graphics.DrawLine(pen, decreaseButtonBounds.Left + num3 + 1, num4, decreaseButtonBounds.Right - num3 - 1, num4);
		}
		else if (m_orientation == Orientation.Vertical)
		{
			graphics.DrawLine(pen3, num4, decreaseButtonBounds.Top + num3, num4, decreaseButtonBounds.Bottom - num3);
			graphics.DrawLine(pen2, num4, decreaseButtonBounds.Top + num3, num4, decreaseButtonBounds.Bottom - num3);
			graphics.DrawLine(pen, num4, decreaseButtonBounds.Top + num3, num4, decreaseButtonBounds.Bottom - num3);
		}
		num2 = increaseButtonBounds.Width * num / 10;
		num3 = (increaseButtonBounds.Width - num2) / 2;
		num4 = increaseButtonBounds.Top + increaseButtonBounds.Height / 2;
		graphics.DrawLine(pen3, increaseButtonBounds.Left + num3 - 1, num4, increaseButtonBounds.Right - num3 + 1, num4);
		graphics.DrawLine(pen2, increaseButtonBounds.Left + num3, num4, increaseButtonBounds.Right - num3, num4);
		graphics.DrawLine(pen, increaseButtonBounds.Left + num3, num4, increaseButtonBounds.Right - num3, num4);
		int num5 = increaseButtonBounds.Height * num / 10;
		num3 = (increaseButtonBounds.Height - num5) / 2;
		num4 = increaseButtonBounds.Left + increaseButtonBounds.Width / 2;
		graphics.DrawLine(pen2, num4, increaseButtonBounds.Top + num3, num4, increaseButtonBounds.Bottom - num3);
		graphics.DrawLine(pen, num4, increaseButtonBounds.Top + num3, num4, increaseButtonBounds.Bottom - num3);
	}

	protected virtual void DrawSlider(Graphics graphics)
	{
		Rectangle sliderBounds = SliderBounds;
		GraphicsState gstate = graphics.Save();
		graphics.SetClip(sliderBounds);
		if (sliderBounds.Width > 0 && sliderBounds.Height > 0)
		{
			using (GraphicsPath graphicsPath = GetSliderPath(sliderBounds))
			{
				ItemState itemState = ItemState.Default;
				if (PushedItem == TrackBarExArea.Slider)
				{
					itemState = ItemState.Pushed;
				}
				else if (CurrentArea == TrackBarExArea.Slider)
				{
					itemState = ItemState.Highlighted;
				}
				Color buttonEndColor = GetButtonEndColor(itemState);
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(sliderBounds.Location, new Size(1, sliderBounds.Height)), ButtonStartColor, buttonEndColor, LinearGradientMode.Vertical);
				linearGradientBrush.Blend = _sliderBlend;
				graphicsPath.FillMode = FillMode.Winding;
				graphics.FillPath(linearGradientBrush, graphicsPath);
			}
			using (GraphicsPath path = GetSliderPath(new Rectangle(new Point(sliderBounds.Left + 1, sliderBounds.Top + 1), new Size(sliderBounds.Width - 3, sliderBounds.Height - 3))))
			{
				using Pen pen = new Pen(ButtonBorderColor);
				graphics.DrawPath(pen, path);
			}
			int num = sliderBounds.Top + sliderBounds.Height * 3 / 10;
			int num2 = sliderBounds.Width * 5 / 10;
			int num3 = sliderBounds.Left + sliderBounds.Width / 2;
			using (Pen pen2 = new Pen(Color.FromArgb(150, ButtonBorderColor)))
			{
				graphics.DrawLine(pen2, new Point(num3, num), new Point(num3, num + num2));
			}
			using Pen pen3 = new Pen(Color.FromArgb(150, ButtonStartColor));
			graphics.DrawLine(pen3, new Point(num3 + 1, num + 1), new Point(num3 + 1, num + num2));
		}
		graphics.Restore(gstate);
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		if (!Transparent)
		{
			Matrix transform = pevent.Graphics.Transform;
			Size clientSize = base.ClientSize;
			if (m_orientation == Orientation.Vertical)
			{
				pevent.Graphics.TranslateTransform(0f, base.Bounds.Height);
				pevent.Graphics.RotateTransform(-90f);
				int num = clientSize.Height;
				clientSize.Height = clientSize.Width;
				clientSize.Width = num;
			}
			if (clientSize.Width > 0 && clientSize.Height > 0)
			{
				Rectangle rect = new Rectangle(Point.Empty, new Size(1, clientSize.Height));
				using Brush brush = new LinearGradientBrush(rect, TrackBarGradientStart, TrackBarGradientEnd, LinearGradientMode.Vertical);
				pevent.Graphics.FillRectangle(brush, DisplayRectangleInternal);
			}
			pevent.Graphics.Transform = transform;
		}
		else
		{
			base.OnPaintBackground(pevent);
		}
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Matrix transform = e.Graphics.Transform;
		if (m_orientation == Orientation.Vertical)
		{
			e.Graphics.TranslateTransform(0f, base.Bounds.Height);
			e.Graphics.RotateTransform(-90f);
		}
		e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
		if (m_bShowButtons)
		{
			DrawButtons(e.Graphics);
		}
		Rectangle channelBounds = ChannelBounds;
		if (channelBounds.Height > 0 && channelBounds.Width > 0)
		{
			using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(channelBounds.Location, new Size(1, channelBounds.Height)), Color.FromArgb(32, Color.Black), Color.FromArgb(160, Color.White), LinearGradientMode.Vertical);
			linearGradientBrush.WrapMode = WrapMode.TileFlipY;
			e.Graphics.FillRectangle(linearGradientBrush, channelBounds);
		}
		DrawSlider(e.Graphics);
		if (m_bShowFocusRect && Focused)
		{
			ControlPaint.DrawFocusRectangle(e.Graphics, DisplayRectangleInternal);
		}
		e.Graphics.Transform = transform;
	}

	protected override void OnGotFocus(EventArgs e)
	{
		base.OnGotFocus(e);
		if (m_bShowFocusRect)
		{
			InvalidateFocusRect();
		}
	}

	protected override void OnLostFocus(EventArgs e)
	{
		base.OnLostFocus(e);
		if (m_bShowFocusRect)
		{
			InvalidateFocusRect();
		}
	}

	protected override void OnPaddingChanged(EventArgs e)
	{
		base.OnPaddingChanged(e);
		Invalidate();
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (AutoSize)
		{
			if (m_orientation == Orientation.Horizontal)
			{
				height = GetPreferredHeight();
			}
			else
			{
				width = GetPreferredHeight();
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		Point pt = TranslateClientLocation(e.Location);
		if (!Focused)
		{
			Focus();
		}
		base.Capture = true;
		if (e.Button != MouseButtons.Left)
		{
			return;
		}
		Rectangle sliderActionBounds = SliderActionBounds;
		if (DecreaseButtonBounds.Contains(pt))
		{
			PushedItem = TrackBarExArea.DecreaseButton;
			StartTimer(TrackBarExArea.DecreaseButton);
			SmallDecrease();
			return;
		}
		if (IncreaseButtonBounds.Contains(pt))
		{
			PushedItem = TrackBarExArea.IncreaseButton;
			StartTimer(TrackBarExArea.IncreaseButton);
			SmallIncrease();
			return;
		}
		if (sliderActionBounds.Contains(pt))
		{
			m_bSliderMoving = true;
			PushedItem = TrackBarExArea.Slider;
			return;
		}
		Rectangle channelBounds = ChannelBounds;
		if (pt.X >= channelBounds.X && pt.X <= channelBounds.Right)
		{
			bool flag = RightToLeft == RightToLeft.Yes;
			if ((pt.X < sliderActionBounds.X && !flag) || (pt.X > sliderActionBounds.Right && flag))
			{
				StartTimer(TrackBarExArea.LargeDecrease);
				LargeDecrease();
			}
			if ((pt.X > sliderActionBounds.Right && !flag) || (pt.X < sliderActionBounds.X && flag))
			{
				StartTimer(TrackBarExArea.LargeIncrease);
				LargeIncrease();
			}
		}
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		base.OnMouseUp(e);
		base.Capture = false;
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		m_timer.Stop();
		m_bSliderMoving = false;
		PushedItem = TrackBarExArea.None;
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point pt = TranslateClientLocation(e.Location);
		if (m_bSliderMoving)
		{
			Rectangle sliderBounds = SliderBounds;
			float num = (float)ChannelBounds.Width * (float)m_smallChange / (float)(m_maximum - m_minimum);
			int num2 = pt.X - (sliderBounds.Left + sliderBounds.Width / 2);
			int num3 = (int)Math.Round((float)num2 / num) * m_smallChange;
			if (RightToLeft == RightToLeft.Yes)
			{
				num3 = -num3;
			}
			ScrollTo(m_value + num3);
		}
		else if (DecreaseButtonBounds.Contains(pt))
		{
			CurrentArea = TrackBarExArea.DecreaseButton;
		}
		else if (IncreaseButtonBounds.Contains(pt))
		{
			CurrentArea = TrackBarExArea.IncreaseButton;
		}
		else if (SliderActionBounds.Contains(pt))
		{
			CurrentArea = TrackBarExArea.Slider;
		}
		else
		{
			CurrentArea = TrackBarExArea.None;
		}
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		CurrentArea = TrackBarExArea.None;
	}

	protected override void OnMouseWheel(MouseEventArgs e)
	{
		base.OnMouseWheel(e);
		HandledMouseEventArgs e2 = e as HandledMouseEventArgs;
		if ((e2 == null || !e2.Handled) && (Control.ModifierKeys & (Keys.Shift | Keys.Alt)) == 0 && Control.MouseButtons == MouseButtons.None)
		{
			int num = Math.Max(SystemInformation.MouseWheelScrollLines, m_smallChange);
			ScrollTo(m_value + num * e.Delta / SystemInformation.MouseWheelScrollDelta);
			if (e2 != null)
			{
				e2.Handled = true;
			}
		}
	}

	protected override void OnKeyDown(KeyEventArgs e)
	{
		base.OnKeyDown(e);
		switch (e.KeyData)
		{
		case Keys.Left:
		{
			int num2 = ((RightToLeft == RightToLeft.Yes) ? m_smallChange : (-m_smallChange));
			ScrollTo(m_value + num2);
			break;
		}
		case Keys.Right:
		{
			int num = ((RightToLeft == RightToLeft.Yes) ? (-m_smallChange) : m_smallChange);
			ScrollTo(m_value + num);
			break;
		}
		case Keys.Down:
			SmallDecrease();
			break;
		case Keys.Up:
			SmallIncrease();
			break;
		case Keys.Next:
			LargeDecrease();
			break;
		case Keys.Prior:
			LargeIncrease();
			break;
		case Keys.Home:
			ScrollTo((RightToLeft == RightToLeft.Yes) ? m_maximum : m_minimum);
			break;
		case Keys.End:
			ScrollTo((RightToLeft == RightToLeft.Yes) ? m_minimum : m_maximum);
			break;
		}
	}

	protected override bool IsInputKey(Keys keyData)
	{
		bool flag = base.IsInputKey(keyData);
		return flag || (keyData >= Keys.Prior && keyData <= Keys.Down) || keyData == Keys.Home || keyData == Keys.End;
	}

	private int GetPreferredHeight()
	{
		return Math.Max(20, Math.Max(DecreaseButtonBounds.Height + base.Padding.Vertical, IncreaseButtonBounds.Height + base.Padding.Vertical));
	}

	private GraphicsPath GetSliderPath(Rectangle rect)
	{
		GraphicsPath graphicsPath = new GraphicsPath();
		int num = rect.Height * 7 / 10;
		Point point = new Point(rect.Left, rect.Top + num);
		Point point2 = new Point(rect.Right, rect.Top + num);
		Point point3 = new Point(rect.Left + rect.Width / 2, rect.Bottom);
		graphicsPath.AddLine(rect.Location, point);
		graphicsPath.AddLine(point, point3);
		graphicsPath.AddLine(point3, point2);
		graphicsPath.AddLine(point2, new Point(rect.Right, rect.Top));
		graphicsPath.CloseFigure();
		return graphicsPath;
	}

	private void DrawButtonBackground(Graphics graphics, Rectangle rect, ItemState state)
	{
		if (rect.Width > 0 && rect.Height > 0)
		{
			Color buttonEndColor = GetButtonEndColor(state);
			using (LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(rect.Location, new Size(1, rect.Height)), ButtonStartColor, buttonEndColor, LinearGradientMode.Vertical))
			{
				linearGradientBrush.Blend = _buttonsBlend;
				graphics.FillEllipse(linearGradientBrush, rect);
			}
			using Pen pen = new Pen(ButtonBorderColor);
			rect.Inflate(-1, -1);
			graphics.DrawEllipse(pen, rect);
		}
	}

	private Color GetButtonEndColor(ItemState state)
	{
		Color result = Color.Empty;
		switch (state)
		{
		case ItemState.Default:
			result = ButtonColor;
			break;
		case ItemState.Highlighted:
			result = HighlightedButtonColor;
			break;
		case ItemState.Pushed:
			result = PushedButtonEndColor;
			break;
		}
		return result;
	}

	private void StartTimer(TrackBarExArea mousePushedArea)
	{
		m_timer.Interval = m_timerInt * 4;
		m_timer.Tag = mousePushedArea;
		m_timer.Start();
	}

	private void InvalidateSlider()
	{
		if (base.IsHandleCreated)
		{
			Invalidate(TranslateClientRect(SliderBounds));
		}
	}

	private void InvalidateArea(TrackBarExArea area)
	{
		switch (area)
		{
		case TrackBarExArea.DecreaseButton:
			Invalidate(TranslateClientRect(DecreaseButtonBounds));
			break;
		case TrackBarExArea.IncreaseButton:
			Invalidate(TranslateClientRect(IncreaseButtonBounds));
			break;
		case TrackBarExArea.Slider:
			Invalidate(TranslateClientRect(SliderBounds));
			break;
		case TrackBarExArea.LargeDecrease:
		case TrackBarExArea.LargeIncrease:
			break;
		}
	}

	private Rectangle TranslateClientRect(Rectangle pBounds)
	{
		Rectangle rectangle = pBounds;
		if (Orientation == Orientation.Vertical)
		{
			Rectangle rectangle2 = rectangle;
			Size size = base.ClientRectangle.Size;
			rectangle.X = rectangle2.Y;
			rectangle.Y = size.Height - rectangle2.Right;
			rectangle.Width = rectangle2.Height;
			rectangle.Height = rectangle2.Width;
		}
		return rectangle;
	}

	private Point TranslateClientLocation(Point pMouseLocation)
	{
		Point point = pMouseLocation;
		if (Orientation == Orientation.Vertical)
		{
			Point point2 = point;
			point.X = base.ClientRectangle.Size.Height - point2.Y;
			point.Y = point2.X;
		}
		return point;
	}

	private void InvalidateFocusRect()
	{
		Rectangle rect = base.Parent.RectangleToClient(RectangleToScreen(base.ClientRectangle));
		using Region region = new Region(rect);
		rect.Inflate(-1, -1);
		region.Exclude(rect);
		base.Parent.Invalidate(region, invalidateChildren: true);
	}

	private void ScrollTo(int pos)
	{
		int validValue = GetValidValue(pos);
		if (m_value != validValue)
		{
			InvalidateSlider();
			m_value = validValue;
			InvalidateSlider();
			Update();
			OnScroll();
			OnValueChanged();
		}
	}

	private void OnScroll()
	{
		if (this.Scroll != null)
		{
			this.Scroll(this, EventArgs.Empty);
		}
	}

	private void OnValueChanged()
	{
		if (this.ValueChanged != null)
		{
			this.ValueChanged(this, EventArgs.Empty);
		}
	}

	private int GetValidValue(int value)
	{
		if (value < m_minimum)
		{
			value = m_minimum;
		}
		else if (value > m_maximum)
		{
			value = m_maximum;
		}
		return value;
	}

	private void OnTimerTick(object sender, EventArgs e)
	{
		TrackBarExArea trackBarExArea = (TrackBarExArea)((Timer)sender).Tag;
		Point pt = TranslateClientLocation(PointToClient(Control.MousePosition));
		Rectangle sliderActionBounds = SliderActionBounds;
		Rectangle channelBounds = ChannelBounds;
		switch (trackBarExArea)
		{
		case TrackBarExArea.DecreaseButton:
			if (DecreaseButtonBounds.Contains(pt))
			{
				SmallDecrease();
			}
			break;
		case TrackBarExArea.IncreaseButton:
			if (IncreaseButtonBounds.Contains(pt))
			{
				SmallIncrease();
			}
			break;
		case TrackBarExArea.LargeDecrease:
			if (pt.X >= channelBounds.X && pt.X <= channelBounds.Right)
			{
				bool flag2 = RightToLeft == RightToLeft.Yes;
				if ((pt.X < sliderActionBounds.X && !flag2) || (pt.X > sliderActionBounds.X && flag2))
				{
					LargeDecrease();
				}
			}
			break;
		case TrackBarExArea.LargeIncrease:
			if (pt.X >= channelBounds.X && pt.X <= channelBounds.Right)
			{
				bool flag = RightToLeft == RightToLeft.Yes;
				if ((pt.X < sliderActionBounds.Right && !flag) || (pt.X < sliderActionBounds.X && flag))
				{
					LargeIncrease();
				}
			}
			break;
		}
		m_timer.Interval = m_timerInt;
	}

	protected bool ShouldSerializeDecreaseButtonSize()
	{
		return m_decrButtonSize != DECR_BUTTON_SIZE;
	}

	protected void ResetDecreaseButtonSize()
	{
		DecreaseButtonSizeInternal = DECR_BUTTON_SIZE;
	}

	protected bool ShouldSerializeIncreaseButtonSize()
	{
		return m_incrButtonSize != INCR_BUTTON_SIZE;
	}

	protected void ResetIncreaseButtonSize()
	{
		IncreaseButtonSizeInternal = INCR_BUTTON_SIZE;
	}

	protected bool ShouldSerializeSliderSize()
	{
		return m_sliderSize != SLIDER_SIZE;
	}

	protected void ResetSliderSize()
	{
		SliderSize = SLIDER_SIZE;
	}

	protected bool ShouldSerializeTrackBarGradientStart()
	{
		return m_clrTrackBarGradientStart != TRACK_BAR_GRADIENT_START;
	}

	protected void ResetTrackBarGradientStart()
	{
		TrackBarGradientStart = TRACK_BAR_GRADIENT_START;
	}

	protected bool ShouldSerializeTrackBarGradientEnd()
	{
		return m_clrTrackBarGradientEnd != TRACK_BAR_GRADIENT_END;
	}

	protected void ResetTrackBarGradientEnd()
	{
		TrackBarGradientEnd = TRACK_BAR_GRADIENT_END;
	}

	protected bool ShouldSerializeButtonColor()
	{
		return m_clrButton != BUTTON_COLOR;
	}

	protected void ResetButtonColor()
	{
		ButtonColor = BUTTON_COLOR;
	}

	protected bool ShouldSerializeHighlightedButtonColor()
	{
		return m_clrHighlightedButton != HIGHLIGHTED_BUTTON_COLOR;
	}

	protected void ResetHighlightedButtonColor()
	{
		HighlightedButtonColor = HIGHLIGHTED_BUTTON_COLOR;
	}

	protected bool ShouldSerializePushedButtonEndColor()
	{
		return m_clrPushedButton != PUSHED_BUTTON_COLOR;
	}

	protected void ResetPushedButtonEndColor()
	{
		PushedButtonEndColor = PUSHED_BUTTON_COLOR;
	}
}
