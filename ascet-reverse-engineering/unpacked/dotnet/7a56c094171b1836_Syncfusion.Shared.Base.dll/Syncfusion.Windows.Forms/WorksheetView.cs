using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

[ToolboxItem(false)]
public class WorksheetView : TabBarPage
{
	private WorksheetModel worksheet;

	private WorkbookView workbookView;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public WorkbookView WorkbookView => workbookView;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public WorksheetModel Worksheet => worksheet;

	public WorksheetView(WorksheetModel worksheet, WorkbookView workbookView)
	{
		this.worksheet = worksheet;
		this.workbookView = workbookView;
		FetchWorksheet();
		WireEvents();
	}

	protected override void InitLayout()
	{
		Control control = worksheet.CreateControl();
		if (control != null)
		{
			control.Visible = true;
			base.Controls.Add(control);
		}
	}

	private void FetchWorksheet()
	{
		base.Text = worksheet.Name;
		base.ToolTipText = worksheet.ToolTipText;
		base.Visible = false;
		BackColor = Color.FromArgb(255, 255, 128);
		base.Visible = false;
		base.SplitBars = DynamicSplitBars.Both;
	}

	protected override void OnTextChanged(EventArgs e)
	{
		base.OnTextChanged(e);
		worksheet.Name = base.Text;
	}

	protected override void OnToolTipTextChanged(EventArgs e)
	{
		base.OnToolTipTextChanged(e);
		worksheet.ToolTipText = base.ToolTipText;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnwireEvents();
		}
		base.Dispose(disposing);
	}

	private void WireEvents()
	{
		worksheet.NameChanged += OnWorksheetNameChanged;
		worksheet.ToolTipTextChanged += OnWorksheetToolTipChanged;
	}

	private void UnwireEvents()
	{
		worksheet.NameChanged -= OnWorksheetNameChanged;
		worksheet.ToolTipTextChanged -= OnWorksheetToolTipChanged;
	}

	private void OnWorksheetNameChanged(object sender, EventArgs e)
	{
		base.Text = worksheet.Name;
	}

	private void OnWorksheetToolTipChanged(object sender, EventArgs e)
	{
		base.ToolTipText = worksheet.ToolTipText;
	}
}
