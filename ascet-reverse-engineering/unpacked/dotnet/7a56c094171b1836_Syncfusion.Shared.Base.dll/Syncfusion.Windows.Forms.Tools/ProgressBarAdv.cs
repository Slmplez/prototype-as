using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(true)]
[ToolboxBitmap(typeof(PopupControlContainer), "ToolboxIcons.ProgressBarEx.bmp")]
[Description("Extended ProgressBar control with many styles to choose from.")]
public class ProgressBarAdv : ThemedControl, ISupportInitialize
{
	private IContainer components;

	private bool inInit;

	private Timer timer;

	private int offs = 3;

	private bool hasHandle;

	private bool inDraw;

	private Rectangle inDrawRectangle = Rectangle.Empty;

	private ThemedControlDrawing tc;

	private int minimum;

	private int maximum = 100;

	private int ivalue = 50;

	private ProgressBarTextStyles textStyle;

	private int segmentwidth = 12;

	private bool text = true;

	private bool textShadow = true;

	private ArrayList foreColors = new ArrayList();

	private ArrayList backColors = new ArrayList();

	private Border3DStyle border3DStyle = Border3DStyle.Sunken;

	private BorderStyle borderStyle = BorderStyle.Fixed3D;

	private ButtonBorderStyle borderSingle = ButtonBorderStyle.Solid;

	private Image foregroundImage;

	private Color foregroundColor = Color.DarkCyan;

	private Color fontColor = Color.White;

	private Color borderColor = Color.Black;

	private Color foreStartColor = Color.Red;

	private Color foreEndColor = Color.Lime;

	private Color tubeStartColor = Color.Red;

	private Color tubeEndColor = Color.Black;

	private Color backStartColor = Color.LightGray;

	private Color backEndColor = Color.White;

	private Color backTubeStartColor = Color.LightGray;

	private Color backTubeEndColor = Color.White;

	private Brush vbackGradBrush;

	private Brush backFillBrush;

	private Brush foreFillBrush;

	private Brush foreGradientBrush;

	private Brush foreWaitingGradientBrush;

	private Brush backGradientBrush;

	private Brush foreTubeBrush;

	private Brush backTubeBrush;

	private Rectangle waitingGradientRect = Rectangle.Empty;

	private ProgressBarBackgroundStyles backgroundStyle = ProgressBarBackgroundStyles.None;

	private ProgressBarBackgroundStyles backgroundFallbackStyle = ProgressBarBackgroundStyles.None;

	private ProgressBarStyles progressStyle;

	private ProgressBarStyles progressFallbackStyle;

	private Orientation progressOrientation;

	private Orientation textOrientation;

	private bool stretchMultGrad = true;

	private bool stretchImage = true;

	private int step = 10;

	private bool foreSegments = true;

	private bool backSegments;

	private string lastText = "";

	private bool customWaitingRender;

	private TextAlignment textAlign = TextAlignment.Center;

	private string customtext;

	private int offset
	{
		get
		{
			if (offs != 3)
			{
				return offs;
			}
			if (borderStyle == BorderStyle.Fixed3D || progressStyle == ProgressBarStyles.System || BackgroundStyle == ProgressBarBackgroundStyles.System)
			{
				return 3;
			}
			return 1;
		}
		set
		{
			offs = value;
		}
	}

	[DefaultValue(50)]
	[Category("Behavior")]
	[Description("The current value between the minimum and maximum values.")]
	public int Value
	{
		get
		{
			return ivalue;
		}
		set
		{
			if (value == ivalue)
			{
				return;
			}
			if (value > maximum)
			{
				SetValue(maximum);
				InvalidateBar(b: true);
				UpdateBar();
			}
			else if (value < minimum)
			{
				SetValue(minimum);
				InvalidateBar(b: true);
				UpdateBar();
			}
			else if (textStyle == ProgressBarTextStyles.Percentage && text && GetText() != lastText)
			{
				if (value != ivalue)
				{
					SetValue(value);
					InvalidateBar(b: true);
					UpdateBar();
				}
			}
			else if (textStyle != ProgressBarTextStyles.Percentage)
			{
				SetValue(value);
				InvalidateBar(b: true);
				UpdateBar();
			}
			else if ((int)(((double)ivalue - (double)minimum) * 100.0 / (double)(maximum - minimum) * (double)base.Width / 100.0) == (int)(((double)value - (double)minimum) * 100.0 / (double)(maximum - minimum) * (double)base.Width / 100.0))
			{
				SetValue(value);
				if (ivalue == maximum)
				{
					InvalidateBar();
					UpdateBar();
				}
			}
			else
			{
				SetValue(value);
				InvalidateBar(b: true);
				UpdateBar();
			}
		}
	}

