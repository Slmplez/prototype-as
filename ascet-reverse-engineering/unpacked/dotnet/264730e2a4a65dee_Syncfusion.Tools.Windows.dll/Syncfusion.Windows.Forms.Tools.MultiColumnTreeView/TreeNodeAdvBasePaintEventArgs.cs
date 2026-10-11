using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvBasePaintEventArgs : EventArgs
{
	internal enum InternalFields
	{
		Selected,
		Active,
		FullRowSelect,
		HotTracker,
		Handled,
		HandledPlusMinus,
		HandledCheckBox,
		HandledOptionButton,
		HandledLeftImageList,
		HandledStateImageList,
		HandledRightImageList,
		HandledText
	}

	private Graphics graphics;

	private Rectangle bounds;

	private TreeNodeAdv node;

	public TreeNodeAdv Node => node;

	public Rectangle Bounds => bounds;

	public Graphics Graphics => graphics;

	public TreeNodeAdvBasePaintEventArgs(Graphics g, TreeNodeAdv node)
		: this(g, node, node.Bounds)
	{
	}

	public TreeNodeAdvBasePaintEventArgs(Graphics g, TreeNodeAdv node, Rectangle bounds)
	{
		this.node = node;
		graphics = g;
		this.bounds = bounds;
	}
}
