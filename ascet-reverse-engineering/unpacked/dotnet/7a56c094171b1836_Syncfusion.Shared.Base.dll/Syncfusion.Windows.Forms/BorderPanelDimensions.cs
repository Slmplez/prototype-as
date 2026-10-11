using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms;

[TypeConverter(typeof(ExpandableObjectConverter))]
public class BorderPanelDimensions
{
	private int top;

	private int left;

	private int right;

	private int bottom;

	public static BorderPanelDimensions Default => new BorderPanelDimensions();

	[Description("Sets all the other members to the specified value.")]
	public int All
	{
		get
		{
			return left;
		}
		set
		{
			top = (left = (right = (bottom = value)));
			OnSettingsChanged(EventArgs.Empty);
		}
	}

	[Description("Indicates the bottom border side's width.")]
	public int Bottom
	{
		get
		{
			return bottom;
		}
		set
		{
			if (bottom != value)
			{
				bottom = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Indicates the right border side's width.")]
	public int Right
	{
		get
		{
			return right;
		}
		set
		{
			if (right != value)
			{
				right = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Indicates the left border side's width.")]
	public int Left
	{
		get
		{
			return left;
		}
		set
		{
			if (left != value)
			{
				left = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	[Description("Indicates the top border side's width.")]
	public int Top
	{
		get
		{
			return top;
		}
		set
		{
			if (top != value)
			{
				top = value;
				OnSettingsChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler SettingsChanged;

	protected virtual void OnSettingsChanged(EventArgs e)
	{
		if (this.SettingsChanged != null)
		{
			this.SettingsChanged(this, e);
		}
	}

	public static bool operator ==(BorderPanelDimensions dim1, BorderPanelDimensions dim2)
	{
		if (dim1.Top == dim2.Top && dim1.Left == dim2.Left && dim1.Right == dim2.Right)
		{
			return dim1.Bottom == dim2.Bottom;
		}
		return false;
	}

	public static bool operator !=(BorderPanelDimensions dim1, BorderPanelDimensions dim2)
	{
		return !(dim1 == dim2);
	}

	public override bool Equals(object o)
	{
		if (o is BorderPanelDimensions)
		{
			return this == (BorderPanelDimensions)o;
		}
		return false;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public BorderPanelDimensions(int all)
		: this(all, all, all, all)
	{
	}

	public BorderPanelDimensions()
		: this(30, 40, 30, 30)
	{
	}

	public BorderPanelDimensions(int left, int top, int right, int bottom)
	{
		this.left = left;
		this.top = top;
		this.right = right;
		this.bottom = bottom;
	}
}
