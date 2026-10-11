using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal abstract class LayoutOffice2007Base : CustomLayout
{
	private const int DEF_TEXT_SEPARATOR_WIDTH = 4;

	private const int DEF_MIN_CAPTION_HEIGHT = 20;

	private const int DEF_MIN_BUTTON_SIZE = 17;

	private const int DEF_BORDER_WIDTH = 3;

	private const int DEF_OUTER_BORDER_WIDTH = 3;

	public override int CaptionWidth
	{
		get
		{
			if (20 < SystemInformation.ToolWindowCaptionHeight)
			{
				return SystemInformation.ToolWindowCaptionHeight;
			}
			return 20;
		}
	}

	protected override int ButtonSize
	{
		get
		{
			if (17 < SystemInformation.ToolWindowCaptionButtonSize.Height)
			{
				return SystemInformation.ToolWindowCaptionButtonSize.Height;
			}
			return 17;
		}
	}

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

	protected override int TextLeftMargin => 4;

	protected override int TextRightMargin => ButtonMargin + (ButtonSize + ButtonSeparator) * base.ButtonCount + 4;

	protected override int ImageLeftMargin => BorderWidth + 4;

	protected override int ImageRightMargin => CaptionBounds.Width - ImageSize;

	public override int ThinBorderWidth => 3;

	public override int ThickBorderWidth => 3;

	public override int OuterBorderWidth => 3;

	public abstract Rectangle CaptionUpperBounds { get; }

	public abstract Rectangle CaptionLowerBounds { get; }

	public LayoutOffice2007Base()
	{
	}
}
