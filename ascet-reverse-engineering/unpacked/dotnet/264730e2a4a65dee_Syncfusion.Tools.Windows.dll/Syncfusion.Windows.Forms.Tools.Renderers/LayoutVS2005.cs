using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class LayoutVS2005 : CustomLayout
{
	private const int DEF_TEXT_SEPARATOR_WIDTH = 3;

	private const int DEF_OUTER_BORDER_WIDTH = 1;

	public override int CaptionWidth => SystemInformation.ToolWindowCaptionHeight;

	protected override int ButtonSize => SystemInformation.ToolWindowCaptionButtonSize.Height;

	protected override int ImageSize
	{
		get
		{
			if (CaptionWidth - 2 > SystemInformation.SmallIconSize.Width)
			{
				return SystemInformation.SmallIconSize.Height;
			}
			return CaptionWidth - 2;
		}
	}

	protected override int TextLeftMargin => 3;

	protected override int TextRightMargin => ButtonMargin + (ButtonSize + ButtonSeparator) * base.ButtonCount + 3;

	protected override int ImageLeftMargin => BorderWidth + 3;

	protected override int ImageRightMargin => CaptionBounds.Width - ImageSize;

	public override int OuterBorderWidth => 1;
}
