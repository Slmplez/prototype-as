using System;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools;

[DefaultEvent("ValueChanged")]
[Description("Represents a Track Bar extended with range setting")]
[ToolboxBitmap(typeof(RangeSlider), "ToolboxIcons.Slider.bmp")]
[Designer(typeof(RangeSliderDesigner))]
public class RangeSlider : Control
{
	protected enum RangeSliderArea
	{
		None,
		LeftThumb,
		RightThumb
	}

	private enum ItemState
	{
		Default,
		Highlighted,
		Pushed
	}

	private const int MAXIMUM = 10;

	private const int MINIMUM = 0;

	private const int SLIDERMIN = 0;

	private const int SLIDERMAX = 10;

	private const int LEFTSLIDERPOSITION = 0;

	private const int RIGHTSLIDERPOSITION = 10;

	private const int CHANNELHEIGHT = 4;

	private const int TICKFREQUENCY = 1;

	private IContainer components;

	private static Blend _sliderBlend;

	private int sliderMin;

	private int sliderMax = 10;

	private int leftSliderPosition;

	private int rightSliderPosition = 10;

	private bool leftSliderMoving;

	private bool rightSliderMoving;

	private Color rangeColor = Color.FromArgb(242, 144, 36);

	private RangeSliderArea currentArea;

	private RangeSliderArea pushedItem;

	private Color thumbColor = Color.FromArgb(159, 191, 239);

	private Color highlightedThumbColor = Color.FromArgb(247, 199, 82);

	private Color pushedThumbColor = Color.FromArgb(255, 138, 24);

	private Color channelColor = Color.FromArgb(51, 66, 121);

	private Orientation orientation;

	private int channelHeight = 4;

	private Size sliderSize = new Size(11, 14);

	private int maximum = 10;

	private int minimum;

	private int tickFrequency = 1;

	private bool showTicks = true;

	private int height;

	private static readonly ControlStyles PAINT_STYLES;

	[Browsable(true)]
	[Description("Color of the Thumbs.")]
	[Category("Appearance")]
	public Color ThumbColor
	{
		get
		{
			return thumbColor;
		}
		set
		{
			if (thumbColor != value)
			{
				thumbColor = value;
				InvalidateArea(RangeSliderArea.LeftThumb);
				InvalidateArea(RangeSliderArea.RightThumb);
			}
		}
	}

	[Description("Color of the Highlighted Thumb.")]
	[Category("Appearance")]
	[Browsable(true)]
	public Color HighlightedThumbColor
	{
		get
		{
			return highlightedThumbColor;
		}
		set
		{
			if (highlightedThumbColor != value)
			{
				highlightedThumbColor = value;
				InvalidateArea(RangeSliderArea.LeftThumb);
				InvalidateArea(RangeSliderArea.RightThumb);
			}
		}
	}

	[Browsable(true)]
	[Category("Appearance")]
	[Description("Color of the Pushed Thumb.")]
	public Color PushedThumbColor
	{
		get
		{
			return pushedThumbColor;
		}
		set
		{
			if (pushedThumbColor != value)
			{
				pushedThumbColor = value;
				InvalidateArea(RangeSliderArea.LeftThumb);
				InvalidateArea(RangeSliderArea.RightThumb);
			}
		}
	}

	[Browsable(true)]
	[Category("Behavior")]
	[Description("Position of the Left Slider")]
	[DefaultValue(0)]
	public int SliderMin
	{
		get
		{
			return sliderMin;
		}
		set
		{
			if (value >= Minimum && value <= Maximum)
			{
				if (value > SliderMax)
				{
					throw new ArgumentException(" SliderMin is greater than SliderMax");
				}
				sliderMin = value;
				Invalidate();
				Update();
				OnValueChanged();
			}
			else
			{
				sliderMin = Minimum;
				Invalidate();
				Update();
				OnValueChanged();
			}
		}
	}

	[Category("Behavior")]
	[Description("Position of the Right Slider")]
	[DefaultValue(10)]
	[Browsable(true)]
	public int SliderMax
	{
		get
		{
			return sliderMax;
		}
		set
		{
			if (value <= Maximum && value >= Minimum)
			{
				if (value < SliderMin)
				{
					throw new ArgumentException(" SliderMax is less than SliderMin");
				}
				sliderMax = value;
				Invalidate();
				Update();
				OnValueChanged();
			}
			else
			{
				sliderMax = Maximum;
				Invalidate();
				Update();
				OnValueChanged();
			}
		}
	}

