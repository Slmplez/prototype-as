using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

public class GridProgressBarInfo : StyleInfoSubObjectBase
{
	private static GridProgressBarInfo defaultProgressBarInfo;

	public static GridProgressBarInfo Default
	{
		[DebuggerStepThrough]
		get
		{
			if (defaultProgressBarInfo == null)
			{
				defaultProgressBarInfo = new GridProgressBarInfo();
				defaultProgressBarInfo.ProgressValue = 50;
				defaultProgressBarInfo.Minimum = 0;
				defaultProgressBarInfo.Maximum = 100;
				defaultProgressBarInfo.Step = 10;
				defaultProgressBarInfo.ForeSegments = true;
				defaultProgressBarInfo.StretchMultGrad = true;
				defaultProgressBarInfo.MultipleColors = new Color[0];
				defaultProgressBarInfo.GradientStartColor = Color.Red;
				defaultProgressBarInfo.GradientEndColor = Color.Lime;
				defaultProgressBarInfo.TubeStartColor = Color.Red;
				defaultProgressBarInfo.TubeEndColor = Color.Black;
				defaultProgressBarInfo.BackSegments = false;
				defaultProgressBarInfo.BackMultipleColors = new Color[0];
				defaultProgressBarInfo.BackGradientStartColor = Color.LightGray;
				defaultProgressBarInfo.BackGradientEndColor = Color.White;
				defaultProgressBarInfo.BackTubeStartColor = Color.LightGray;
				defaultProgressBarInfo.BackTubeEndColor = Color.White;
				defaultProgressBarInfo.StretchImage = true;
				defaultProgressBarInfo.ForegroundImage = null;
				defaultProgressBarInfo.BackgroundImage = null;
				defaultProgressBarInfo.SegmentWidth = 12;
				defaultProgressBarInfo.FontColor = Color.White;
				defaultProgressBarInfo.ForeColor = Color.DarkCyan;
				defaultProgressBarInfo.TextVisible = true;
				defaultProgressBarInfo.TextStyle = ProgressBarTextStyles.Percentage;
				defaultProgressBarInfo.ProgressOrientation = Orientation.Horizontal;
				defaultProgressBarInfo.TextShadow = true;
				defaultProgressBarInfo.ProgressStyle = ProgressBarStyles.Constant;
				defaultProgressBarInfo.ProgressFallbackStyle = ProgressBarStyles.Constant;
				defaultProgressBarInfo.BackgroundStyle = ProgressBarBackgroundStyles.None;
				defaultProgressBarInfo.BackgroundFallbackStyle = ProgressBarBackgroundStyles.None;
			}
			return defaultProgressBarInfo;
		}
	}

