using System;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
[DocumentationExclude]
internal sealed class GridModelHideColsIndexer : GridModelHideRowColsIndexer
{
	public override string RowColName => "HideColumn";

	public override GridModelRowColOperations RowColObject => model.Cols;

	public override bool this[string name]
	{
		get
		{
			return base[base.Model.NameToColIndex(name)];
		}
		set
		{
			base[base.Model.NameToColIndex(name)] = value;
		}
	}

	private GridModelHideColsIndexer(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	public GridModelHideColsIndexer(GridModel model)
		: base(model)
	{
	}

	public override void OnChanged(GridRowColHiddenEventArgs e)
	{
		base.Model.RaiseColsHidden(e);
		base.Model.Modified = true;
		base.Model.colHiddenEntries = null;
	}

	public override bool OnChanging(GridRowColHidingEventArgs e)
	{
		base.Model.RaiseColsHiding(e);
		return !e.Cancel;
	}

	protected override void OnSaveHide(GridRowColHideEventArgs e)
	{
		base.Model.RaiseSaveHideCol(e);
	}

	protected override void OnQueryHide(GridRowColHideEventArgs e)
	{
		base.Model.RaiseQueryHideCol(e);
	}
}
