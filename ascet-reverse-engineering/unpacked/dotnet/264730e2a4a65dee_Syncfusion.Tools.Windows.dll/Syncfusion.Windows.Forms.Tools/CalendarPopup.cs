using System;
using System.ComponentModel;
using System.Drawing;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxItem(false)]
public class CalendarPopup : PopupControlContainer
{
	private MonthCalendarAdv calendar;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public MonthCalendarAdv Calendar
	{
		get
		{
			return calendar;
		}
		set
		{
			calendar = value;
			calendar.PopupParent = this;
		}
	}

	[Obsolete("This constructor is equal to default constructor. Use default constructor instead of this, because PopupControlContainer is Control, not component.")]
	public CalendarPopup(IContainer container)
		: base(container)
	{
	}

	public CalendarPopup()
	{
	}

	internal void TogglePopup(Point pos, ParentBarItem parentBarItem)
	{
		if (base.CurrentPopupChild != null)
		{
			base.CurrentPopupChild = null;
		}
		else
		{
			ShowPopupMenu(pos, parentBarItem);
		}
	}

	internal void ShowPopupMenu(Point pos, ParentBarItem parentBarItem)
	{
		MenuGrid menuGrid = (MenuGrid)(base.CurrentPopupChild = XPMenuGridFactory.GetMenuGridToDeploy());
		menuGrid.Show(parentBarItem, pos, this, setDefaultSelection: false);
		menuGrid.RightToLeft = Calendar.RightToLeft;
		if (!menuGrid.IsShowing())
		{
			((IPopupParent)this).ChildClosing((IPopupChild)menuGrid, PopupCloseType.Canceled);
		}
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (calendar != null)
		{
			calendar.PopupParent = null;
			calendar = null;
		}
	}

	protected override PopupHost CreatePopupHost()
	{
		return new CalendarPopupHost();
	}
}
