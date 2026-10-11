using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class LayoutOffice2003 : CustomLayout
{
	private const int DEF_CAPTION_WIDTH = 25;

	private const int DEF_BUTTON_SIZE = 15;

	private const int DEF_GRIPPER_LEFT_MARGIN = 4;

	private const int DEF_GRIPPER_TOP_MARGIN = 5;

	private const int DEF_GRIPPER_WIDTH = 3;

	private const int DEF_GRIPPER_HEIGHT = 15;

	private const int DEF_ICON_SIZE = 16;

	private const int DEF_TEXT_SEPARATOR_WIDTH = 3;

	private const int DEF_THICK_OUTER_BORDER_WIDTH = 2;

	private const int DEF_THIN_OUTER_BORDER_WIDTH = 1;

	public override int CaptionWidth
	{
		get
		{
			if (25 > SystemInformation.ToolWindowCaptionHeight)
			{
				return 25;
			}
			return SystemInformation.ToolWindowCaptionHeight;
		}
	}

	protected override int ImageSize => 16;

	public virtual Rectangle GripperRectangle
	{
		get
		{
			Rectangle empty = Rectangle.Empty;
			empty.Y = BorderWidth + 5;
			if (base.IsMirrored)
			{
				empty.X = base.ControlBounds.Width - BorderWidth - 4 - 3;
			}
			else
			{
				empty.X = BorderWidth + 4;
			}
			int num = 7 + (ButtonSeparator + ButtonSize) * base.ButtonCount + ButtonMargin;
			if (num > CaptionBounds.Width)
			{
				return Rectangle.Empty;
			}
			return empty;
		}
	}

	protected override int ButtonSize => 15;

	protected override int TextLeftMargin => 10;

	protected override int TextRightMargin => ButtonMargin + (ButtonSize + ButtonSeparator) * base.ButtonCount + 3;

	protected override int ImageLeftMargin => 4 + BorderWidth + 3 + 3;

	protected override int ImageRightMargin => CaptionBounds.Width - 4 - 3 - ImageSize;

	public override int OuterBorderWidth
	{
		get
		{
			if (base.Floating)
			{
				return 2;
			}
			return 1;
		}
	}
}