	[Browsable(true)]
	[Description("Color of Range")]
	[Category("Appearance")]
	public Color RangeColor
	{
		get
		{
			return rangeColor;
		}
		set
		{
			rangeColor = value;
			Invalidate();
		}
	}

	[Category("Appearance")]
	[Description("Color of Channel")]
	[Browsable(true)]
	public Color ChannelColor
	{
		get
		{
			return channelColor;
		}
		set
		{
			channelColor = value;
			Invalidate();
		}
	}

	[Description("Specify the orientation of RangeSlider control.")]
	[Category("Behavior")]
	[DefaultValue(typeof(Orientation), "Horizontal")]
	public Orientation Orientation
	{
		get
		{
			return orientation;
		}
		set
		{
			if (orientation != value)
			{
				orientation = value;
				Size size = base.Size;
				int num = size.Height;
				size.Height = size.Width;
				size.Width = num;
				base.Size = size;
				Invalidate();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(4)]
	[Description("Height of channel.")]
	public int ChannelHeight
	{
		get
		{
			return channelHeight;
		}
		set
		{
			if (channelHeight != value)
			{
				channelHeight = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(typeof(Size), "11, 14")]
	[Category("Appearance")]
	[Description("Size of Thumb.")]
	public Size SliderSize
	{
		get
		{
			return sliderSize;
		}
		set
		{
			if (sliderSize != value)
			{
				sliderSize = value;
				Invalidate();
			}
		}
	}

	[DefaultValue(0)]
	[Description("Minimum value of RangeSlider.")]
	[Category("Behavior")]
	public int Minimum
	{
		get
		{
			return minimum;
		}
		set
		{
			if (minimum != value)
			{
				if (value < maximum)
				{
					minimum = value;
				}
				else
				{
					minimum = maximum - 1;
				}
				if (SliderMin < minimum)
				{
					SliderMin = minimum;
				}
				Invalidate();
			}
		}
	}

	[DefaultValue(10)]
	[Category("Behavior")]
	[Description("Maximum value of RangeSlider.")]
	public int Maximum
	{
		get
		{
			return maximum;
		}
		set
		{
			if (maximum != value)
			{
				if (value > minimum)
				{
					maximum = value;
				}
				else
				{
					maximum = minimum + 1;
				}
				if (SliderMax > maximum)
				{
					SliderMax = maximum;
				}
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[Description("Frequency of Ticks")]
	[DefaultValue(1)]
	public int TickFrequency
	{
		get
		{
			return tickFrequency;
		}
		set
		{
			if (tickFrequency != value)
			{
				if (value > Maximum - Minimum)
				{
					throw new ArgumentException("Invalid value");
				}
				tickFrequency = value;
				Invalidate();
			}
		}
	}

	[Category("Behavior")]
	[DefaultValue(true)]
	[Description("Shows Ticks if set to True")]
	public bool ShowTicks
	{
		get
		{
			return showTicks;
		}
		set
		{
			showTicks = value;
			Invalidate();
		}
	}

	[Browsable(false)]
	[DefaultValue(typeof(Color), "Transparent")]
	public override Color BackColor => Color.Transparent;

	[Browsable(false)]
	public int Range => sliderMax - sliderMin;

	protected int LeftSliderPosition
	{
		get
		{
			return leftSliderPosition;
		}
		set
		{
			leftSliderPosition = value;
		}
	}

	protected int RightSliderPosition
	{
		get
		{
			return rightSliderPosition;
		}
		set
		{
			rightSliderPosition = value;
		}
	}

	protected virtual Rectangle LeftSliderBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			Rectangle channelBounds = ChannelBounds;
			LeftSliderPosition = channelBounds.Width * (SliderMin - Minimum) / (Maximum - Minimum);
			int num = channelBounds.X - SliderSize.Width / 2 + ((RightToLeft != RightToLeft.Yes) ? LeftSliderPosition : (channelBounds.Width - LeftSliderPosition));
			int num2 = displayRectangleInternal.Y + (displayRectangleInternal.Height - SliderSize.Height) / 2;
			return new Rectangle(new Point(num, num2), SliderSize);
		}
	}

	protected virtual Rectangle RightSliderBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			Rectangle channelBounds = ChannelBounds;
			RightSliderPosition = channelBounds.Width * (SliderMax - Minimum) / (Maximum - Minimum);
			int num = channelBounds.X - SliderSize.Width / 2 + ((RightToLeft != RightToLeft.Yes) ? RightSliderPosition : (channelBounds.Width - RightSliderPosition));
			int num2 = displayRectangleInternal.Y + (displayRectangleInternal.Height - SliderSize.Height) / 2;
			return new Rectangle(new Point(num, num2), SliderSize);
		}
	}

	protected virtual Rectangle ChannelBounds
	{
		get
		{
			Rectangle displayRectangleInternal = DisplayRectangleInternal;
			int num = displayRectangleInternal.X + sliderSize.Width / 2 + 18;
			int num2 = displayRectangleInternal.Y + (displayRectangleInternal.Height - channelHeight) / 2;
			int num3 = displayRectangleInternal.Width - (36 + sliderSize.Width);
			return new Rectangle(num, num2, num3, channelHeight);
		}
	}

	internal Rectangle DisplayRectangleInternal
	{
		get
		{
			Rectangle displayRectangle = DisplayRectangle;
			if (orientation == Orientation.Vertical)
			{
				int num = displayRectangle.Width;
				displayRectangle.Width = displayRectangle.Height;
				displayRectangle.Height = num;
			}
			return displayRectangle;
		}
	}

	protected virtual Color ThumbBorderColor => Color.FromArgb(66, 109, 165);

	protected virtual Color ThumbStartColor => Color.FromArgb(248, 248, 255);

	protected RangeSliderArea CurrentArea
	{
		get
		{
			return currentArea;
		}
		set
		{
			if (currentArea != value)
			{
				RangeSliderArea area = currentArea;
				currentArea = value;
				InvalidateArea(area);
				InvalidateArea(currentArea);
			}
		}
	}

	protected RangeSliderArea PushedItem
	{
		get
		{
			return pushedItem;
		}
		set
		{
			if (pushedItem != value)
			{
				RangeSliderArea area = pushedItem;
				pushedItem = value;
				InvalidateArea(area);
				InvalidateArea(pushedItem);
			}
		}
	}

	protected virtual Rectangle InnerChannel
	{
		get
		{
			int num = 0;
			int num2 = 0;
			if (RightToLeft == RightToLeft.No)
			{
				num = LeftSliderBounds.Right;
				num2 = RightSliderBounds.X - LeftSliderBounds.Right;
			}
			else if (RightToLeft == RightToLeft.Yes)
			{
				num = RightSliderBounds.Right;
				num2 = LeftSliderBounds.X - RightSliderBounds.Right;
			}
			return new Rectangle(num, ChannelBounds.Y, num2, ChannelBounds.Height);
		}
	}

	protected virtual Rectangle RightOuterChannel
	{
		get
		{
			int num = 0;
			int num2 = 0;
			if (RightToLeft == RightToLeft.No)
			{
				num = RightSliderBounds.Right;
				num2 = ChannelBounds.Right - RightSliderBounds.Right;
			}
			else if (RightToLeft == RightToLeft.Yes)
			{
				num = LeftSliderBounds.Right;
				num2 = ChannelBounds.Right - LeftSliderBounds.Right;
			}
			return new Rectangle(num, ChannelBounds.Y, num2, ChannelBounds.Height);
		}
	}

	protected virtual Rectangle LeftOuterChannel
	{
		get
		{
			int num = 0;
			int num2 = 0;
			if (RightToLeft == RightToLeft.No)
			{
				num = ChannelBounds.X;
				num2 = LeftSliderBounds.X - ChannelBounds.X;
			}
			else if (RightToLeft == RightToLeft.Yes)
			{
				num = ChannelBounds.X;
				num2 = RightSliderBounds.X - ChannelBounds.X;
			}
			return new Rectangle(num, ChannelBounds.Y, num2, ChannelBounds.Height);
		}
	}

	[EditorBrowsable(EditorBrowsableState.Always)]
	[Category("Behavior")]
	[DefaultValue(true)]
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
				height = ((Orientation == Orientation.Horizontal) ? base.Height : base.Width);
				if (Orientation == Orientation.Horizontal)
				{
					base.Height = 22;
				}
				else
				{
					base.Width = 22;
				}
			}
			else if (Orientation == Orientation.Horizontal)
			{
				base.Height = height;
			}
			else
			{
				base.Width = height;
			}
		}
	}

