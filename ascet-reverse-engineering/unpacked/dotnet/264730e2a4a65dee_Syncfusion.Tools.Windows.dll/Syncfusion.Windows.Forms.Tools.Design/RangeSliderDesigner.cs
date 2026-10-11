using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RangeSliderDesigner : ControlDesigner
{
	private bool locked;

	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules result = base.SelectionRules;
			RangeSlider rangeSlider = base.Component as RangeSlider;
			if (rangeSlider.Orientation == Orientation.Horizontal)
			{
				if (rangeSlider != null && rangeSlider.AutoSize)
				{
					result = SelectionRules.Moveable | SelectionRules.LeftSizeable | SelectionRules.RightSizeable;
				}
			}
			else if (rangeSlider != null && rangeSlider.AutoSize)
			{
				result = SelectionRules.Moveable | SelectionRules.TopSizeable | SelectionRules.BottomSizeable;
			}
			if (Locked)
			{
				result = SelectionRules.Locked;
			}
			return result;
		}
	}

	public bool Locked
	{
		get
		{
			return locked;
		}
		set
		{
			locked = value;
		}
	}

	protected override void PreFilterProperties(IDictionary properties)
	{
		base.PreFilterProperties(properties);
		properties["Locked"] = TypeDescriptor.CreateProperty(typeof(RangeSliderDesigner), (PropertyDescriptor)properties["Locked"]);
	}
}
