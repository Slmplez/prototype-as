using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class LayoutOffice2007Outlook : LayoutOffice2007Base
{
	private const int DEF_UPPER_COEFF = 1;

	private const int DEF_LOWER_COEFF = 1;

	public override Rectangle CaptionUpperBounds => new Rectangle(CaptionBounds.Left, CaptionBounds.Top, CaptionBounds.Width, CaptionBounds.Height / 2);

	public override Rectangle CaptionLowerBounds => new Rectangle(CaptionBounds.Left, CaptionUpperBounds.Top - 1 + CaptionUpperBounds.Height, CaptionBounds.Width, CaptionBounds.Height - CaptionUpperBounds.Height + 1);
}