	[Description("Occurs when the SliderMin and SliderMax property of a RangerSlider changes, either by movement of the thumb or by manipulation in code.")]
	public event EventHandler ValueChanged;

	[Description("Occurs when  a mouse action moves the thumb. ")]
	public event EventHandler Scroll;

	static RangeSlider()
	{
		PAINT_STYLES = ControlStyles.UserPaint | ControlStyles.SupportsTransparentBackColor | ControlStyles.AllPaintingInWmPaint | ControlStyles.OptimizedDoubleBuffer;
		_sliderBlend = new Blend();
		_sliderBlend.Factors = new float[5] { 0f, 0f, 1f, 0f, 0f };
		_sliderBlend.Positions = new float[5] { 0f, 0.15f, 0.35f, 0.8f, 1f };
	}

	public RangeSlider()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(RangeSlider));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		base.Width = 250;
		AutoSize = true;
		height = ((Orientation == Orientation.Horizontal) ? base.Height : base.Width);
		SliderMin = minimum;
		SliderMax = maximum;
		SetStyle(PAINT_STYLES, value: true);
		BackColor = Color.Transparent;
	}

	public RangeSlider(int min, int max)
		: this()
	{
		minimum = min;
		maximum = max;
	}

	protected void DrawSlider(Graphics graphics)
	{
		Rectangle leftSliderBounds = LeftSliderBounds;
		Rectangle rightSliderBounds = RightSliderBounds;
		ItemState sliderState = ItemState.Default;
		if (currentArea == RangeSliderArea.LeftThumb)
		{
			if (PushedItem == RangeSliderArea.LeftThumb)
			{
				sliderState = ItemState.Pushed;
			}
			else if (CurrentArea == RangeSliderArea.LeftThumb)
			{
				sliderState = ItemState.Highlighted;
			}
		}
		ItemState sliderState2 = ItemState.Default;
		if (currentArea == RangeSliderArea.RightThumb)
		{
			if (PushedItem == RangeSliderArea.RightThumb)
			{
				sliderState2 = ItemState.Pushed;
			}
			else if (CurrentArea == RangeSliderArea.RightThumb)
			{
				sliderState2 = ItemState.Highlighted;
			}
		}
		DrawSliders(leftSliderBounds, graphics, sliderState);
		DrawSliders(rightSliderBounds, graphics, sliderState2);
	}

	private void DrawSliders(Rectangle rect, Graphics graphics, ItemState sliderState)
	{
		GraphicsState gstate = graphics.Save();
		graphics.SetClip(rect);
		if (rect.Width > 0 && rect.Height > 0)
		{
			using (GraphicsPath graphicsPath = GetSliderPath(new Rectangle(new Point(rect.Left + 1, rect.Top + 1), new Size(rect.Width - 2, rect.Height - 3))))
			{
				Color thumbEndColor = GetThumbEndColor(sliderState);
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Rectangle(rect.Location, new Size(1, rect.Height)), ThumbStartColor, thumbEndColor, LinearGradientMode.Vertical);
				linearGradientBrush.Blend = _sliderBlend;
				graphicsPath.FillMode = FillMode.Winding;
				graphics.FillPath(linearGradientBrush, graphicsPath);
			}
			using (GraphicsPath path = GetSliderPath(new Rectangle(new Point(rect.Left + 1, rect.Top + 1), new Size(rect.Width - 2, rect.Height - 3))))
			{
				using Pen pen = new Pen(ThumbBorderColor);
				graphics.DrawPath(pen, path);
			}
			int num = rect.Top + rect.Height * 3 / 10;
			int num2 = rect.Width * 5 / 10;
			int num3 = rect.Left + rect.Width / 2;
			using (Pen pen2 = new Pen(Color.FromArgb(150, ThumbBorderColor)))
			{
				graphics.DrawLine(pen2, new Point(num3, num), new Point(num3, num + num2));
			}
			using Pen pen3 = new Pen(Color.FromArgb(150, ThumbStartColor));
			graphics.DrawLine(pen3, new Point(num3 + 1, num + 1), new Point(num3 + 1, num + num2));
		}
		graphics.Restore(gstate);
	}

	private void DrawTicks(Graphics g)
	{
		int num = 2;
		int num2 = maximum - minimum;
		if (tickFrequency != 0)
		{
			num = ((num2 % tickFrequency != 0) ? (num2 / tickFrequency + 2) : (num2 / tickFrequency + 1));
		}
		int num3 = ChannelBounds.Left;
		int num4 = ChannelBounds.Bottom + 6;
		int num5 = ChannelBounds.Left;
		int num6 = num4 + 3;
		int num7 = 1;
		int num8 = 1;
		if (tickFrequency == 1)
		{
			for (int i = 1; i <= num; i++)
			{
				using (Pen pen = new Pen(Color.Black))
				{
					g.DrawLine(pen, new Point(num3, num4), new Point(num5, num6));
				}
				num3 = ChannelBounds.Left + ChannelBounds.Width * num7 / num2;
				num5 = num3;
				num7++;
			}
			return;
		}
		for (int j = 0; j < Maximum; j++)
		{
			if (num7 == num8 && num8 <= Maximum)
			{
				using (Pen pen2 = new Pen(Color.Black))
				{
					g.DrawLine(pen2, new Point(num3, num4), new Point(num5, num6));
				}
				num8 += tickFrequency;
			}
			num3 = ((RightToLeft == RightToLeft.No) ? (ChannelBounds.Left + ChannelBounds.Width * num7 / num2) : (ChannelBounds.Left + (ChannelBounds.Width - ChannelBounds.Width * num7 / num2)));
			num5 = num3;
			num7++;
		}
		using Pen pen3 = new Pen(Color.Black);
		g.DrawLine(pen3, new Point(ChannelBounds.Right, num4), new Point(ChannelBounds.Right, num6));
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

	private Color GetThumbEndColor(ItemState state)
	{
		Color empty = Color.Empty;
		switch (state)
		{
		case ItemState.Default:
			empty = ThumbColor;
			break;
		case ItemState.Highlighted:
			empty = HighlightedThumbColor;
			break;
		case ItemState.Pushed:
			empty = PushedThumbColor;
			break;
		}
		return empty;
	}

	protected override void OnPaint(PaintEventArgs e)
	{
		Matrix transform = e.Graphics.Transform;
		if (orientation == Orientation.Vertical)
		{
			e.Graphics.TranslateTransform(0f, base.Bounds.Height);
			e.Graphics.RotateTransform(-90f);
		}
		e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
		Rectangle channelBounds = ChannelBounds;
		if (channelBounds.Height > 0 && channelBounds.Width > 0)
		{
			using (SolidBrush brush = new SolidBrush(ChannelColor))
			{
				e.Graphics.FillRectangle(brush, LeftOuterChannel);
			}
			using (SolidBrush brush2 = new SolidBrush(RangeColor))
			{
				e.Graphics.FillRectangle(brush2, InnerChannel);
			}
			using SolidBrush brush3 = new SolidBrush(ChannelColor);
			e.Graphics.FillRectangle(brush3, RightOuterChannel);
		}
		DrawSlider(e.Graphics);
		if (ShowTicks)
		{
			DrawTicks(e.Graphics);
		}
		e.Graphics.Transform = transform;
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		base.OnMouseDown(e);
		Point pt = TranslateClientLocation(e.Location);
		base.Capture = true;
		if (e.Button == MouseButtons.Left)
		{
			Rectangle leftSliderBounds = LeftSliderBounds;
			Rectangle rightSliderBounds = RightSliderBounds;
			if (leftSliderBounds.Contains(pt))
			{
				leftSliderMoving = true;
				PushedItem = RangeSliderArea.LeftThumb;
			}
			else if (rightSliderBounds.Contains(pt))
			{
				PushedItem = RangeSliderArea.RightThumb;
				rightSliderMoving = true;
			}
			else
			{
				PushedItem = RangeSliderArea.None;
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		Point pt = TranslateClientLocation(e.Location);
		if (SliderMax == Minimum)
		{
			rightSliderMoving = true;
			leftSliderMoving = false;
		}
		if (leftSliderMoving)
		{
			Rectangle leftSliderBounds = LeftSliderBounds;
			float num = (float)ChannelBounds.Width * 1f / (float)(Maximum - Minimum);
			int num2 = pt.X - (leftSliderBounds.Left + leftSliderBounds.Width / 2);
			int num3 = (int)Math.Round((float)num2 / num);
			if (RightToLeft == RightToLeft.Yes)
			{
				num3 = -num3;
			}
			ScrollLeftSliderTo(SliderMin + num3);
		}
		else if (rightSliderMoving)
		{
			Rectangle rightSliderBounds = RightSliderBounds;
			float num4 = (float)ChannelBounds.Width * 1f / (float)(Maximum - Minimum);
			int num5 = pt.X - (rightSliderBounds.Left + rightSliderBounds.Width / 2);
			int num6 = (int)Math.Round((float)num5 / num4);
			if (RightToLeft == RightToLeft.Yes)
			{
				num6 = -num6;
			}
			ScrollRightSliderTo(SliderMax + num6);
		}
		else if (LeftSliderBounds.Contains(pt))
		{
			CurrentArea = RangeSliderArea.LeftThumb;
		}
		else if (RightSliderBounds.Contains(pt))
		{
			CurrentArea = RangeSliderArea.RightThumb;
		}
		else
		{
			CurrentArea = RangeSliderArea.None;
		}
	}

	protected override void OnMouseCaptureChanged(EventArgs e)
	{
		base.OnMouseCaptureChanged(e);
		leftSliderMoving = false;
		rightSliderMoving = false;
		PushedItem = RangeSliderArea.None;
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		base.OnMouseLeave(e);
		CurrentArea = RangeSliderArea.None;
	}

	private void ScrollLeftSliderTo(int pos)
	{
		int validValue = GetValidValue(pos);
		if (SliderMin != validValue && validValue <= SliderMax)
		{
			InvalidateLeftSlider();
			SliderMin = validValue;
			InvalidateLeftSlider();
			Update();
			OnScroll();
			OnValueChanged();
		}
	}

	private void ScrollRightSliderTo(int pos)
	{
		int validValue = GetValidValue(pos);
		if (SliderMax != validValue && validValue >= SliderMin)
		{
			InvalidateRightSlider();
			SliderMax = validValue;
			InvalidateRightSlider();
			Update();
			OnScroll();
			OnValueChanged();
		}
	}

	private void InvalidateLeftSlider()
	{
		if (base.IsHandleCreated)
		{
			Invalidate(TranslateClientRect(LeftSliderBounds));
			Invalidate(LeftOuterChannel);
			Invalidate(InnerChannel);
		}
	}

	private void InvalidateRightSlider()
	{
		if (base.IsHandleCreated)
		{
			Invalidate(TranslateClientRect(RightSliderBounds));
			Invalidate(RightOuterChannel);
			Invalidate(InnerChannel);
		}
	}

	private int GetValidValue(int value)
	{
		if (value < Minimum)
		{
			value = Minimum;
		}
		else if (value > Maximum)
		{
			value = Maximum;
		}
		return value;
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

	private void InvalidateArea(RangeSliderArea area)
	{
		switch (area)
		{
		case RangeSliderArea.LeftThumb:
			Invalidate(TranslateClientRect(LeftSliderBounds));
			break;
		case RangeSliderArea.RightThumb:
			Invalidate(TranslateClientRect(RightSliderBounds));
			break;
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

	protected bool ShouldSerializeThumbColor()
	{
		return thumbColor != Color.FromArgb(159, 191, 239);
	}

	protected void ResetThumbColor()
	{
		ThumbColor = Color.FromArgb(159, 191, 239);
	}

	protected bool ShouldSerializeChannelColor()
	{
		return channelColor != Color.FromArgb(51, 66, 121);
	}

	protected void ResetChannelColor()
	{
		ChannelColor = Color.FromArgb(51, 66, 121);
	}

	protected bool ShouldSerializeRangeColor()
	{
		return rangeColor != Color.FromArgb(242, 144, 36);
	}

	protected void ResetRangeColor()
	{
		RangeColor = Color.FromArgb(242, 144, 36);
	}

	protected bool ShouldSerializePushedThumbColor()
	{
		return pushedThumbColor != Color.FromArgb(255, 138, 24);
	}

	protected void ResetPushedThumbColor()
	{
		PushedThumbColor = Color.FromArgb(255, 138, 24);
	}

	protected bool ShouldSerializeHighlightedThumbColor()
	{
		return highlightedThumbColor != Color.FromArgb(247, 199, 82);
	}

	protected void ResetHighlightedThumbColor()
	{
		HighlightedThumbColor = Color.FromArgb(247, 199, 82);
	}

	protected override void SetBoundsCore(int x, int y, int width, int height, BoundsSpecified specified)
	{
		if (AutoSize)
		{
			if (Orientation == Orientation.Horizontal)
			{
				height = 22;
			}
			else
			{
				width = 22;
			}
		}
		base.SetBoundsCore(x, y, width, height, specified);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}
}
