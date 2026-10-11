using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.Renderers;

internal class LayoutOffice2007 : LayoutOffice2007Base
{
	private const int DEF_UPPER_COEFF = 1;

	private const int DEF_LOWER_COEFF = 3;

	public override Rectangle CaptionUpperBounds => new Rectangle(CaptionBounds.Left, CaptionBounds.Top, CaptionBounds.Width, CaptionWidth / 4);

	public override Rectangle CaptionLowerBounds => new Rectangle(CaptionBounds.Left, CaptionBounds.Top + CaptionUpperBounds.Height - 1, CaptionBounds.Width, CaptionWidth - CaptionUpperBounds.Height + 1);
}
