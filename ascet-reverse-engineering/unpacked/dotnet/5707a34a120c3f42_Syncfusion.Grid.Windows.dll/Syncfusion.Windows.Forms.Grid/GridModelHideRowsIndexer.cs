using System;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal sealed class GridModelHideRowsIndexer : GridModelHideRowColsIndexer
{
	public override string RowColName => "HideRow";

	public override GridModelRowColOperations RowColObject => model.Rows;

	public override bool this[string name]
	{
		get
		{
			return base[base.Model.NameToRowIndex(name)];
		}
		set
		{
			base[base.Model.NameToRowIndex(name)] = value;
		}
	}

	private GridModelHideRowsIndexer(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelHideRowsIndexer(GridModel model)
		: base(model)
	{
	}

	public override void OnChanged(GridRowColHiddenEventArgs e)
	{
		base.Model.RaiseRowsHidden(e);
		base.Model.Modified = true;
		base.Model.rowHiddenEntries = null;
	}

	public override bool OnChanging(GridRowColHidingEventArgs e)
	{
		base.Model.RaiseRowsHiding(e);
		return !e.Cancel;
	}

	protected override void OnSaveHide(GridRowColHideEventArgs e)
	{
		base.Model.RaiseSaveHideRow(e);
	}

	protected override void OnQueryHide(GridRowColHideEventArgs e)
	{
		base.Model.RaiseQueryHideRow(e);
	}
}
