using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(GridBagConstraintsConverter))]
public class GridBagConstraints : ICloneable
{
	public const int Relative = -1;

	public const int Remainder = 0;

	internal int gridPosX;

	internal int gridPosY;

	internal int cellSpanX;

	internal int cellSpanY;

	internal double weightX;

	internal double weightY;

	internal AnchorTypes anchor;

	internal FillType fill;

	internal Insets insets;

	internal int ipadX;

	internal int ipadY;

	internal bool isEmpty;

	[NonSerialized]
	internal int tempCurPosX;

	[NonSerialized]
	internal int tempCurPosY;

	[NonSerialized]
	internal int tempCellSpanX;

	[NonSerialized]
	internal int tempCellSpanY;

	[NonSerialized]
	internal int minWidth;

	[NonSerialized]
	internal int minHeight;

	public static readonly GridBagConstraints Empty;

	[Description("Specifies the column in the virtual grid where the component's layout bounds begin.")]
	[DefaultValue(-1)]
	public int GridPosX
	{
		get
		{
			return gridPosX;
		}
		set
		{
			if (value != gridPosX)
			{
				gridPosX = value;
				OnPropertyChanged();
			}
		}
	}

	[Description("Specifies the row in the virtual grid where the component's layout bounds begin.")]
	[DefaultValue(-1)]
	public int GridPosY
	{
		get
		{
			return gridPosY;
		}
		set
		{
			if (value != gridPosY)
			{
				gridPosY = value;
				OnPropertyChanged();
			}
		}
	}

	[DefaultValue(1)]
	[Description("Specifies the number of columns this component should span in the virtual grid.")]
	public int CellSpanX
	{
		get
		{
			return cellSpanX;
		}
		set
		{
			if (value != cellSpanX)
			{
				cellSpanX = value;
				OnPropertyChanged();
			}
		}
	}

	[DefaultValue(1)]
	[Description("Specifies the number of rows this component should span in the virtual grid.")]
	public int CellSpanY
	{
		get
		{
			return cellSpanY;
		}
		set
		{
			if (value != cellSpanY)
			{
				cellSpanY = value;
				OnPropertyChanged();
			}
		}
	}

	[Description("Specifies the weight of this component in obtaining the extra horizontal space.")]
	[DefaultValue(0.0)]
	public double WeightX
	{
		get
		{
			return weightX;
		}
		set
		{
			if (value != weightX)
			{
				weightX = value;
				OnPropertyChanged();
			}
		}
	}

	[Description("Specifies the weight of this component in obtaining the extra vertical space.")]
	[DefaultValue(0.0)]
	public double WeightY
	{
		get
		{
			return weightY;
		}
		set
		{
			if (value != weightY)
			{
				weightY = value;
				OnPropertyChanged();
			}
		}
	}

	[Description("Specifies the justification of a component within its available layout bounds (a cell in the virtual grid).")]
	[DefaultValue(AnchorTypes.Center)]
	public AnchorTypes Anchor
	{
		get
		{
			return anchor;
		}
		set
		{
			if (value != anchor)
			{
				anchor = value;
				OnPropertyChanged();
			}
		}
	}

	[DefaultValue(FillType.None)]
	[Description("Specifies whether (and how) to resize a component when the component's layout bounds are larger than its preferred size.")]
	public FillType Fill
	{
		get
		{
			return fill;
		}
		set
		{
			if (value != fill)
			{
				fill = value;
				OnPropertyChanged();
			}
		}
	}

	[Description("Specifies the extra space that the manager adds around a component's preferred bounds before laying out the component.")]
	public Insets Insets
	{
		get
		{
			return insets;
		}
		set
		{
			if (value != insets)
			{
				insets = value;
				OnPropertyChanged();
			}
		}
	}