	[Description("The current value between the minimum and maximum values")]
	[Category("Behavior")]
	public int ProgressValue
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridProgressBarInfoStore.ProgressValueProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ProgressValueProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasProgressValue
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ProgressValueProperty);
		}
	}

	[Description("The lower bound of the range of the ProgressBar")]
	[Category("Behavior")]
	public int Minimum
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridProgressBarInfoStore.MinimumProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.MinimumProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasMinimum
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.MinimumProperty);
		}
	}

	[Category("Behavior")]
	[Description("The higher bound of the range of the ProgressBar")]
	public int Maximum
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridProgressBarInfoStore.MaximumProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.MaximumProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasMaximum
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.MaximumProperty);
		}
	}

	[Description("The amount to increment the value of the ProgressBar when Increment() is called")]
	[Category("Behavior")]
	public int Step
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridProgressBarInfoStore.StepProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.StepProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStep
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.StepProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("Determines if the foreground is segmented")]
	public bool ForeSegments
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.ForeSegmentsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ForeSegmentsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasForeSegments
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ForeSegmentsProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("Determines if the multiple gradient will be stretched.")]
	public bool StretchMultGrad
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.StretchMultGradProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.StretchMultGradProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStretchMultGrad
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.StretchMultGradProperty);
		}
	}

	[Description("The array of colors used in the multiple gradient of the foreground.")]
	[Category("Foreground Gradient")]
	public Color[] MultipleColors
	{
		[DebuggerStepThrough]
		get
		{
			return (Color[])GetValue(GridProgressBarInfoStore.MultipleColorsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.MultipleColorsProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasMultipleColors
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.MultipleColorsProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("The start color of the dual gradient of the foreground.")]
	public Color GradientStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.GradientStartColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.GradientStartColorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasGradientStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.GradientStartColorProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("The end color of the dual gradient of the foreground.")]
	public Color GradientEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.GradientEndColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.GradientEndColorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasGradientEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.GradientEndColorProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("The middle color of the tube of the foreground.")]
	public Color TubeStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.TubeStartColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.TubeStartColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTubeStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.TubeStartColorProperty);
		}
	}

	[Category("Foreground Gradient")]
	[Description("The outer color of the tube of the foreground.")]
	public Color TubeEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.TubeEndColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.TubeEndColorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTubeEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.TubeEndColorProperty);
		}
	}

	[Description("Determines if the background is segmented.")]
	[Category("Background Gradient")]
	public bool BackSegments
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.BackSegmentsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackSegmentsProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackSegments
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackSegmentsProperty);
		}
	}

	[Description("The array of colors used to draw the multiple gradient of the background.")]
	[Category("Background Gradient")]
	public Color[] BackMultipleColors
	{
		[DebuggerStepThrough]
		get
		{
			return (Color[])GetValue(GridProgressBarInfoStore.BackMultipleColorsProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackMultipleColorsProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackMultipleColors
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackMultipleColorsProperty);
		}
	}

	[Category("Background Gradient")]
	[Description("The start color of the dual gradient of the background.")]
	public Color BackGradientStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.BackGradientStartColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackGradientStartColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackGradientStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackGradientStartColorProperty);
		}
	}

	[Description("The end color of the dual gradient of the background.")]
	[Category("Background Gradient")]
	public Color BackGradientEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.BackGradientEndColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackGradientEndColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackGradientEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackGradientEndColorProperty);
		}
	}

	[Description("The middle color of the tube of the background.")]
	[Category("Background Gradient")]
	public Color BackTubeStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.BackTubeStartColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackTubeStartColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackTubeStartColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackTubeStartColorProperty);
		}
	}

	[Description("The outer color of the tube of the background.")]
	[Category("Background Gradient")]
	public Color BackTubeEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.BackTubeEndColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackTubeEndColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackTubeEndColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackTubeEndColorProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines if the foreground image will be stretched.")]
	public bool StretchImage
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.StretchImageProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.StretchImageProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasStretchImage
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.StretchImageProperty);
		}
	}

	[Category("Appearance")]
	[Description("The image used to draw the foreground.")]
	public Image ForegroundImage
	{
		[DebuggerStepThrough]
		get
		{
			return (Image)GetValue(GridProgressBarInfoStore.ForegroundImageProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ForegroundImageProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasForegroundImage
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ForegroundImageProperty);
		}
	}

	[Description("The image used to draw the foreground.")]
	[Category("Appearance")]
	public Image BackgroundImage
	{
		[DebuggerStepThrough]
		get
		{
			return (Image)GetValue(GridProgressBarInfoStore.BackgroundImageProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackgroundImageProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackgroundImage
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackgroundImageProperty);
		}
	}

	[Description("The width of the segments.")]
	[Category("Appearance")]
	public int SegmentWidth
	{
		[DebuggerStepThrough]
		get
		{
			return (int)GetValue(GridProgressBarInfoStore.SegmentWidthProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.SegmentWidthProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasSegmentWidth
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.SegmentWidthProperty);
		}
	}

	[Category("Appearance")]
	[Description("The color of the font used to draw the text of the ProgressBar.")]
	public Color FontColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.FontColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.FontColorProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasFontColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.FontColorProperty);
		}
	}

	[Description("The color used to draw the foreground in segment mode and constant mode.")]
	public Color ForeColor
	{
		[DebuggerStepThrough]
		get
		{
			return (Color)GetValue(GridProgressBarInfoStore.ForeColorProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ForeColorProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasForeColor
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ForeColorProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines if the text of the Progressbar is visible.")]
	public bool TextVisible
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.TextVisibleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.TextVisibleProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasTextVisible
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.TextVisibleProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines the style of the text.")]
	public ProgressBarTextStyles TextStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (ProgressBarTextStyles)GetValue(GridProgressBarInfoStore.TextStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.TextStyleProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTextStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.TextStyleProperty);
		}
	}

	[Category("Appearance")]
	[DefaultValue(Orientation.Horizontal)]
	[Description("Determines the orientation of the text.")]
	public Orientation ProgressOrientation
	{
		[DebuggerStepThrough]
		get
		{
			return (Orientation)GetValue(GridProgressBarInfoStore.ProgressOrientationProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ProgressOrientationProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasProgressOrientation
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ProgressOrientationProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines if the text shadow is visible.")]
	public bool TextShadow
	{
		[DebuggerStepThrough]
		get
		{
			return (bool)GetValue(GridProgressBarInfoStore.TextShadowProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.TextShadowProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasTextShadow
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.TextShadowProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines the foreground drawing style.")]
	public ProgressBarStyles ProgressStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (ProgressBarStyles)GetValue(GridProgressBarInfoStore.ProgressStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ProgressStyleProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasProgressStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ProgressStyleProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines the foreground drawing style if System is selected and the Themes are not supported by the machine.")]
	public ProgressBarStyles ProgressFallbackStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (ProgressBarStyles)GetValue(GridProgressBarInfoStore.ProgressFallbackStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.ProgressFallbackStyleProperty, value);
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public bool HasProgressFallbackStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.ProgressFallbackStyleProperty);
		}
	}

	[Description("Determines the background style.")]
	[Category("Appearance")]
	public ProgressBarBackgroundStyles BackgroundStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (ProgressBarBackgroundStyles)GetValue(GridProgressBarInfoStore.BackgroundStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackgroundStyleProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackgroundStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackgroundStyleProperty);
		}
	}

	[Category("Appearance")]
	[Description("Determines the background style when System mode is selected and the machine doesn`t support Themes.")]
	public ProgressBarBackgroundStyles BackgroundFallbackStyle
	{
		[DebuggerStepThrough]
		get
		{
			return (ProgressBarBackgroundStyles)GetValue(GridProgressBarInfoStore.BackgroundFallbackStyleProperty);
		}
		[DebuggerStepThrough]
		set
		{
			SetValue(GridProgressBarInfoStore.BackgroundFallbackStyleProperty, value);
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public bool HasBackgroundFallbackStyle
	{
		[DebuggerStepThrough]
		get
		{
			return HasValue(GridProgressBarInfoStore.BackgroundFallbackStyleProperty);
		}
	}

	internal static object CreateObject(StyleInfoSubObjectIdentity identity, object store)
	{
		if (store != null)
		{
			return new GridProgressBarInfo(identity, store as GridProgressBarInfoStore);
		}
		return new GridProgressBarInfo(identity);
	}

	[DebuggerStepThrough]
	public GridProgressBarInfo()
		: base(new GridProgressBarInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridProgressBarInfo(StyleInfoSubObjectIdentity identity)
		: base(identity, new GridProgressBarInfoStore())
	{
	}

	[DebuggerStepThrough]
	public GridProgressBarInfo(StyleInfoSubObjectIdentity identity, GridProgressBarInfoStore store)
		: base(identity, store)
	{
	}

	[DebuggerStepThrough]
	public override IStyleInfoSubObject MakeCopy(StyleInfoBase newOwner, StyleInfoProperty sip)
	{
		return new GridProgressBarInfo(newOwner.CreateSubObjectIdentity(sip), (GridProgressBarInfoStore)base.Store.Clone());
	}

	protected override StyleInfoBase GetDefaultStyle()
	{
		return Default;
	}

	[DebuggerStepThrough]
	public void ResetProgressValue()
	{
		ResetValue(GridProgressBarInfoStore.ProgressValueProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeProgressValue()
	{
		return HasValue(GridProgressBarInfoStore.ProgressValueProperty);
	}

	[DebuggerStepThrough]
	public void ResetMinimum()
	{
		ResetValue(GridProgressBarInfoStore.MinimumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMinimum()
	{
		return HasValue(GridProgressBarInfoStore.MinimumProperty);
	}

	[DebuggerStepThrough]
	public void ResetMaximum()
	{
		ResetValue(GridProgressBarInfoStore.MaximumProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMaximum()
	{
		return HasValue(GridProgressBarInfoStore.MaximumProperty);
	}

	[DebuggerStepThrough]
	public void ResetStep()
	{
		ResetValue(GridProgressBarInfoStore.StepProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStep()
	{
		return HasValue(GridProgressBarInfoStore.StepProperty);
	}

	[DebuggerStepThrough]
	public void ResetForeSegments()
	{
		ResetValue(GridProgressBarInfoStore.ForeSegmentsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeForeSegments()
	{
		return HasValue(GridProgressBarInfoStore.ForeSegmentsProperty);
	}

	[DebuggerStepThrough]
	public void ResetStretchMultGrad()
	{
		ResetValue(GridProgressBarInfoStore.StretchMultGradProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStretchMultGrad()
	{
		return HasValue(GridProgressBarInfoStore.StretchMultGradProperty);
	}

	[DebuggerStepThrough]
	public void ResetMultipleColors()
	{
		ResetValue(GridProgressBarInfoStore.MultipleColorsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeMultipleColors()
	{
		return HasValue(GridProgressBarInfoStore.MultipleColorsProperty);
	}

	[DebuggerStepThrough]
	public void ResetGradientStartColor()
	{
		ResetValue(GridProgressBarInfoStore.GradientStartColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeGradientStartColor()
	{
		return HasValue(GridProgressBarInfoStore.GradientStartColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetGradientEndColor()
	{
		ResetValue(GridProgressBarInfoStore.GradientEndColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeGradientEndColor()
	{
		return HasValue(GridProgressBarInfoStore.GradientEndColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetTubeStartColor()
	{
		ResetValue(GridProgressBarInfoStore.TubeStartColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTubeStartColor()
	{
		return HasValue(GridProgressBarInfoStore.TubeStartColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetTubeEndColor()
	{
		ResetValue(GridProgressBarInfoStore.TubeEndColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTubeEndColor()
	{
		return HasValue(GridProgressBarInfoStore.TubeEndColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackSegments()
	{
		ResetValue(GridProgressBarInfoStore.BackSegmentsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackSegments()
	{
		return HasValue(GridProgressBarInfoStore.BackSegmentsProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackMultipleColors()
	{
		ResetValue(GridProgressBarInfoStore.BackMultipleColorsProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackMultipleColors()
	{
		return HasValue(GridProgressBarInfoStore.BackMultipleColorsProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackGradientStartColor()
	{
		ResetValue(GridProgressBarInfoStore.BackGradientStartColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackGradientStartColor()
	{
		return HasValue(GridProgressBarInfoStore.BackGradientStartColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackGradientEndColor()
	{
		ResetValue(GridProgressBarInfoStore.BackGradientEndColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackGradientEndColor()
	{
		return HasValue(GridProgressBarInfoStore.BackGradientEndColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackTubeStartColor()
	{
		ResetValue(GridProgressBarInfoStore.BackTubeStartColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackTubeStartColor()
	{
		return HasValue(GridProgressBarInfoStore.BackTubeStartColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackTubeEndColor()
	{
		ResetValue(GridProgressBarInfoStore.BackTubeEndColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackTubeEndColor()
	{
		return HasValue(GridProgressBarInfoStore.BackTubeEndColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetStretchImage()
	{
		ResetValue(GridProgressBarInfoStore.StretchImageProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeStretchImage()
	{
		return HasValue(GridProgressBarInfoStore.StretchImageProperty);
	}

	[DebuggerStepThrough]
	public void ResetForegroundImage()
	{
		ResetValue(GridProgressBarInfoStore.ForegroundImageProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeForegroundImage()
	{
		return HasValue(GridProgressBarInfoStore.ForegroundImageProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackgroundImage()
	{
		ResetValue(GridProgressBarInfoStore.BackgroundImageProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundImage()
	{
		return HasValue(GridProgressBarInfoStore.BackgroundImageProperty);
	}

	[DebuggerStepThrough]
	public void ResetSegmentWidth()
	{
		ResetValue(GridProgressBarInfoStore.SegmentWidthProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeSegmentWidth()
	{
		return HasValue(GridProgressBarInfoStore.SegmentWidthProperty);
	}

	[DebuggerStepThrough]
	public void ResetFontColor()
	{
		ResetValue(GridProgressBarInfoStore.FontColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeFontColor()
	{
		return HasValue(GridProgressBarInfoStore.FontColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetForeColor()
	{
		ResetValue(GridProgressBarInfoStore.ForeColorProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeForeColor()
	{
		return HasValue(GridProgressBarInfoStore.ForeColorProperty);
	}

	[DebuggerStepThrough]
	public void ResetTextVisible()
	{
		ResetValue(GridProgressBarInfoStore.TextVisibleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextVisible()
	{
		return HasValue(GridProgressBarInfoStore.TextVisibleProperty);
	}

	[DebuggerStepThrough]
	public void ResetTextStyle()
	{
		ResetValue(GridProgressBarInfoStore.TextStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextStyle()
	{
		return HasValue(GridProgressBarInfoStore.TextStyleProperty);
	}

	[DebuggerStepThrough]
	public void ResetProgressOrientation()
	{
		ResetValue(GridProgressBarInfoStore.ProgressOrientationProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeProgressOrientation()
	{
		return HasValue(GridProgressBarInfoStore.ProgressOrientationProperty);
	}

	[DebuggerStepThrough]
	public void ResetTextShadow()
	{
		ResetValue(GridProgressBarInfoStore.TextShadowProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeTextShadow()
	{
		return HasValue(GridProgressBarInfoStore.TextShadowProperty);
	}

	[DebuggerStepThrough]
	public void ResetProgressStyle()
	{
		ResetValue(GridProgressBarInfoStore.ProgressStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeProgressStyle()
	{
		return HasValue(GridProgressBarInfoStore.ProgressStyleProperty);
	}

	[DebuggerStepThrough]
	public void ResetProgressFallbackStyle()
	{
		ResetValue(GridProgressBarInfoStore.ProgressFallbackStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeProgressFallbackStyle()
	{
		return HasValue(GridProgressBarInfoStore.ProgressFallbackStyleProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackgroundStyle()
	{
		ResetValue(GridProgressBarInfoStore.BackgroundStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundStyle()
	{
		return HasValue(GridProgressBarInfoStore.BackgroundStyleProperty);
	}

	[DebuggerStepThrough]
	public void ResetBackgroundFallbackStyle()
	{
		ResetValue(GridProgressBarInfoStore.BackgroundFallbackStyleProperty);
	}

	[EditorBrowsable(EditorBrowsableState.Never)]
	private bool ShouldSerializeBackgroundFallbackStyle()
	{
		return HasValue(GridProgressBarInfoStore.BackgroundFallbackStyleProperty);
	}
}
