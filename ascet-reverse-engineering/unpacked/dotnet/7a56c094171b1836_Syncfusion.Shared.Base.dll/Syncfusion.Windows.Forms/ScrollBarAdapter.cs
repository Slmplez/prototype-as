using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public class ScrollBarAdapter
{
	private ScrollBar scrollBar;

	private ScrollBarCustomDraw scrollBarCustomDraw;

	public virtual int LargeChange
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.LargeChange;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.LargeChange;
			}
			return 0;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.LargeChange = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.LargeChange = value;
			}
		}
	}

	public virtual int Maximum
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.Maximum;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.Maximum;
			}
			return 0;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.Maximum = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.Maximum = value;
			}
		}
	}

	public virtual int Minimum
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.Minimum;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.Minimum;
			}
			return 0;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.Minimum = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.Minimum = value;
			}
		}
	}

	public virtual int SmallChange
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.SmallChange;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.SmallChange;
			}
			return 0;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.SmallChange = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.SmallChange = value;
			}
		}
	}

	public virtual int Value
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.Value;
			}
			if (scrollBarCustomDraw != null)
			{
				if (RightToLeft == RightToLeft.Yes)
				{
					return ReflectPosition(scrollBarCustomDraw.Value);
				}
				return scrollBarCustomDraw.Value;
			}
			return 0;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.Value = value;
			}
			else if (scrollBarCustomDraw != null && scrollBarCustomDraw.Value != value)
			{
				scrollBarCustomDraw.Value = value;
			}
		}
	}

	public virtual bool Enabled
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.Enabled;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.Enabled;
			}
			return false;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.Enabled = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.Enabled = value;
			}
		}
	}

	public virtual RightToLeft RightToLeft
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar.RightToLeft;
			}
			if (scrollBarCustomDraw != null)
			{
				return scrollBarCustomDraw.RightToLeft;
			}
			return RightToLeft.No;
		}
		set
		{
			if (scrollBar != null)
			{
				scrollBar.RightToLeft = value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.RightToLeft = value;
			}
		}
	}

	public virtual Control Control
	{
		get
		{
			if (scrollBar != null)
			{
				return scrollBar;
			}
			return scrollBarCustomDraw;
		}
	}

	public IntPtr Handle => Control.Handle;

	public virtual event EventHandler ValueChanged
	{
		add
		{
			if (scrollBar != null)
			{
				scrollBar.ValueChanged += value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.ValueChanged += value;
			}
		}
		remove
		{
			if (scrollBar != null)
			{
				scrollBar.ValueChanged -= value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.ValueChanged -= value;
			}
		}
	}

	public virtual event ScrollEventHandler Scroll
	{
		add
		{
			if (scrollBar != null)
			{
				scrollBar.Scroll += value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.Scroll += value;
			}
		}
		remove
		{
			if (scrollBar != null)
			{
				scrollBar.Scroll -= value;
			}
			else if (scrollBarCustomDraw != null)
			{
				scrollBarCustomDraw.Scroll -= value;
			}
		}
	}

	public ScrollBarAdapter(ScrollBarCustomDraw scrollBarCustomDraw)
	{
		this.scrollBarCustomDraw = scrollBarCustomDraw;
	}

	public ScrollBarAdapter(ScrollBar scrollBar)
	{
		this.scrollBar = scrollBar;
	}

	public ScrollBarAdapter(Control c)
	{
		if (c is ScrollBar)
		{
			scrollBar = (ScrollBar)c;
		}
		else
		{
			scrollBarCustomDraw = (ScrollBarCustomDraw)c;
		}
	}

	internal int ReflectPosition(int position)
	{
		if (scrollBarCustomDraw != null && scrollBarCustomDraw is HScrollBarCustomDraw)
		{
			return Minimum + (Maximum - LargeChange + 1) - position;
		}
		return position;
	}
}
