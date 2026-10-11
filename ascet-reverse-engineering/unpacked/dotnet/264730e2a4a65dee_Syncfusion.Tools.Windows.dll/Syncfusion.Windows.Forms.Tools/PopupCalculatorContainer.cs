using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
internal class PopupCalculatorContainer : PopupControlContainer
{
	private PopupCalculator calculator;

	public PopupCalculatorContainer(PopupCalculator calculator)
	{
		this.calculator = calculator;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			calculator = null;
		}
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	public override Point GetPreferredLocation(PopupRelativeAlignment prevAlignment, out PopupRelativeAlignment newAlignment)
	{
		if (base.PopupParent != null)
		{
			Point locationForPopupAlignment = base.PopupParent.GetLocationForPopupAlignment(prevAlignment, out newAlignment);
			if (locationForPopupAlignment != Point.Empty)
			{
				return locationForPopupAlignment;
			}
		}
		if (base.DiscreetLocation != Point.Empty)
		{
			newAlignment = PopupRelativeAlignment.Default;
			return base.DiscreetLocation;
		}
		Point empty = Point.Empty;
		Control control = base.ParentControl;
		if (control != null)
		{
			Rectangle bounds = control.Bounds;
			empty = PopupUtils.ComputeDefaultPopupAlignment(prevAlignment, out newAlignment, (calculator.PopupCalculatorAlignment == CalculatorPopupAlignment.Left) ? PopupRelativeAlignment.BottomLeft : PopupRelativeAlignment.BottomRight, PopupRelativeAlignment.BottomLeft, bounds);
			if (RightToLeft.Yes == control.RightToLeft)
			{
				int num = bounds.Left - empty.X;
				empty.X = bounds.Right - base.Width - num;
			}
			Control control2 = control.Parent;
			if (control2 != null)
			{
				empty = control2.PointToScreen(empty);
			}
		}
		else
		{
			newAlignment = PopupRelativeAlignment.Default;
			empty = new Point(1, 1);
		}
		return empty;
	}

	protected override bool ProcessDialogKey(Keys key)
	{
		Keys keys = key & Keys.KeyCode;
		_ = Control.ModifierKeys;
		Keys keys2 = keys;
		if (keys2 == Keys.Tab || keys2 == Keys.Return || keys2 == Keys.F2)
		{
			calculator.HandleEnterKey();
		}
		return base.ProcessDialogKey(key);
	}
}
