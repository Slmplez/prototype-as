using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCurrentCellListItemChangedEventArgs : SyncfusionEventArgs
{
	private int recordIndex;

	private bool isEditing;

	private GridCurrentCell gcc;

	private GridCurrentRecordItemChangedBehavior currentRecordItemChangedBehavior;

	[TraceProperty(true)]
	public int RecordIndex => recordIndex;

	[TraceProperty(true)]
	public bool IsEditing => isEditing;

	[TraceProperty(true)]
	public GridCurrentCell CurrentCell => gcc;

	[TraceProperty(true)]
	public GridCurrentRecordItemChangedBehavior CurrentRecordItemChangedBehavior
	{
		get
		{
			return currentRecordItemChangedBehavior;
		}
		set
		{
			currentRecordItemChangedBehavior = value;
		}
	}

	public GridCurrentCellListItemChangedEventArgs(int recordIndex, bool isEditing, GridCurrentCell gcc, GridCurrentRecordItemChangedBehavior currentRecordItemChangedBehavior)
	{
		this.recordIndex = recordIndex;
		this.isEditing = isEditing;
		this.gcc = gcc;
		this.currentRecordItemChangedBehavior = currentRecordItemChangedBehavior;
	}
}
