using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TabPanelProperty3D : TabUIDefaultProperties
{
	public override bool DrawLeftToRight => false;

	public override SizeF GetOverlapSize(SizeF tabSize)
	{
		return new SizeF(TabRenderer3D.OVERLAPX, TabRenderer3D.OVERLAPY);
	}
}
