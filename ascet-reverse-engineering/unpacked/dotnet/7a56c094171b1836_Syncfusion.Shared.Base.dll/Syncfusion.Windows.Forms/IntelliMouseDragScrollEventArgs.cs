using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class IntelliMouseDragScrollEventArgs : CancelEventArgs
{
	private int dx;

	private int dy;

	private bool scrolled;

	public int DX
	{
		get
		{
			return dx;
		}
		set
		{
			dx = value;
		}
	}

	public int DY
	{
		get
		{
			return dy;
		}
		set
		{
			dy = value;
		}
	}

	public bool Scrolled
	{
		get
		{
			return scrolled;
		}
		set
		{
			scrolled = value;
		}
	}

	public IntelliMouseDragScrollEventArgs(int dx, int dy)
	{
		this.dx = dx;
		this.dy = dy;
	}
}
