using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class ControlBounds
{
	private Rectangle bounds;

	private Control c;

	private RTLMatrix rtlMatrix;

	private bool needRTLTransform;

	private bool updating;

	private bool NeedRTLTransform => needRTLTransform;

	public Point Location
	{
		get
		{
			return new Point(bounds.X, bounds.Y);
		}
		set
		{
			bounds.X = value.X;
			bounds.Y = value.Y;
			if (!updating)
			{
				if (!NeedRTLTransform)
				{
					c.Location = value;
					return;
				}
				Point location = rtlMatrix.TransformPoint(value);
				location.X -= Width;
				c.Location = location;
			}
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			bounds = value;
			if (!updating)
			{
				UpdateControlBounds();
			}
		}
	}

	public int Width
	{
		get
		{
			return bounds.Width;
		}
		set
		{
			bounds.Width = value;
			if (!updating)
			{
				if (!NeedRTLTransform)
				{
					c.Width = value;
					return;
				}
				Rectangle rect = bounds;
				rect.Width = value;
				Rectangle rectangle = RTLTransformRect(rect);
				c.Location = new Point(rectangle.X, c.Location.Y);
				c.Width = rectangle.Width;
			}
		}
	}

	public int Height
	{
		get
		{
			return bounds.Height;
		}
		set
		{
			bounds.Height = value;
			if (!updating)
			{
				c.Height = value;
			}
		}
	}

	public ControlBounds(Rectangle bounds, Control c)
		: this(bounds, c, null)
	{
	}

	public ControlBounds(Rectangle bounds, Control c, RTLMatrix rtlMatrix)
	{
		this.bounds = bounds;
		this.c = c;
		this.rtlMatrix = rtlMatrix;
		needRTLTransform = this.rtlMatrix != null;
		if (NeedRTLTransform)
		{
			this.bounds = RTLTransformRect(this.bounds);
		}
	}

	internal void ReinitLocation()
	{
		if (needRTLTransform)
		{
			Rectangle rectangle = RTLTransformRect(c.Bounds);
			rectangle.Size = bounds.Size;
			bounds = rectangle;
		}
		else
		{
			bounds.Location = c.Location;
		}
	}

	internal void SetOnlyInternalBounds(Rectangle newBounds)
	{
		bounds = newBounds;
	}

	public override string ToString()
	{
		return bounds.ToString();
	}

	private Rectangle RTLTransformRect(Rectangle rect)
	{
		Point location = rtlMatrix.TransformPoint(new Point(rect.Left, rect.Top));
		location.X -= rect.Width;
		return new Rectangle(location, rect.Size);
	}

	public void BeginUpdate()
	{
		if (updating)
		{
			throw new Exception("Multiple BeginUpdates not allowed on ControlBounds.");
		}
		updating = true;
	}

	public void EndUpdate()
	{
		if (!updating)
		{
			throw new Exception("EndUpdate called without calling BeginUpdate in ControlBounds.");
		}
		updating = false;
		UpdateControlBounds();
	}

	private void UpdateControlBounds()
	{
		if (!NeedRTLTransform)
		{
			c.Bounds = bounds;
		}
		else
		{
			c.Bounds = RTLTransformRect(bounds);
		}
	}
}
