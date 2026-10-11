using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[TypeConverter(typeof(FlowLayoutConstraintsConverter))]
public class FlowLayoutConstraints : ICloneable
{
	private bool active = true;

	private HorzFlowAlign halign;

	private bool newLine;

	private VertFlowAlign valign = VertFlowAlign.Center;

	internal bool isEmpty;

	private bool propRowHeight;

	private bool propColWidth;

	public static readonly FlowLayoutConstraints Empty;

	[DefaultValue(true)]
	[Description("Specifies whether the child should participate in layout.")]
	public bool Active
	{
		get
		{
			return active;
		}
		set
		{
			active = value;
		}
	}

	[DefaultValue(HorzFlowAlign.Left)]
	[Description("Specifies the mode in which the child should be laid out within a row.")]
	public HorzFlowAlign HAlign
	{
		get
		{
			return halign;
		}
		set
		{
			halign = value;
		}
	}

	[Description("Specifies the mode in which the child should be laid out within a column.")]
	[DefaultValue(VertFlowAlign.Center)]
	public VertFlowAlign VAlign
	{
		get
		{
			return valign;
		}
		set
		{
			valign = value;
		}
	}

	[Description("Specifies whether this child should always be moved to the beginning of a new line.")]
	[DefaultValue(false)]
	public bool NewLine
	{
		get
		{
			return newLine;
		}
		set
		{
			newLine = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies if proportional row heights should be used in horizontal layout.")]
	public bool ProportionalRowHeight
	{
		get
		{
			return propRowHeight;
		}
		set
		{
			propRowHeight = value;
		}
	}

	[DefaultValue(false)]
	[Description("Specifies if proportional col widths should be used in vertical layout.")]
	public bool ProportionalColWidth
	{
		get
		{
			return propColWidth;
		}
		set
		{
			propColWidth = value;
		}
	}

	[Description("Specifies if there are valid values in this constraint instance.")]
	[DefaultValue(false)]
	public bool IsEmpty
	{
		get
		{
			return isEmpty;
		}
		set
		{
			isEmpty = value;
		}
	}

	static FlowLayoutConstraints()
	{
		Empty = Default();
		Empty.IsEmpty = true;
	}

	public static FlowLayoutConstraints Default()
	{
		return new FlowLayoutConstraints();
	}

	public FlowLayoutConstraints()
	{
	}

	public FlowLayoutConstraints(bool active, HorzFlowAlign halign, VertFlowAlign valign, bool newline, bool proportionalColWidth, bool proportionalRowHeight)
	{
		this.active = active;
		this.halign = halign;
		this.valign = valign;
		newLine = newline;
		propColWidth = proportionalColWidth;
		propRowHeight = proportionalRowHeight;
	}

	public object Clone()
	{
		return (FlowLayoutConstraints)MemberwiseClone();
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
		if (o is FlowLayoutConstraints)
		{
			FlowLayoutConstraints flowLayoutConstraints = (FlowLayoutConstraints)o;
			if (Active != flowLayoutConstraints.Active)
			{
				return false;
			}
			if (HAlign != flowLayoutConstraints.HAlign)
			{
				return false;
			}
			if (NewLine != flowLayoutConstraints.NewLine)
			{
				return false;
			}
			if (ProportionalColWidth != flowLayoutConstraints.ProportionalColWidth)
			{
				return false;
			}
			if (ProportionalRowHeight != flowLayoutConstraints.ProportionalRowHeight)
			{
				return false;
			}
			if (VAlign != flowLayoutConstraints.VAlign)
			{
				return false;
			}
			return true;
		}
		return result;
	}

	public static bool operator ==(FlowLayoutConstraints lhs, FlowLayoutConstraints rhs)
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

	public static bool operator !=(FlowLayoutConstraints lhs, FlowLayoutConstraints rhs)
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
