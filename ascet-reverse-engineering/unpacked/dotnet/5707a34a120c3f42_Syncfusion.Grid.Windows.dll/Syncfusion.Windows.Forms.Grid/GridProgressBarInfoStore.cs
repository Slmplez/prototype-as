using System;
using System.Drawing;
using System.Runtime.Serialization;
using System.Windows.Forms;
using Syncfusion.Styles;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[StaticDataField("sd")]
public class GridProgressBarInfoStore : StyleInfoStore
{
	private static StaticData sd;

	public static readonly StyleInfoProperty ProgressValueProperty;

	public static readonly StyleInfoProperty MinimumProperty;

	public static readonly StyleInfoProperty MaximumProperty;

	public static readonly StyleInfoProperty StepProperty;

	public static readonly StyleInfoProperty ForeSegmentsProperty;

	public static readonly StyleInfoProperty StretchMultGradProperty;

	public static readonly StyleInfoProperty MultipleColorsProperty;

	public static readonly StyleInfoProperty GradientStartColorProperty;

	public static readonly StyleInfoProperty GradientEndColorProperty;

	public static readonly StyleInfoProperty TubeStartColorProperty;

	public static readonly StyleInfoProperty TubeEndColorProperty;

	public static readonly StyleInfoProperty BackSegmentsProperty;

	public static readonly StyleInfoProperty BackMultipleColorsProperty;

	public static readonly StyleInfoProperty BackGradientStartColorProperty;

	public static readonly StyleInfoProperty BackGradientEndColorProperty;

	public static readonly StyleInfoProperty BackTubeStartColorProperty;

	public static readonly StyleInfoProperty BackTubeEndColorProperty;

	public static readonly StyleInfoProperty StretchImageProperty;

	public static readonly StyleInfoProperty ForegroundImageProperty;

	public static readonly StyleInfoProperty BackgroundImageProperty;

	public static readonly StyleInfoProperty SegmentWidthProperty;

	public static readonly StyleInfoProperty FontColorProperty;

	public static readonly StyleInfoProperty ForeColorProperty;

	public static readonly StyleInfoProperty TextVisibleProperty;

	public static readonly StyleInfoProperty TextStyleProperty;

	public static readonly StyleInfoProperty ProgressOrientationProperty;

	public static readonly StyleInfoProperty TextShadowProperty;

	public static readonly StyleInfoProperty ProgressStyleProperty;

	public static readonly StyleInfoProperty ProgressFallbackStyleProperty;

	public static readonly StyleInfoProperty BackgroundStyleProperty;

	public static readonly StyleInfoProperty BackgroundFallbackStyleProperty;

	protected override StaticData StaticDataStore => sd;

	public GridProgressBarInfoStore()
	{
	}

	static GridProgressBarInfoStore()
	{
		sd = new StaticData(typeof(GridProgressBarInfoStore), typeof(GridProgressBarInfo), sortProperties: true);
		ProgressValueProperty = sd.CreateStyleInfoProperty(typeof(int), "ProgressValue");
		MinimumProperty = sd.CreateStyleInfoProperty(typeof(int), "Minimum");
		MaximumProperty = sd.CreateStyleInfoProperty(typeof(int), "Maximum");
		StepProperty = sd.CreateStyleInfoProperty(typeof(int), "Step");
		ForeSegmentsProperty = sd.CreateStyleInfoProperty(typeof(bool), "ForeSegments");
		StretchMultGradProperty = sd.CreateStyleInfoProperty(typeof(bool), "StretchMultGrad");
		MultipleColorsProperty = sd.CreateStyleInfoProperty(typeof(Color[]), "MultipleColors");
		GradientStartColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "GradientStartColor");
		GradientEndColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "GradientEndColor");
		TubeStartColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "TubeStartColor");
		TubeEndColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "TubeEndColor");
		BackSegmentsProperty = sd.CreateStyleInfoProperty(typeof(bool), "BackSegments");
		BackMultipleColorsProperty = sd.CreateStyleInfoProperty(typeof(Color[]), "BackMultipleColors");
		BackGradientStartColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "BackGradientStartColor");
		BackGradientEndColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "BackGradientEndColor");
		BackTubeStartColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "BackTubeStartColor");
		BackTubeEndColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "BackTubeEndColor");
		StretchImageProperty = sd.CreateStyleInfoProperty(typeof(bool), "StretchImage");
		ForegroundImageProperty = sd.CreateStyleInfoProperty(typeof(Image), "ForegroundImage");
		BackgroundImageProperty = sd.CreateStyleInfoProperty(typeof(Image), "BackgroundImage");
		SegmentWidthProperty = sd.CreateStyleInfoProperty(typeof(int), "SegmentWidth");
		FontColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "FontColor");
		ForeColorProperty = sd.CreateStyleInfoProperty(typeof(Color), "ForeColor");
		TextVisibleProperty = sd.CreateStyleInfoProperty(typeof(bool), "TextVisible");
		TextStyleProperty = sd.CreateStyleInfoProperty(typeof(ProgressBarTextStyles), "TextStyle");
		ProgressOrientationProperty = sd.CreateStyleInfoProperty(typeof(Orientation), "ProgressOrientation");
		TextShadowProperty = sd.CreateStyleInfoProperty(typeof(bool), "TextShadow");
		ProgressStyleProperty = sd.CreateStyleInfoProperty(typeof(ProgressBarStyles), "ProgressStyle");
		ProgressFallbackStyleProperty = sd.CreateStyleInfoProperty(typeof(ProgressBarStyles), "ProgressFallbackStyle");
		BackgroundStyleProperty = sd.CreateStyleInfoProperty(typeof(ProgressBarBackgroundStyles), "BackgroundStyle");
		BackgroundFallbackStyleProperty = sd.CreateStyleInfoProperty(typeof(ProgressBarBackgroundStyles), "BackgroundFallbackStyle");
	}

	private GridProgressBarInfoStore(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override object Clone()
	{
		StyleInfoStore styleInfoStore = new GridProgressBarInfoStore();
		CopyTo(styleInfoStore);
		return styleInfoStore;
	}
}
