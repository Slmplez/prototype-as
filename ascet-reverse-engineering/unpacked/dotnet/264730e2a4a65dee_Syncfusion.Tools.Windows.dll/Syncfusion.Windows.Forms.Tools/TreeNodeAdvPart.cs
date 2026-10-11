using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public class TreeNodeAdvPart
{
	private TreeNodeAdv node;

	internal int xIndentFromNodeLeft;

	private Size size;

	private bool visible = true;

	protected TreeNodeAdv Node => node;

	public Rectangle Bounds => GetBounds();

	public Size Size
	{
		get
		{
			return size;
		}
		set
		{
			size = value;
		}
	}

	public int Height
	{
		get
		{
			return size.Height;
		}
		set
		{
			size.Height = value;
		}
	}

	public int Width
	{
		get
		{
			return size.Width;
		}
		set
		{
			size.Width = value;
		}
	}

	public Point Location => GetBounds().Location;

	public virtual bool Visible
	{
		get
		{
			if (visible)
			{
				return node.Visible;
			}
			return false;
		}
		set
		{
			visible = value;
		}
	}

	internal TreeNodeAdvPart(TreeNodeAdv node)
	{
		this.node = node;
	}

	private Rectangle GetBounds()
	{
		if (!visible || node == null || node.Bounds == Rectangle.Empty)
		{
			return Rectangle.Empty;
		}
		int num = 0;
		num = ((!GetIsMirrored()) ? (node.NodeX + xIndentFromNodeLeft) : (node.NodeX - xIndentFromNodeLeft - Size.Width));
		int y = node.Bounds.Top + (node.Bounds.Height - Size.Height) / 2;
		return new Rectangle(new Point(num, y), Size);
	}

	protected bool GetIsMirrored()
	{
		return node.GetIsMirrored();
	}
}