	[DefaultValue(0)]
	[Description("Specifies the amount in pixels to add to the size of the component when determining its overall width.")]
	public int IpadX
	{
		get
		{
			return ipadX;
		}
		set
		{
			if (value != ipadX)
			{
				ipadX = ((value >= 0) ? value : 0);
				OnPropertyChanged();
			}
		}
	}

	[DefaultValue(0)]
	[Description("Specifies the amount in pixels to add to the size of the component when determining its overall height.")]
	public int IpadY
	{
		get
		{
			return ipadY;
		}
		set
		{
			if (value != ipadY)
			{
				ipadY = ((value >= 0) ? value : 0);
				OnPropertyChanged();
			}
		}
	}

	[Description("Represents the GridBagConstraints structure with its properties left uninitialized.")]
	[DefaultValue(false)]
	public bool IsEmpty
	{
		get
		{
			return isEmpty;
		}
		set
		{
			if (value != isEmpty)
			{
				isEmpty = value;
				OnPropertyChanged();
			}
		}
	}

	public event EventHandler PropertyChanged;

	static GridBagConstraints()
	{
		Empty = Default();
		Empty.IsEmpty = true;
	}

	public static GridBagConstraints Default()
	{
		return new GridBagConstraints();
	}

	public GridBagConstraints()
		: this(-1, -1, 1, 1, 0.0, 0.0, AnchorTypes.Center, FillType.None, new Insets(0, 0, 0, 0), 0, 0, isEmpty: false)
	{
	}

	public GridBagConstraints(int gridPosX, int gridPosY, int cellSpanX, int cellSpanY, double weightX, double weightY, AnchorTypes anchor, FillType fill, Insets insets, int ipadX, int ipadY, bool isEmpty)
	{
		this.gridPosX = gridPosX;
		this.gridPosY = gridPosY;
		this.cellSpanX = cellSpanX;
		this.cellSpanY = cellSpanY;
		this.weightX = weightX;
		this.weightY = weightY;
		this.anchor = anchor;
		this.fill = fill;
		this.insets = insets;
		this.ipadX = ipadX;
		this.ipadY = ipadY;
		this.isEmpty = isEmpty;
	}

	public object Clone()
	{
		return (GridBagConstraints)MemberwiseClone();
	}

	public override int GetHashCode()
	{
		return base.GetHashCode();
	}

	public override bool Equals(object o)
	{
		bool result = false;
		if (this == o)
		{
			return true;
		}
		if (o is GridBagConstraints)
		{
			GridBagConstraints gridBagConstraints = (GridBagConstraints)o;
			if (Anchor != gridBagConstraints.Anchor)
			{
				return false;
			}
			if (CellSpanX != gridBagConstraints.CellSpanX)
			{
				return false;
			}
			if (CellSpanY != gridBagConstraints.CellSpanY)
			{
				return false;
			}
			if (Fill != gridBagConstraints.Fill)
			{
				return false;
			}
			if (GridPosX != gridBagConstraints.GridPosX)
			{
				return false;
			}
			if (GridPosY != gridBagConstraints.GridPosY)
			{
				return false;
			}
			if (Insets != gridBagConstraints.Insets)
			{
				return false;
			}
			if (IpadX != gridBagConstraints.IpadX)
			{
				return false;
			}
			if (IpadY != gridBagConstraints.IpadY)
			{
				return false;
			}
			if (WeightX != gridBagConstraints.WeightX)
			{
				return false;
			}
			if (WeightY != gridBagConstraints.WeightY)
			{
				return false;
			}
			if (IsEmpty != gridBagConstraints.IsEmpty)
			{
				return false;
			}
			return true;
		}
		return result;
	}

	public static bool operator ==(GridBagConstraints lhs, GridBagConstraints rhs)
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

	public static bool operator !=(GridBagConstraints lhs, GridBagConstraints rhs)
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

	protected virtual void OnPropertyChanged()
	{
		if (this.PropertyChanged != null)
		{
			this.PropertyChanged(this, EventArgs.Empty);
		}
	}
}
