using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(InsetsConverter))]
public struct Insets
{
	private int left;

	private int top;

	private int right;

	private int bottom;

	[Description("Specifies the insets to the left of the component.")]
	public int Left
	{
		get
		{
			return left;
		}
		set
		{
			left = value;
		}
	}

	[Description("Specifies the insets to the right of the component.")]
	public int Right
	{
		get
		{
			return right;
		}
		set
		{
			right = value;
		}
	}

	[Description("Specifies the insets to the top of the component.")]
	public int Top
	{
		get
		{
			return top;
		}
		set
		{
			top = value;
		}
	}

	[Description("Specifies the insets to the bottom of the component.")]
	public int Bottom
	{
		get
		{
			return bottom;
		}
		set
		{
			bottom = value;
		}
	}

	public Insets(int left, int top, int right, int bottom)
	{
		this.left = left;
		this.top = top;
		this.right = right;
		this.bottom = bottom;
	}

	public override string ToString()
	{
		return "T " + top + ", L " + left + ", B " + bottom + ", R " + right;
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool Equals(object o)
	{
		bool result = false;
		if ((object)this == o)
		{
			return true;
		}
		if (o is Insets insets)
		{
			if (Bottom != insets.Bottom)
			{
				return false;
			}
			if (Left != insets.Left)
			{
				return false;
			}
			if (Right != insets.Right)
			{
				return false;
			}
			if (Top != insets.Top)
			{
				return false;
			}
			return true;
		}
		return result;
	}

	public static bool operator ==(Insets lhs, Insets rhs)
	{
		if ((object)lhs == null && (object)rhs == null)
		{
			return true;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return false;
		}
		return lhs.Equals(rhs);
	}

	public static bool operator !=(Insets lhs, Insets rhs)
	{
		if ((object)lhs == null && (object)rhs == null)
		{
			return false;
		}
		if ((object)lhs == null || (object)rhs == null)
		{
			return true;
		}
		return !lhs.Equals(rhs);
	}
}
