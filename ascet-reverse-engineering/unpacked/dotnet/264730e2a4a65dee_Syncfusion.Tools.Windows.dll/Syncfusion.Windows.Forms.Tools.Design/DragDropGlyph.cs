using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class DragDropGlyph : Glyph
{
	public DragDropGlyph(DragDropBehavior b)
		: base(b)
	{
	}

	public override Cursor GetHitTest(Point p)
	{
		return Cursors.Default;
	}

	public override void Paint(PaintEventArgs pe)
	{
	}
}
