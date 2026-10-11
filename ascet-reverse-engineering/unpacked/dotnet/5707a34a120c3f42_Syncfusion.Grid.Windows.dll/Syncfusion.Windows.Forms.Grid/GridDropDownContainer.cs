using System.ComponentModel;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[ToolboxItem(false)]
public class GridDropDownContainer : PopupControlContainer, IGridDropDownContainer, IPopupChild, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient, IPopupParent, IPopupItem, IQueryFocusInside
{
	internal IPopupParent inner;

	internal GridControlBase grid;

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			inner = null;
			grid = null;
		}
		base.Dispose(disposing);
	}

	bool IQueryFocusInside.QueryFocusInside()
	{
		if (base.ContainsFocus)
		{
			return true;
		}
		foreach (Control control in base.Controls)
		{
			if (control is IQueryFocusInside queryFocusInside && queryFocusInside.QueryFocusInside())
			{
				return true;
			}
		}
		return false;
	}

	void IPopupParent.ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (inner != null)
		{
			inner.ChildClosing(childUI, popupCloseType);
		}
	}

	Point IPopupParent.GetLocationForPopupAlignment(PopupRelativeAlignment relativeAlignment, out PopupRelativeAlignment newAlignment)
	{
		if (inner == null)
		{
			newAlignment = PopupRelativeAlignment.Default;
			return Point.Empty;
		}
		return inner.GetLocationForPopupAlignment(relativeAlignment, out newAlignment);
	}

	Point[] IPopupParent.GetBorderOverlapCue(PopupRelativeAlignment relativeAlignment)
	{
		if (inner == null)
		{
			return null;
		}
		return inner.GetBorderOverlapCue(relativeAlignment);
	}

	[SpecialName]
	void IGridDropDownContainer.set_PopupParent(IPopupParent P_0)
	{
		base.PopupParent = P_0;
	}

	[SpecialName]
	Control IGridDropDownContainer.get_ParentControl()
	{
		return base.ParentControl;
	}

	[SpecialName]
	void IGridDropDownContainer.set_ParentControl(Control P_0)
	{
		base.ParentControl = P_0;
	}
}
