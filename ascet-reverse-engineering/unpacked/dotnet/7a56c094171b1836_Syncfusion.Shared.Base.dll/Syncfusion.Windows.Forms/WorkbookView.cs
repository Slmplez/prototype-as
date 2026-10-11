using System;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class WorkbookView : TabBarSplitterControl
{
	internal new class ControlCollection : TabBarSplitterControl.ControlCollection
	{
		private WorkbookView owner;

		public ControlCollection(WorkbookView owner)
			: base(owner)
		{
			this.owner = owner;
		}

		public override void Add(Control value)
		{
			WorksheetView worksheetView = value as WorksheetView;
			base.Add(value);
		}

		public override void Remove(Control value)
		{
			WorksheetView worksheetView = value as WorksheetView;
			base.Remove(value);
		}
	}

	private WorkbookModel workbook;

	private Form parentForm;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public WorkbookModel Workbook => workbook;

	public event EventHandler Activated;

	public WorkbookView(WorkbookModel workbook)
	{
		if (workbook == null)
		{
			throw new ArgumentNullException("workbook");
		}
		this.workbook = workbook;
		FetchModel();
		WireWorkbook();
	}

	protected override void OnHandleCreated(EventArgs e)
	{
		base.OnHandleCreated(e);
		parentForm = base.Parent as Form;
		if (parentForm != null)
		{
			parentForm.Activated += OnParentFormActived;
		}
	}

	private void OnParentFormActived(object sender, EventArgs e)
	{
		if (this.Activated != null)
		{
			this.Activated(this, e);
		}
		workbook.ActiveView = this;
	}

	private void FetchModel()
	{
		base.Name = workbook.Name;
		int count = workbook.Worksheets.Count;
		WorksheetView[] array = new WorksheetView[count];
		for (int i = 0; i < count; i++)
		{
			array[i] = new WorksheetView(workbook.Worksheets[i], this);
		}
		base.Controls.AddRange(array);
	}

	private void WireWorkbook()
	{
		workbook.NameChanged += OnWorkbookNameChanged;
		workbook.Worksheets.SheetMoved += OnWorksheetMoved;
	}

	private void UnwireWorkbook()
	{
		workbook.NameChanged -= OnWorkbookNameChanged;
		workbook.Worksheets.SheetMoved -= OnWorksheetMoved;
		if (parentForm != null)
		{
			parentForm.Activated -= OnParentFormActived;
		}
	}

	private void OnWorkbookNameChanged(object sender, EventArgs e)
	{
		base.Name = workbook.Name;
	}

	protected override void TabsMoving(object sender, TabMovedEventArgs e)
	{
		if (Validate())
		{
			Workbook.Worksheets.Move(e.Tab, e.DestTab);
		}
		e.Cancel = true;
	}

	private void OnWorksheetMoved(object sender, SheetMovedEventArgs e)
	{
		SuspendLayout();
		TabBarPage page = base.ActivePage;
		if (e.Reason == SheetMovedReason.ClearAll)
		{
			base.TabBarPages.Clear();
		}
		else if (e.Reason == SheetMovedReason.InsertSheet)
		{
			if (e.Index == -1)
			{
				base.TabBarPages.Add(new WorksheetView(workbook.Worksheets[e.Destination], this));
			}
			else
			{
				base.TabBarPages.Insert(e.Index, new WorksheetView(workbook.Worksheets[e.Index], this));
			}
		}
		else if (e.Reason == SheetMovedReason.RemoveSheet)
		{
			TabBarPage value = base.TabBarPages[e.Index];
			base.TabBarPages.Remove(value);
			base.Controls.Remove(value);
		}
		else if (e.Reason == SheetMovedReason.MoveSheet)
		{
			TabBarPage value2 = base.TabBarPages[e.Index];
			base.TabBarPages.Remove(value2);
			int num = e.Destination;
			if (e.Destination > e.Index)
			{
				num--;
			}
			base.TabBarPages.Insert(num, value2);
		}
		if (base.TabBarPages.Contains(page))
		{
			base.ActivePage = page;
			base.Bar.TabBarChild.CurrentTab = base.TabBarPages.IndexOf(page);
		}
		ResumeLayout(performLayout: true);
	}

	public override TabBarPageCollection OnCreateTabBarPageCollection()
	{
		return new WorksheetViewCollection(this);
	}

	protected override Control.ControlCollection CreateControlsInstance()
	{
		return new ControlCollection(this);
	}
}
