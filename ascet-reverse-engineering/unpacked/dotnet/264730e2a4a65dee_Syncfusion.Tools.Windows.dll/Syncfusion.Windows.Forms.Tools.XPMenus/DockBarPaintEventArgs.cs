using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Browsable(false)]
[DocumentationExclude]
public class DockBarPaintEventArgs
{
	private PaintEventArgs args;

	private CommandBarDockBorder border;

	private Rectangle bounds;

	public CommandBarDockBorder Border => border;

	public PaintEventArgs PaintEventArgs => args;

	public Rectangle Bounds => bounds;

	public DockBarPaintEventArgs(PaintEventArgs args, CommandBarDockBorder border, Rectangle bounds)
	{
		this.args = args;
		this.border = border;
		this.bounds = bounds;
	}
}
