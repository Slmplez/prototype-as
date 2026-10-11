using System;
using System.Runtime.Serialization;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridProgressBarCellModel : GridStaticCellModel
{
	public GridProgressBarCellModel(GridModel grid)
		: base(grid)
	{
		base.AllowFloating = true;
	}

	protected GridProgressBarCellModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public override GridCellRendererBase CreateRenderer(GridControlBase control)
	{
		return new GridProgressBarCellRenderer(control, this);
	}

	public static void InitProgressBarProperties(ProgressBarAdv pb, GridStyleInfo style)
	{
		GridProgressBarInfo progressBar = style.ProgressBar;
		pb.BeginInit();
		pb.Minimum = progressBar.Minimum;
		pb.Maximum = progressBar.Maximum;
		pb.Value = progressBar.ProgressValue;
		pb.Step = progressBar.Step;
		pb.ForeSegments = progressBar.ForeSegments;
		pb.StretchMultGrad = progressBar.StretchMultGrad;
		pb.MultipleColors = progressBar.MultipleColors;
		pb.GradientStartColor = progressBar.GradientStartColor;
		pb.GradientEndColor = progressBar.GradientEndColor;
		pb.TubeStartColor = progressBar.TubeStartColor;
		pb.TubeEndColor = progressBar.TubeEndColor;
		pb.BackSegments = progressBar.BackSegments;
		pb.BackMultipleColors = progressBar.BackMultipleColors;
		pb.BackGradientStartColor = progressBar.BackGradientStartColor;
		pb.BackGradientEndColor = progressBar.BackGradientEndColor;
		pb.BackTubeStartColor = progressBar.BackTubeStartColor;
		pb.BackTubeEndColor = progressBar.BackTubeEndColor;
		pb.StretchImage = progressBar.StretchImage;
		pb.BackgroundImage = progressBar.BackgroundImage;
		pb.ForegroundImage = progressBar.ForegroundImage;
		pb.SegmentWidth = progressBar.SegmentWidth;
		pb.FontColor = progressBar.FontColor;
		pb.ForeColor = progressBar.ForeColor;
		pb.TextVisible = progressBar.TextVisible;
		pb.TextStyle = progressBar.TextStyle;
		pb.ProgressOrientation = progressBar.ProgressOrientation;
		pb.TextShadow = progressBar.TextShadow;
		pb.ProgressStyle = progressBar.ProgressStyle;
		pb.ProgressFallbackStyle = progressBar.ProgressFallbackStyle;
		pb.BackgroundStyle = progressBar.BackgroundStyle;
		pb.BackgroundFallbackStyle = progressBar.BackgroundFallbackStyle;
		pb.EndInit();
	}
}