	[DefaultValue(0)]
	[Category("Behavior")]
	[Description("The lower bound of the range of the ProgressBar.")]
	public int Minimum
	{
		get
		{
			return minimum;
		}
		set
		{
			if (value > ivalue)
			{
				if (value > maximum)
				{
					minimum = (maximum = (ivalue = value));
					InvalidateBar(b: true);
				}
				else
				{
					ivalue = value;
					InvalidateBar(b: true);
				}
				return;
			}
			bool flag = false;
			if (minimum != value)
			{
				flag = true;
			}
			minimum = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("The higher bound of the range of the ProgressBar.")]
	[DefaultValue(100)]
	[Category("Behavior")]
	public int Maximum
	{
		get
		{
			return maximum;
		}
		set
		{
			if (value < ivalue)
			{
				if (value < minimum)
				{
					minimum = (maximum = (ivalue = value));
					InvalidateBar(b: true);
				}
				else
				{
					ivalue = value;
					maximum = value;
					InvalidateBar(b: true);
				}
				return;
			}
			bool flag = false;
			if (maximum != value)
			{
				flag = true;
			}
			maximum = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(10)]
	[Description("The amount to increment the value of the ProgressBar when Increment() is called")]
	[Category("Behavior")]
	public int Step
	{
		get
		{
			return step;
		}
		set
		{
			step = value;
		}
	}

	[Category("Foreground Gradient")]
	[Description("Indicates whether the waiting gradient will be replaced by another custom waiting render which is defaulted to segments.")]
	public bool CustomWaitingRender
	{
		get
		{
			return customWaitingRender;
		}
		set
		{
			if (customWaitingRender != value)
			{
				customWaitingRender = value;
				InvalidateBar();
			}
		}
	}

	[Description("Determines the width of the waiting gradient.")]
	[Category("Foreground Gradient")]
	public int WaitingGradientWidth
	{
		get
		{
			return waitingGradientRect.Width;
		}
		set
		{
			waitingGradientRect.Width = value;
			RefreshBrushes();
		}
	}

	[DefaultValue(false)]
	[Description("Determines if the waiting gradient is enabled.")]
	[Category("Foreground Gradient")]
	public bool WaitingGradientEnabled
	{
		get
		{
			return timer.Enabled;
		}
		set
		{
			timer.Enabled = value;
		}
	}

	[Category("Foreground Gradient")]
	[Description("Determines the interval of the waiting gradient.")]
	[DefaultValue(10)]
	public int WaitingGradientInterval
	{
		get
		{
			return timer.Interval;
		}
		set
		{
			timer.Interval = value;
		}
	}

	[Category("Foreground Gradient")]
	[DefaultValue(true)]
	[Description("Determines if the foreground is segmented.")]
	public bool ForeSegments
	{
		get
		{
			return foreSegments;
		}
		set
		{
			bool flag = false;
			if (foreSegments != value)
			{
				flag = true;
			}
			foreSegments = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(true)]
	[Description("Determines if the multiple gradient will be stretched.")]
	[Category("Foreground Gradient")]
	public bool StretchMultGrad
	{
		get
		{
			return stretchMultGrad;
		}
		set
		{
			bool flag = false;
			if (stretchMultGrad != value && progressStyle == ProgressBarStyles.MultipleGradient)
			{
				flag = true;
			}
			stretchMultGrad = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("The array of colors used in multiple gradients of the foreground.")]
	[Category("Foreground Gradient")]
	public Color[] MultipleColors
	{
		get
		{
			Color[] array = new Color[foreColors.Count];
			for (int i = 0; i < foreColors.Count; i++)
			{
				array.SetValue((Color)foreColors[i], i);
			}
			return array;
		}
		set
		{
			foreColors.Clear();
			for (int i = 0; i < value.Length; i++)
			{
				foreColors.Add(value[i]);
			}
			RefreshBrushes();
			if (progressStyle == ProgressBarStyles.MultipleGradient)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Foreground Gradient")]
	[Description("The start color of the dual gradient of the foreground.")]
	public Color GradientStartColor
	{
		get
		{
			return foreStartColor;
		}
		set
		{
			bool flag = false;
			if (foreStartColor != value && progressStyle == ProgressBarStyles.Gradient)
			{
				flag = true;
			}
			foreStartColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Foreground Gradient")]
	[Description("The end color of the dual gradient of the foreground.")]
	public Color GradientEndColor
	{
		get
		{
			return foreEndColor;
		}
		set
		{
			bool flag = false;
			if (foreEndColor != value && progressStyle == ProgressBarStyles.Gradient)
			{
				flag = true;
			}
			foreEndColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Description("The middle color of the tube of the foreground.")]
	[Category("Foreground Gradient")]
	public Color TubeStartColor
	{
		get
		{
			return tubeStartColor;
		}
		set
		{
			bool flag = false;
			if (tubeStartColor != value && progressStyle == ProgressBarStyles.Tube)
			{
				flag = true;
			}
			tubeStartColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Description("The outer color of the tube of the foreground.")]
	[Category("Foreground Gradient")]
	public Color TubeEndColor
	{
		get
		{
			return tubeEndColor;
		}
		set
		{
			bool flag = false;
			if (tubeEndColor != value && progressStyle == ProgressBarStyles.Tube)
			{
				flag = true;
			}
			tubeEndColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[DefaultValue(true)]
	[Category("Background Gradient")]
	[Description("Determines if the background is segmented.")]
	public bool BackSegments
	{
		get
		{
			return backSegments;
		}
		set
		{
			bool flag = false;
			if (backSegments != value)
			{
				flag = true;
			}
			backSegments = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Background Gradient")]
	[Description("The array of colors used to draw the multiple gradient of the background.")]
	public Color[] BackMultipleColors
	{
		get
		{
			Color[] array = new Color[backColors.Count];
			for (int i = 0; i < backColors.Count; i++)
			{
				array.SetValue((Color)backColors[i], i);
			}
			return array;
		}
		set
		{
			backColors.Clear();
			for (int i = 0; i < value.Length; i++)
			{
				backColors.Add(value[i]);
			}
			RefreshBrushes();
			if (backgroundStyle == ProgressBarBackgroundStyles.MultipleGradient)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("The start color of the dual gradient of the background.")]
	[Category("Background Gradient")]
	public Color BackGradientStartColor
	{
		get
		{
			return backStartColor;
		}
		set
		{
			bool flag = false;
			if (backStartColor != value && backgroundStyle == ProgressBarBackgroundStyles.Gradient)
			{
				flag = true;
			}
			backStartColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Category("Background Gradient")]
	[Description("The end color of the dual gradient of the background.")]
	public Color BackGradientEndColor
	{
		get
		{
			return backEndColor;
		}
		set
		{
			bool flag = false;
			if (backEndColor != value && backgroundStyle == ProgressBarBackgroundStyles.Gradient)
			{
				flag = true;
			}
			backEndColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Category("Background Gradient")]
	[Description("The middle color of the tube of the background.")]
	public Color BackTubeStartColor
	{
		get
		{
			return backTubeStartColor;
		}
		set
		{
			bool flag = false;
			if (backTubeStartColor != value && backgroundStyle == ProgressBarBackgroundStyles.Tube)
			{
				flag = true;
			}
			backTubeStartColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Description("The outer color of the tube of the background.")]
	[Category("Background Gradient")]
	public Color BackTubeEndColor
	{
		get
		{
			return backTubeEndColor;
		}
		set
		{
			bool flag = false;
			if (backTubeEndColor != value && backgroundStyle == ProgressBarBackgroundStyles.Tube)
			{
				flag = true;
			}
			backTubeEndColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(TextAlignment.Center)]
	[Description("Indicates the text alignment of the ProgressBarAdv.")]
	public TextAlignment TextAlignment
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
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(true)]
	[Description("Determines if the foreground image will be stretched.")]
	public bool StretchImage
	{
		get
		{
			return stretchImage;
		}
		set
		{
			bool flag = false;
			if (stretchImage != value && progressStyle == ProgressBarStyles.Image)
			{
				flag = true;
			}
			stretchImage = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(true)]
	[Description("The image used to draw the foreground.")]
	[Category("Appearance")]
	public Image ForegroundImage
	{
		get
		{
			return foregroundImage;
		}
		set
		{
			bool flag = false;
			if (foregroundImage != value && progressStyle == ProgressBarStyles.Image)
			{
				flag = true;
			}
			foregroundImage = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar();
			}
		}
	}

	[Description("The width of the segments.")]
	[Category("Appearance")]
	public int SegmentWidth
	{
		get
		{
			return segmentwidth;
		}
		set
		{
			bool flag = false;
			if (segmentwidth != value && foreSegments)
			{
				flag = true;
			}
			segmentwidth = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Appearance")]
	[Description("The color of the font used to draw the text of the ProgressBar.")]
	public Color FontColor
	{
		get
		{
			return fontColor;
		}
		set
		{
			bool flag = false;
			if (fontColor != value && text)
			{
				flag = true;
			}
			fontColor = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("The color used to draw the foreground in segment mode and constant mode.")]
	public override Color ForeColor
	{
		get
		{
			return foregroundColor;
		}
		set
		{
			bool flag = false;
			if (foregroundColor != value && progressStyle == ProgressBarStyles.Constant)
			{
				flag = true;
			}
			base.ForeColor = value;
			foregroundColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("Determines if the text of the Progressbar is visible.")]
	[Category("Appearance")]
	[DefaultValue(true)]
	public bool TextVisible
	{
		get
		{
			return text;
		}
		set
		{
			bool flag = false;
			if (text != value)
			{
				flag = true;
			}
			text = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("Determines the style of the text.")]
	[DefaultValue(ProgressBarTextStyles.Percentage)]
	[Category("Appearance")]
	public ProgressBarTextStyles TextStyle
	{
		get
		{
			return textStyle;
		}
		set
		{
			bool flag = false;
			if (textStyle != value && text)
			{
				flag = true;
			}
			textStyle = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("Determines the orientation of the text.")]
	[DefaultValue(Orientation.Horizontal)]
	[Category("Appearance")]
	public Orientation TextOrientation
	{
		get
		{
			return textOrientation;
		}
		set
		{
			bool flag = false;
			if (textOrientation != value && text)
			{
				flag = true;
			}
			textOrientation = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines if the text shadow is visible.")]
	[DefaultValue(true)]
	public bool TextShadow
	{
		get
		{
			return textShadow;
		}
		set
		{
			textShadow = value;
			if (text)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("Determines the Custom Text for setting the center Text for the ProgressBarAdv instead of percentage and values. This will be applied only when we set the ProgressBarTextStyles as Custom")]
	[Category("Appearance")]
	public string CustomText
	{
		get
		{
			return customtext;
		}
		set
		{
			customtext = value;
			Refresh();
		}
	}

	[DefaultValue(ProgressBarStyles.Constant)]
	[Description("Determines the foreground drawing style.")]
	[Category("Appearance")]
	public ProgressBarStyles ProgressStyle
	{
		get
		{
			return progressStyle;
		}
		set
		{
			bool flag = false;
			if (progressStyle != value)
			{
				flag = true;
			}
			progressStyle = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(ProgressBarStyles.Constant)]
	[Description("Determines the foreground drawing style if System is selected and the themes are not supported by the machine.")]
	[Category("Appearance")]
	public ProgressBarStyles ProgressFallbackStyle
	{
		get
		{
			return progressFallbackStyle;
		}
		set
		{
			if (progressFallbackStyle != value)
			{
				progressFallbackStyle = value;
				RefreshBrushes();
				InvalidateBar();
			}
		}
	}

	[Description("Determines the style of the 3Dborder.")]
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
			bool flag = false;
			if (border3DStyle != value && borderStyle == BorderStyle.Fixed3D)
			{
				flag = true;
			}
			border3DStyle = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Appearance")]
	[Description("Determines the style of the border.")]
	[DefaultValue(BorderStyle.Fixed3D)]
	public BorderStyle BorderStyle
	{
		get
		{
			return borderStyle;
		}
		set
		{
			bool flag = false;
			if (borderStyle != value)
			{
				flag = true;
			}
			borderStyle = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Category("Appearance")]
	[DefaultValue(ButtonBorderStyle.Solid)]
	[Description("Determines the style of the thin border.")]
	public ButtonBorderStyle BorderSingle
	{
		get
		{
			return borderSingle;
		}
		set
		{
			bool flag = false;
			if (borderSingle != value && borderStyle == BorderStyle.FixedSingle)
			{
				flag = true;
			}
			borderSingle = value;
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[Description("Determines the color of the thin border.")]
	[Category("Appearance")]
	public Color BorderColor
	{
		get
		{
			return borderColor;
		}
		set
		{
			bool flag = false;
			if (borderColor != value && borderStyle == BorderStyle.FixedSingle)
			{
				flag = true;
			}
			borderColor = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(ProgressBarBackgroundStyles.None)]
	[Category("Appearance")]
	[Description("Determines the background style.")]
	public ProgressBarBackgroundStyles BackgroundStyle
	{
		get
		{
			return backgroundStyle;
		}
		set
		{
			bool flag = false;
			if (backgroundStyle != value)
			{
				flag = true;
			}
			backgroundStyle = value;
			RefreshBrushes();
			if (flag)
			{
				InvalidateBar(b: true);
			}
		}
	}

	[DefaultValue(ProgressBarBackgroundStyles.None)]
	[Category("Appearance")]
	[Description("Determines the background style when System mode is selected and the machine doesn't support Themes.")]
	public ProgressBarBackgroundStyles BackgroundFallbackStyle
	{
		get
		{
			return backgroundFallbackStyle;
		}
		set
		{
			backgroundFallbackStyle = value;
		}
	}

	[Category("Appearance")]
	[DefaultValue(Orientation.Horizontal)]
	[Description("Determines the ProgressBar orientation.")]
	public Orientation ProgressOrientation
	{
		get
		{
			return progressOrientation;
		}
		set
		{
			if (value != progressOrientation)
			{
				int num = base.Width;
				base.Width = base.Height;
				base.Height = num;
				progressOrientation = value;
				RefreshBrushes();
				InvalidateBar(b: true);
			}
		}
	}

	[Description(" Handle this event to set the text of the progressbar when the value changes. Make sure the TextStyle property is set to Custom.")]
	public event ProgressBarValueChangedEventHandler ValueChanged;

	[Description("Handle this event to draw a custom waiting render. WaitingCustomRender must be set to True.")]
	public event ProgressBarAdvDrawEventHandler DrawWaitingCustomRender;

	protected virtual void OnValueChanged(ProgressBarValueChangedEventArgs e)
	{
		if (this.ValueChanged != null)
		{
			this.ValueChanged(this, e);
		}
	}

	protected virtual void OnDrawWaitingCustomRender(ProgressBarAdvDrawEventArgs e)
	{
		if (this.DrawWaitingCustomRender != null)
		{
			this.DrawWaitingCustomRender(this, e);
		}
	}

	public void BeginInit()
	{
		inInit = true;
	}

	public void EndInit()
	{
		inInit = false;
		RefreshBrushes();
	}

	public void EndInit(bool refreshBrushes)
	{
		inInit = false;
		if (refreshBrushes)
		{
			RefreshBrushes();
		}
	}

	public ProgressBarAdv()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += SharedBaseAssembly.AssemblyResolver;
			new LicensedComponent(typeof(ProgressBarAdv));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= SharedBaseAssembly.AssemblyResolver;
		}
		SetStyle(ControlStyles.UserPaint | ControlStyles.AllPaintingInWmPaint | WhidbeyCompatibleControlStyles.DoubleBuffer | ControlStyles.SupportsTransparentBackColor, value: true);
		InitializeComponent();
		waitingGradientRect = new Rectangle(0, 0, base.Width, base.Height);
		if (XPThemes.IsThemedOS)
		{
			tc = new ThemedControlDrawing("PROGRESS", this);
		}
		RefreshBrushes();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (components != null)
			{
				components.Dispose();
			}
			if (tc != null)
			{
				tc.Dispose();
				tc = null;
			}
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		this.timer = new System.Windows.Forms.Timer(this.components);
		this.timer.Interval = 10;
		this.timer.Tick += new System.EventHandler(timer_Tick);
		base.Size = new System.Drawing.Size(400, 23);
		base.Resize += new System.EventHandler(OnResize);
		base.Paint += new System.Windows.Forms.PaintEventHandler(OnBarPaint);
	}

	private void OnBarPaint(object sender, PaintEventArgs e)
	{
		Rectangle clientRectangle = base.ClientRectangle;
		clientRectangle.Width -= offset;
		clientRectangle.Height -= offset;
		clientRectangle.X += offset;
		clientRectangle.Y += offset;
		if (maximum != minimum)
		{
			if (progressOrientation == Orientation.Horizontal)
			{
				clientRectangle.Width = (int)(((double)ivalue - (double)minimum) * 100.0 / (double)(maximum - minimum) * (double)clientRectangle.Width / 100.0);
			}
			else
			{
				clientRectangle.Height = (int)((double)ivalue - (double)minimum) * 100 / (maximum - minimum) * clientRectangle.Height / 100;
			}
		}
		bool isMirrored = GetIsMirrored();
		bool flag = progressOrientation == Orientation.Vertical;
		Graphics graphics = e.Graphics;
		if (flag)
		{
			float dx = 0f;
			float dy = 0f;
			float angle;
			if (isMirrored)
			{
				dx = base.ClientSize.Width;
				angle = 90f;
			}
			else
			{
				dy = base.ClientSize.Height;
				angle = -90f;
			}
			graphics.TranslateTransform(dx, dy);
			graphics.RotateTransform(angle);
			int num = clientRectangle.Width;
			clientRectangle.Width = clientRectangle.Height;
			clientRectangle.Height = num;
		}
		Matrix transform = graphics.Transform;
		if (isMirrored)
		{
			Matrix matrix = (flag ? new Matrix(1f, 0f, 0f, -1f, 0f, base.ClientSize.Height) : new Matrix(-1f, 0f, 0f, 1f, base.ClientSize.Width, 0f));
			matrix.Multiply(transform);
			graphics.Transform = matrix;
		}
		offset = 0;
		DrawBackground(e.Graphics, backSegments);
		offset = 3;
		DrawBorder(e.Graphics, GetClientRectangle());
		DrawProgress(graphics, clientRectangle);
		if (isMirrored)
		{
			graphics.Transform = transform;
		}
		DrawText(graphics, base.ClientRectangle);
	}

	private bool GetIsMirrored()
	{
		return RightToLeft.Yes == RightToLeft;
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		hasHandle = true;
		base.OnHandleCreated(e);
	}

	public void Draw(Graphics g, Rectangle rect)
	{
		if (progressOrientation == Orientation.Vertical)
		{
			progressOrientation = Orientation.Horizontal;
			Rectangle rect2 = rect;
			Rectangle rect3 = new Rectangle(0, 0, rect2.Height, rect2.Width);
			rect3.Offset(-rect3.X, -rect3.Y);
			Bitmap bitmap = new Bitmap(rect3.Width, rect3.Height);
			Graphics graphics = Graphics.FromImage(bitmap);
			_Draw(graphics, rect3);
			graphics.Dispose();
			bitmap.RotateFlip(RotateFlipType.Rotate270FlipNone);
			g.DrawImageUnscaled(bitmap, rect2);
			progressOrientation = Orientation.Vertical;
		}
		else
		{
			_Draw(g, rect);
		}
	}

	private void _Draw(Graphics g, Rectangle rect)
	{
		inDraw = true;
		inDrawRectangle = rect;
		if (hasHandle && base.Visible)
		{
			throw new InvalidOperationException("This method can only be called when the control has no handle attached or is not visible.");
		}
		base.Bounds = rect;
		BorderStyle = BorderStyle.None;
		RefreshBrushes();
		if (BackgroundImage != null)
		{
			g.DrawImage(srcRect: new Rectangle(0, 0, Math.Min(BackgroundImage.Width, rect.Width), Math.Min(BackgroundImage.Height, rect.Height)), image: BackgroundImage, destRect: rect, srcUnit: GraphicsUnit.Pixel);
		}
		offset = 0;
		DrawBackground(g, backSegments);
		offset = 3;
		rect.Width -= 2 * offset;
		rect.Height -= 2 * offset;
		rect.Width = (int)(((double)ivalue - (double)minimum) * 100.0 / (double)(maximum - minimum) * (double)rect.Width / 100.0);
		DrawProgress(g, rect);
		DrawText(g, inDrawRectangle);
		inDraw = false;
	}

	public void Draw(Graphics g, Rectangle clientRectangle, bool drawRightToLeft)
	{
		if (progressOrientation == Orientation.Horizontal && drawRightToLeft)
		{
			RightToLeft = RightToLeft.Yes;
			Matrix transform = g.Transform;
			Matrix matrix = transform.Clone();
			matrix.Translate(-clientRectangle.Left, -clientRectangle.Y, MatrixOrder.Append);
			Matrix matrix2 = new Matrix(-1f, 0f, 0f, 1f, clientRectangle.Width, 0f);
			matrix2.Multiply(matrix);
			matrix2.Translate(clientRectangle.Left, clientRectangle.Y, MatrixOrder.Append);
			g.Transform = matrix2;
			text = false;
			Draw(g, clientRectangle);
			text = true;
			g.Transform = transform;
			clientRectangle.Width -= 2 * offset;
			clientRectangle.Height -= 2 * offset;
			inDraw = true;
			DrawText(g, clientRectangle);
			inDraw = false;
		}
		else
		{
			RightToLeft = RightToLeft.No;
			Draw(g, clientRectangle);
		}
	}

	private Rectangle GetClientRectangle()
	{
		if (!inDraw)
		{
			return base.ClientRectangle;
		}
		return inDrawRectangle;
	}

	private Size GetClientSize()
	{
		if (!inDraw)
		{
			return base.ClientSize;
		}
		return inDrawRectangle.Size;
	}

	private int GetLeft()
	{
		if (!inDraw)
		{
			return 0;
		}
		return inDrawRectangle.Left;
	}

	private int GetTop()
	{
		if (!inDraw)
		{
			return 0;
		}
		return inDrawRectangle.Top;
	}

	private string GetText()
	{
		if (textStyle == ProgressBarTextStyles.Custom)
		{
			customtext = CustomText;
			return customtext;
		}
		if (textStyle == ProgressBarTextStyles.Percentage)
		{
			if (minimum == maximum)
			{
				return "0%";
			}
			return (int)((double)(ivalue - minimum) * 100.0 / (double)(maximum - minimum)) + "%";
		}
		return ivalue + "\\" + maximum;
	}

	private void DrawText(Graphics g, Rectangle rect)
	{
		StringFormat stringFormat = new StringFormat();
		if ((!inDraw && textOrientation == Orientation.Vertical && !Vertical()) || (textOrientation == Orientation.Horizontal && Vertical()))
		{
			stringFormat.FormatFlags = StringFormatFlags.DirectionVertical;
		}
		if (text)
		{
			string s = GetText();
			Size size = g.MeasureString(s, Font, 0, stringFormat).ToSize();
			if (Vertical())
			{
				size = new Size(size.Height, size.Width);
			}
			int num = rect.Left + (rect.Width - size.Width) / 2;
			int num2 = rect.Top + (rect.Height - size.Height) / 2;
			Point point = (Vertical() ? new Point(num2, num) : new Point(num, num2));
			if (textShadow)
			{
				g.DrawString(s, Font, Brushes.Black, new Point(point.X + 1, point.Y + 1), stringFormat);
			}
			g.DrawString(s, Font, new SolidBrush(fontColor), point, stringFormat);
			lastText = s;
		}
		stringFormat.Dispose();
	}

	private void SetValue(int value)
	{
		ivalue = value;
		ProgressBarValueChangedEventArgs e = new ProgressBarValueChangedEventArgs();
		OnValueChanged(e);
		if (e.Handled)
		{
			customtext = e.Text;
		}
	}

	private void InvalidateBar()
	{
		if (!inInit)
		{
			Invalidate();
		}
	}

	private void InvalidateBar(bool b)
	{
		if (!inInit)
		{
			Invalidate(b);
		}
	}

	private void UpdateBar()
	{
		if (!inInit)
		{
			Update();
		}
	}

	private void RefreshWaitingGradientBrush()
	{
		try
		{
			foreWaitingGradientBrush = new LinearGradientBrush(new Point(waitingGradientRect.X, 0), new Point(waitingGradientRect.X + WaitingGradientWidth, 0), foreStartColor, foreEndColor);
			ColorBlend colorBlend = new ColorBlend(3);
			colorBlend.Colors = new Color[3] { foreStartColor, foreEndColor, foreStartColor };
			colorBlend.Positions = new float[3] { 0f, 0.5f, 1f };
			((LinearGradientBrush)foreWaitingGradientBrush).InterpolationColors = colorBlend;
		}
		catch
		{
			foreWaitingGradientBrush = new SolidBrush(foreStartColor);
		}
	}

	public void RefreshBrushes()
	{
		if (!inInit && base.Height > 0 && base.Width > 0)
		{
			vbackGradBrush = new LinearGradientBrush(new Point(GetLeft(), GetTop()), new Point(GetLeft(), GetTop() + (Vertical() ? base.Width : base.Height)), backStartColor, backEndColor);
			backFillBrush = new SolidBrush(BackColor);
			foreFillBrush = new SolidBrush(foregroundColor);
			foreGradientBrush = new LinearGradientBrush(new Point(GetLeft(), GetTop()), new Point(GetLeft() + (Vertical() ? base.Height : base.Width), GetTop()), foreStartColor, foreEndColor);
			RefreshWaitingGradientBrush();
			backGradientBrush = new LinearGradientBrush(new Point(GetLeft(), GetTop()), new Point(GetLeft() + (Vertical() ? base.Width : 0), GetTop() + ((!Vertical()) ? base.Height : 0)), backStartColor, backEndColor);
			foreTubeBrush = new LinearGradientBrush(new Point(GetLeft(), GetTop()), new Point(GetLeft(), GetTop() + (Vertical() ? base.Width : base.Height)), tubeStartColor, tubeEndColor);
			ColorBlend colorBlend = new ColorBlend(3);
			colorBlend.Colors = new Color[3] { tubeEndColor, tubeStartColor, tubeEndColor };
			colorBlend.Positions = new float[3] { 0f, 0.5f, 1f };
			((LinearGradientBrush)foreTubeBrush).InterpolationColors = colorBlend;
			backTubeBrush = new LinearGradientBrush(new Point(GetLeft(), GetTop()), new Point(GetLeft(), GetTop() + (Vertical() ? base.Width : base.Height)), backTubeStartColor, backTubeEndColor);
			ColorBlend colorBlend2 = new ColorBlend(3);
			colorBlend2.Colors = new Color[3] { backTubeEndColor, backTubeStartColor, backTubeEndColor };
			colorBlend2.Positions = new float[3] { 0f, 0.5f, 1f };
			((LinearGradientBrush)backTubeBrush).InterpolationColors = colorBlend2;
		}
	}

	private void DrawBackground(Graphics g, bool segmented)
	{
		if (backgroundStyle == ProgressBarBackgroundStyles.System)
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive && ThemesEnabled)
			{
				if (!Vertical())
				{
					if (GetIsMirrored())
					{
						Rectangle clientRectangle = GetClientRectangle();
						Rectangle rectangle = clientRectangle;
						rectangle.Offset(-rectangle.X, -rectangle.Y);
						Bitmap image = new Bitmap(clientRectangle.Width, clientRectangle.Height);
						Graphics graphics = Graphics.FromImage(image);
						tc.DrawThemeBackground(graphics, 1, 1, rectangle);
						graphics.Dispose();
						g.DrawImageUnscaled(image, clientRectangle);
					}
					else
					{
						tc.DrawThemeBackground(g, 1, 1, GetClientRectangle());
					}
				}
				else
				{
					g.ResetTransform();
					tc.DrawThemeBackground(g, 2, 1, GetClientRectangle());
					g.TranslateTransform(0f, GetClientSize().Height);
					g.RotateTransform(-90f);
				}
			}
			else
			{
				BackgroundStyle = BackgroundFallbackStyle;
			}
		}
		if (backgroundStyle == ProgressBarBackgroundStyles.Gradient)
		{
			DrawGradient(g, GetClientRectangle(), backSegments, fore: false);
		}
		if (backgroundStyle == ProgressBarBackgroundStyles.VerticalGradient)
		{
			if (!segmented)
			{
				Rectangle rect = new Rectangle(GetLeft(), GetTop(), Vertical() ? base.Height : base.Width, Vertical() ? base.Width : base.Height);
				g.FillRectangle(vbackGradBrush, rect);
			}
			else
			{
				g.FillRectangle(new SolidBrush(Color.FromKnownColor(KnownColor.Control)), GetLeft(), GetTop(), Vertical() ? base.Height : base.Width, Vertical() ? base.Width : base.Height);
				g.FillRegion(vbackGradBrush, GetSegmentRegion(new Rectangle(GetLeft() + offset, GetTop() + offset, Vertical() ? base.Height : base.Width, Vertical() ? base.Width : base.Height), isoffset: true));
			}
		}
		if (backgroundStyle == ProgressBarBackgroundStyles.Tube)
		{
			DrawTube(g, new Rectangle(GetLeft(), GetTop(), Vertical() ? base.Height : base.Width, Vertical() ? base.Width : base.Height), backSegments, fore: false);
		}
		if (backgroundStyle == ProgressBarBackgroundStyles.MultipleGradient)
		{
			DrawMultipleGradient(g, GetClientRectangle(), backColors, backSegments, fore: false);
		}
		if (backgroundStyle == ProgressBarBackgroundStyles.None)
		{
			g.FillRectangle(backFillBrush, GetLeft(), GetTop(), Vertical() ? base.Height : base.Width, Vertical() ? base.Width : base.Height);
		}
	}

	private void DrawProgress(Graphics g, Rectangle rect)
	{
		if (progressStyle == ProgressBarStyles.WaitingGradient)
		{
			DrawWaitingGradient(g);
		}
		if (rect.Width <= 0 || rect.Height <= 0)
		{
			return;
		}
		if (progressStyle == ProgressBarStyles.System)
		{
			if (XPThemes.IsThemedOS && XPThemes.IsAppThemed && XPThemes.IsThemeActive && ThemesEnabled)
			{
				DrawSystemSegments(g, rect);
			}
			else
			{
				ProgressStyle = ProgressFallbackStyle;
			}
		}
		if (progressStyle == ProgressBarStyles.Constant)
		{
			DrawFillColor(g, rect, foreSegments, fore: true);
		}
		if (progressStyle == ProgressBarStyles.Gradient)
		{
			DrawGradient(g, rect, foreSegments, fore: true);
		}
		if (progressStyle == ProgressBarStyles.Image)
		{
			DrawImage(g, rect, foregroundImage);
		}
		if (progressStyle == ProgressBarStyles.Tube)
		{
			DrawTube(g, rect, foreSegments, fore: true);
		}
		if (progressStyle == ProgressBarStyles.MultipleGradient)
		{
			DrawMultipleGradient(g, rect, foreColors, foreSegments, fore: true);
		}
	}

	private void DrawBorder(Graphics g, Rectangle rc)
	{
		if (borderStyle == BorderStyle.Fixed3D)
		{
			ControlPaint.DrawBorder3D(g, rc, border3DStyle);
		}
		if (borderStyle == BorderStyle.FixedSingle)
		{
			ControlPaint.DrawBorder(g, rc, borderColor, borderSingle);
		}
	}

	private void DrawFillColor(Graphics g, Rectangle rc, bool fore)
	{
		g.FillRectangle(fore ? foreFillBrush : backFillBrush, rc);
	}

	private void DrawFillColor(Graphics g, Rectangle rc, bool segmented, bool fore)
	{
		if (!segmented)
		{
			g.FillRectangle(fore ? foreFillBrush : backFillBrush, new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Width, rc.Height));
		}
		else
		{
			g.FillRegion(fore ? foreFillBrush : backFillBrush, GetSegmentRegion(rc, isoffset: true));
		}
	}

	private void DrawSystemSegments(Graphics g, Rectangle rc)
	{
		int num = 8;
		if (!Vertical())
		{
			int num2 = rc.Width / (num + 2) + ((rc.Width > 0) ? 1 : 0);
			Rectangle rectangle = new Rectangle(GetLeft() + offset, GetTop() + offset, num2 * (num + 2), rc.Height - offset);
			if (rectangle.Width > base.Width - 2 * offset)
			{
				rectangle.Width = rc.Width;
			}
			if (GetIsMirrored())
			{
				Rectangle rectangle2 = rectangle;
				Rectangle rectangle3 = rectangle2;
				rectangle3.Offset(-rectangle3.X, -rectangle3.Y);
				Bitmap image = new Bitmap(rectangle2.Width, rectangle2.Height);
				Graphics graphics = Graphics.FromImage(image);
				tc.DrawThemeBackground(graphics, 3, 1, rectangle3);
				graphics.Dispose();
				g.DrawImageUnscaled(image, rectangle2);
			}
			else
			{
				tc.DrawThemeBackground(g, 3, 1, rectangle);
			}
		}
		else
		{
			g.ResetTransform();
			int num3 = rc.Width / (num + 2) + ((rc.Width > 0) ? 1 : 0);
			Rectangle rectangle4 = new Rectangle(GetLeft() + offset, GetTop() + base.Height - num3 * (num + 2) - offset, rc.Height - offset, num3 * (num + 2));
			if (rectangle4.Height > base.Height - 2 * offset)
			{
				Rectangle rectangle5 = new Rectangle(GetLeft() + offset, GetTop() + base.Height - (num3 - 1) * (num + 2) - offset, rc.Height - offset, (num3 - 1) * (num + 2));
				tc.DrawThemeBackground(g, 4, 1, rectangle5);
				int num4 = base.Height - rectangle5.Height - offset * 2;
				tc.DrawThemeBackground(g, 4, 1, new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Height - offset, num4));
			}
			else
			{
				tc.DrawThemeBackground(g, 4, 1, rectangle4);
			}
			g.TranslateTransform(0f, GetClientSize().Height);
			g.RotateTransform(-90f);
		}
	}

	private void DrawGradient(Graphics g, Rectangle rc, bool segmented, bool fore)
	{
		if (!segmented)
		{
			g.FillRectangle(fore ? foreGradientBrush : backGradientBrush, new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Width - offset, rc.Height - offset));
		}
		else
		{
			g.FillRegion(fore ? foreGradientBrush : backGradientBrush, GetSegmentRegion(rc, isoffset: true));
		}
	}

	private void DrawImage(Graphics g, Rectangle rc, Image img)
	{
		if (img == null)
		{
			return;
		}
		int num = img.Width;
		int srcHeight = img.Height;
		if (stretchImage)
		{
			g.DrawImage(img, new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Width, rc.Height), 0, 0, num, srcHeight, GraphicsUnit.Pixel);
			return;
		}
		int num2 = rc.Width / num;
		Rectangle destRect = new Rectangle(GetLeft() + offset, GetTop() + offset, num, rc.Height - offset);
		for (int i = 0; i < num2; i++)
		{
			g.DrawImage(img, destRect, 0, 0, num, rc.Height, GraphicsUnit.Pixel);
			destRect.Offset(num, 0);
		}
		destRect.Width = rc.Width - num2 * num;
		g.DrawImage(img, destRect, 0, 0, rc.Width - num2 * num, rc.Height, GraphicsUnit.Pixel);
	}

	private void DrawTube(Graphics g, Rectangle rc, bool segmented, bool fore)
	{
		Brush brush = (fore ? foreTubeBrush : backTubeBrush);
		if (!segmented)
		{
			Rectangle rect = new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Width, rc.Height);
			rect.Intersect(GetClipRect(isoffset: true));
			g.FillRectangle(brush, rect);
		}
		else
		{
			g.FillRegion(brush, GetSegmentRegion(rc, isoffset: true));
		}
	}

	private void DrawMultipleGradient(Graphics g, Rectangle rc, ArrayList foreColors, bool segmented, bool fore)
	{
		if (foreColors.Count == 0)
		{
			return;
		}
		if (foreColors.Count == 1)
		{
			g.FillRectangle(new SolidBrush((Color)foreColors[0]), rc);
			return;
		}
		Bitmap bitmap = ((!stretchMultGrad) ? new Bitmap(Vertical() ? base.Height : (base.Width - 2 * offset), rc.Height, g) : new Bitmap(rc.Width, rc.Height, g));
		Graphics graphics = Graphics.FromImage(bitmap);
		LinearGradientBrush linearGradientBrush = new LinearGradientBrush(new Point(0, offset), new Point(bitmap.Width, offset), Color.Black, Color.Black);
		ColorBlend colorBlend = new ColorBlend(foreColors.Count);
		for (int i = 0; i < foreColors.Count; i++)
		{
			colorBlend.Colors.SetValue(foreColors[i], i);
			colorBlend.Positions.SetValue((float)i / (float)(foreColors.Count - 1), i);
		}
		linearGradientBrush.InterpolationColors = colorBlend;
		if (!segmented)
		{
			graphics.FillRectangle(linearGradientBrush, new Rectangle(GetLeft(), GetTop(), bitmap.Width, rc.Height));
			g.DrawImage(bitmap, new Rectangle(GetLeft() + offset, GetTop() + offset, rc.Width, rc.Height - offset), 0, 0, rc.Width, rc.Height, GraphicsUnit.Pixel);
		}
		else
		{
			int num = rc.Width / (segmentwidth + 2) + ((rc.Width > 0) ? 1 : 0);
			graphics.FillRegion(linearGradientBrush, GetSegmentRegion(rc, isoffset: false));
			g.DrawImage(bitmap, new Rectangle(GetLeft() + offset, GetTop() + offset, num * (segmentwidth + 2), rc.Height - offset), 0, 0, num * (segmentwidth + 2), rc.Height, GraphicsUnit.Pixel);
		}
	}

	private void DrawWaitingGradient(Graphics g)
	{
		if (!Vertical())
		{
			g.SetClip(new Rectangle(GetLeft() + offset, GetTop() + offset, base.Width - offset * 2, base.Height - offset * 2));
		}
		else
		{
			g.SetClip(new Rectangle(GetLeft() + offset, GetTop() + offset, base.Height - 2 * offset, base.Width - 2 * offset));
		}
		Rectangle rect = new Rectangle(GetLeft() + waitingGradientRect.X, GetTop() + offset, waitingGradientRect.Width, (Vertical() ? base.Width : base.Height) - 2 * offset);
		if (CustomWaitingRender)
		{
			ProgressBarAdvDrawEventArgs e = new ProgressBarAdvDrawEventArgs(g, rect);
			OnDrawWaitingCustomRender(e);
			if (!e.Handled)
			{
				Rectangle rect2 = new Rectangle(rect.Left, rect.Top, segmentwidth, rect.Height);
				int num = (int)((float)WaitingGradientWidth / ((float)segmentwidth + 2f) + 1f);
				Region region = new Region();
				region.MakeEmpty();
				for (int i = 0; i < num; i++)
				{
					region.Union(rect2);
					rect2.Offset(segmentwidth + 2, 0);
				}
				switch (ProgressFallbackStyle)
				{
				case ProgressBarStyles.Constant:
					g.FillRegion(foreFillBrush, region);
					break;
				case ProgressBarStyles.Gradient:
					g.FillRegion(foreGradientBrush, region);
					break;
				case ProgressBarStyles.System:
				{
					rect2 = new Rectangle(rect.Left, rect.Top, segmentwidth, rect.Height);
					for (int k = 0; k < num; k++)
					{
						DrawWaitingSegment(g, rect2);
						rect2.Offset(segmentwidth + 2, 0);
					}
					break;
				}
				case ProgressBarStyles.Tube:
					g.FillRegion(foreTubeBrush, region);
					break;
				default:
				{
					rect2 = new Rectangle(rect.Left, rect.Top, segmentwidth, rect.Height);
					for (int j = 0; j < num; j++)
					{
						DrawWaitingSegment(g, rect2);
						rect2.Offset(segmentwidth + 2, 0);
					}
					break;
				}
				}
			}
		}
		else
		{
			g.FillRectangle(foreWaitingGradientBrush, rect);
		}
		g.ResetClip();
	}

	private void DrawWaitingSegment(Graphics g, Rectangle small)
	{
		if (tc != null)
		{
			tc.DrawThemeBackground(g, 3, 1, small);
		}
		else
		{
			DrawFillColor(g, small, fore: true);
		}
	}

	private Region GetSegmentRegion(Rectangle rc, bool isoffset)
	{
		Region region = new Region();
		region.MakeEmpty();
		int num = rc.Width / (segmentwidth + 2) + ((rc.Width > 0) ? 1 : 0);
		Rectangle rect = new Rectangle(GetLeft() + (isoffset ? offset : 0), GetTop() + (isoffset ? offset : 0), segmentwidth, rc.Height);
		for (int i = 0; i < num; i++)
		{
			region.Union(rect);
			rect.Offset(segmentwidth + 2, 0);
		}
		Rectangle clipRect = GetClipRect(isoffset);
		region.Intersect(clipRect);
		return region;
	}

	private Rectangle GetClipRect(bool isoffset)
	{
		Rectangle result = (Vertical() ? new Rectangle(GetLeft(), GetTop(), base.Height, base.Width) : new Rectangle(GetLeft(), GetTop(), base.Width, base.Height));
		if (isoffset)
		{
			result.Offset(offset, offset);
			result.Width -= 2 * offset;
			result.Height -= 2 * offset;
		}
		return result;
	}

	private bool Vertical()
	{
		if (progressOrientation == Orientation.Vertical)
		{
			return true;
		}
		return false;
	}

	private void OnResize(object sender, EventArgs e)
	{
		RefreshBrushes();
		InvalidateBar(b: true);
	}

	public bool Increment()
	{
		int value = Value;
		Value += step;
		return Value == value + step;
	}

	public bool Decrement()
	{
		int value = Value;
		Value -= step;
		return Value == value - step;
	}

	private void timer_Tick(object sender, EventArgs e)
	{
		waitingGradientRect.Offset(step, 0);
		if (waitingGradientRect.X > (Vertical() ? base.Height : base.Width))
		{
			waitingGradientRect.X = -waitingGradientRect.Width;
		}
		RefreshWaitingGradientBrush();
		InvalidateBar();
	}
}
