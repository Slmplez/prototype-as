namespace Syncfusion.Windows.Forms;

public class WorksheetViewCollection : TabBarPageCollection
{
	private WorkbookView owner;

	public WorksheetViewCollection(WorkbookView owner)
		: base(owner)
	{
		this.owner = owner;
	}

	public override void Add(TabBarPage value)
	{
		WorksheetView worksheetView = value as WorksheetView;
		base.Add(value);
	}
}
