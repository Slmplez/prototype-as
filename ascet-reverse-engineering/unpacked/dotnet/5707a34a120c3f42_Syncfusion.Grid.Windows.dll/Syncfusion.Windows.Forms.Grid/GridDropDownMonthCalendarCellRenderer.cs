using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

public class GridDropDownMonthCalendarCellRenderer : GridDropDownCellRenderer
{
	private MonthCalendar calendar;

	private static Size calendarControlSize = Size.Empty;

	[DocumentationExclude]
	public static Size CalendarControlSize
	{
		get
		{
			if (calendarControlSize.IsEmpty)
			{
				TopLevelWindow topLevelWindow = new TopLevelWindow();
				topLevelWindow.Location = new Point(10000, 10000);
				topLevelWindow.Size = new Size(500, 500);
				topLevelWindow.ShowWindowTopMost();
				MonthCalendar monthCalendar = new MonthCalendar();
				topLevelWindow.Controls.Add(monthCalendar);
				topLevelWindow.Visible = true;
				calendarControlSize = monthCalendar.Size;
				topLevelWindow.Dispose();
			}
			return calendarControlSize;
		}
	}

	public GridDropDownMonthCalendarCellRenderer(GridControlBase grid, GridCellModelBase cellModel)
		: base(grid, cellModel)
	{
		base.DropDownButton = new GridCellComboBoxButton(this);
		base.DropDownImp.InitFocusEditPart = true;
	}

	protected override void InitializeDropDownContainer()
	{
		base.InitializeDropDownContainer();
		calendar = new MonthCalendar();
		calendar.Dock = DockStyle.Fill;
		calendar.Visible = true;
		calendar.DateSelected += CalendarDateSelected;
		calendar.MaxSelectionCount = 1;
		base.DropDownContainer.Controls.Add(calendar);
	}

	public override void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (popupCloseType == PopupCloseType.Done && !IsReadOnly())
		{
			if (!NotifyCurrentCellChanging())
			{
				return;
			}
			DateTime selectionStart = calendar.SelectionStart;
			if (base.StyleInfo.CellValueType == typeof(DateTime))
			{
				ControlValue = selectionStart;
			}
			else
			{
				ControlValue = selectionStart.ToShortDateString();
			}
			base.TextBox.Select(0, 0);
			base.TextBox.Modified = true;
			base.TextBox.Focus();
		}
		base.ChildClosing(childUI, popupCloseType);
	}

	protected override void OnCloseDropDown(PopupCloseType reason)
	{
		base.OnCloseDropDown(reason);
	}

	private void CalendarDateSelected(object sender, DateRangeEventArgs date)
	{
		base.CurrentCell.CloseDropDown(PopupCloseType.Done);
	}

	public override void DropDownContainerShowingDropDown(object sender, CancelEventArgs e)
	{
		Size size = new Size(CalendarControlSize.Width + 2, CalendarControlSize.Height + 2);
		GridCurrentCellShowingDropDownEventArgs e2 = new GridCurrentCellShowingDropDownEventArgs(size);
		base.Grid.RaiseCurrentCellShowingDropDown(e2);
		if (e2.Cancel)
		{
			e.Cancel = true;
			return;
		}
		base.DropDownContainer.Size = e2.Size;
		try
		{
			object obj = ControlValue;
			if (obj is DateTime)
			{
				calendar.SetDate((DateTime)obj);
			}
			else if (base.TextBox.Text.Length > 0)
			{
				calendar.SetDate(DateTime.Parse(base.TextBox.Text));
			}
			else
			{
				calendar.SetDate(DateTime.Now);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}
}
