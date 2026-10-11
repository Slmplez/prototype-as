using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools.MultiColumnTreeView;

public class TreeNodeAdvPart
{
	private TreeNodeAdv m_node;

	private bool m_visible = true;

	private Size m_size;

	internal int M_xIndentFromNodeLeft;

	protected TreeNodeAdv Node => m_node;

	public Rectangle Bounds => GetBounds();

	public Size Size
	{
		get
		{
			return m_size;
		}
		set
		{
			m_size = value;
		}
	}

	public int Height
	{
		get
		{
			return m_size.Height;
		}
		set
		{
			m_size.Height = value;
		}
	}

	public int Width
	{
		get
		{
			return m_size.Width;
		}
		set
		{
			m_size.Width = value;
		}
	}

	public Point Location => GetBounds().Location;

	public virtual bool Visible
	{
		get
		{
			if (m_visible)
			{
				return m_node.Visible;
			}
			return false;
		}
		set
		{
			m_visible = value;
		}
	}

	internal TreeNodeAdvPart(TreeNodeAdv node)
	{
		m_node = node;
	}

	internal TreeNodeAdvPart(TreeNodeAdv node, Size size)
		: this(node)
	{
		m_size = size;
	}

	private Rectangle GetBounds()
	{
		if (!m_visible || m_node == null || m_node.Bounds == Rectangle.Empty)
		{
			return Rectangle.Empty;
		}
		int num = 0;
		num = ((!GetIsMirrored()) ? (m_node.NodeX + M_xIndentFromNodeLeft) : (m_node.NodeX - M_xIndentFromNodeLeft - Size.Width));
		int y = m_node.Bounds.Top + (m_node.Bounds.Height - Size.Height) / 2;
		return new Rectangle(new Point(num, y), Size);
	}

	protected bool GetIsMirrored()
	{
		return m_node.GetIsMirrored();
	}
}
