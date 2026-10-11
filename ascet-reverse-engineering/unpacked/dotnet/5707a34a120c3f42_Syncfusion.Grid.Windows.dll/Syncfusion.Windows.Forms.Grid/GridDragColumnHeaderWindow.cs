using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridDragColumnHeaderWindow : DragWindow
{
	private Bitmap dragBitmap;

	private bool isDragging;

	private Point origin = new Point(-30000, -30000);

	public new Bitmap DragBitmap
	{
		get
		{
			return dragBitmap;
		}
		set
		{
			BackgroundImage = value;
			if (value == null)
			{
				StopDrag();
			}
			else
			{
				Size size = value.Size;
				origin = Point.Empty;
				if (Environment.Version.Major >= 2)
				{
					DestroyHandle();
				}
				MinimumSize = size;
				base.Size = size;
			}
			dragBitmap = value;
		}
	}

	public GridDragColumnHeaderWindow()
	{
		if (GridDragColumnHeaderMouseControllerBase.SupportsTransparentForm())
		{
			base.TransparencyKey = Color.Red;
		}
		SetStyle(ControlStyles.Selectable, value: false);
		SetStyle(ControlStyles.UserMouse, value: true);
	}

	private void _Move(Point p)
	{
		base.Location = p;
		if (BackgroundImage != null)
		{
			base.Size = BackgroundImage.Size;
		}
		else
		{
			base.Size = MinimumSize;
		}
	}

	public new bool StartDrag(Point p)
	{
		if (BackgroundImage == null)
		{
			return false;
		}
		isDragging = true;
		_Move(p);
		ShowWindowTopMost();
		return true;
	}

	public new bool MoveTo(Point p)
	{
		if (!isDragging)
		{
			return false;
		}
		_Move(p);
		return true;
	}

	public new bool StopDrag()
	{
		if (!isDragging)
		{
			return false;
		}
		BackgroundImage = null;
		isDragging = false;
		SuspendLayout();
		base.Visible = false;
		ResumeLayout();
		return true;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			dragBitmap = null;
		}
		base.Dispose(disposing);
	}
}
