using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class SubMenuPaintEventArgs
{
	private PaintEventArgs args;

	private Rectangle bgBounds;

	private Rectangle itemBounds;

	public Rectangle Bounds => bgBounds;

	public Rectangle ItemBounds => itemBounds;

	public PaintEventArgs PaintEventArgs => args;

	public SubMenuPaintEventArgs(PaintEventArgs args, Rectangle bgBounds, Rectangle itemBounds)
	{
		this.args = args;
		this.bgBounds = bgBounds;
		this.itemBounds = itemBounds;
	}
}
