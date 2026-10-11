using System;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

internal class AutoLabelAndControl
{
	private ControlBounds al;

	private ControlBounds c;

	private AutoLabelPosition alPosition;

	private int x;

	private int y;

	private int width;

	private int height;

	private int alDX;

	private int alDY;

	private bool updating;

	public Point Location
	{
		get
		{
			return new Point(x, y);
		}
		set
		{
			if (Location != value)
			{
				int num = x - value.X;
				x -= num;
				int num2 = y - value.Y;
				y -= num2;
				c.Location = new Point(c.Location.X - num, c.Location.Y - num2);
			}
		}
	}

	public int Height
	{
		get
		{
			return height;
		}
		set
		{
			int num = value - Height;
			c.Height += num;
			if (!updating)
			{
				Init();
			}
		}
	}

	public int Width
	{
		get
		{
			return width;
		}
		set
		{
			int num = value - Width;
			c.Width += num;
			if (!updating)
			{
				Init();
			}
		}
	}

	internal AutoLabelAndControl(ControlBounds c)
	{
		al = null;
		this.c = c;
		Init();
	}

	internal AutoLabelAndControl(ControlBounds al, AutoLabelPosition position, int dx, int dy, ControlBounds c)
	{
		this.al = al;
		this.c = c;
		alPosition = position;
		alDX = dx;
		alDY = dy;
		Init();
	}

	public void BeginUpdate()
	{
		if (updating)
		{
			throw new Exception("Multiple BeginUpdates not allowed on AutoLabelAndControl.");
		}
		c.BeginUpdate();
		updating = true;
	}

	public void EndUpdate()
	{
		if (!updating)
		{
			throw new Exception("EndUpdate called without calling BeginUpdate in AutoLabelAndControl.");
		}
		updating = false;
		c.EndUpdate();
		if (al != null)
		{
			al.ReinitLocation();
		}
		Init();
	}

	private void Init()
	{
		if (al != null)
		{
			if (alPosition == AutoLabelPosition.Left)
			{
				x = al.Location.X;
				if (c.Location.Y < al.Location.Y)
				{
					y = c.Location.Y;
				}
				else
				{
					y = al.Location.Y;
				}
				width = c.Width + -alDX;
				height = Math.Max(al.Height, c.Height);
				return;
			}
			if (alPosition == AutoLabelPosition.Top)
			{
				y = al.Location.Y;
				if (c.Location.X < al.Location.X)
				{
					x = c.Location.X;
				}
				else
				{
					x = al.Location.X;
				}
				height = c.Height + -alDY;
				width = Math.Max(al.Width, c.Width);
				return;
			}
			if (c.Location.Y < al.Location.Y)
			{
				y = c.Location.Y;
				if (al.Bounds.Bottom > c.Bounds.Bottom)
				{
					height = al.Bounds.Bottom - c.Location.Y;
				}
				else
				{
					height = c.Height;
				}
			}
			else
			{
				y = al.Location.Y;
				if (c.Bounds.Bottom > al.Bounds.Bottom)
				{
					height = c.Bounds.Bottom - al.Location.Y;
				}
				else
				{
					height = al.Height;
				}
			}
			if (c.Location.X < al.Location.X)
			{
				x = c.Location.X;
				if (al.Bounds.Right > c.Bounds.Right)
				{
					width = al.Bounds.Right - c.Location.X;
				}
				else
				{
					width = c.Width;
				}
			}
			else
			{
				x = al.Location.X;
				if (c.Bounds.Right > al.Bounds.Right)
				{
					width = c.Bounds.Right - al.Location.X;
				}
				else
				{
					width = al.Width;
				}
			}
		}
		else
		{
			x = c.Location.X;
			y = c.Location.Y;
			width = c.Width;
			height = c.Height;
		}
	}
}
