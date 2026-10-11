using System;
using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Drawing;

namespace Syncfusion.Windows.Forms.Grid.Design;

[ToolboxItem(false)]
internal class GridDesignerPreviewGrid : GridControl
{
	private GridFrame gridFrame;

	private GridFindReplaceDialogSink findReplaceDialogSink;

	public GridFindReplaceDialogSink GridFindReplaceDialogSink
	{
		get
		{
			if (findReplaceDialogSink == null)
			{
				findReplaceDialogSink = new GridFindReplaceDialogSink(this);
			}
			return findReplaceDialogSink;
		}
	}

	public GridDesignerPreviewGrid(GridModel model, GridFrame gridFrame)
		: base(model)
	{
		this.gridFrame = gridFrame;
	}

	protected override void OnCurrentCellActivated(EventArgs e)
	{
		GridFindReplaceDialog.ResetFindLocation();
		gridFrame.OnPreviewGridCurrentCellActivated(this, e);
		base.OnCurrentCellActivated(e);
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		gridFrame.OnPreviewGridMouseDown(this, e);
		base.OnMouseDown(e);
	}

	protected override void OnPrepareViewStyleInfo(GridPrepareViewStyleInfoEventArgs e)
	{
		gridFrame.OnPreviewGridPrepareViewStyleInfo(this, e);
		e.Style.Enabled = true;
		base.OnPrepareViewStyleInfo(e);
	}

	protected override void OnControlGotFocus()
	{
		GridFindReplaceDialog.SetActiveSinkIfVisible(GridFindReplaceDialogSink);
		base.OnControlGotFocus();
	}

	public override void Initialize()
	{
		base.Initialize();
		base.TopRowIndex = InternalGetHeaderRows() + 1;
		base.LeftColIndex = InternalGetHeaderCols() + 1;
		AllowDrop = true;
		base.IgnoreReadOnly = true;
	}

	public static void SetupGridModel(GridModel model)
	{
		model.CommandStack.Enabled = true;
	}

	private static void ModelQueryCellModel(object sender, GridQueryCellModelEventArgs e)
	{
		if (e.CellModel == null)
		{
			IGridCellModelFactory cellModelFactory = GridFactoryProvider.CellModelFactory;
			if (cellModelFactory != null)
			{
				e.CellModel = cellModelFactory.CreateCellModel(e.CellType, (GridModel)sender);
			}
		}
	}

	protected override bool ShouldDeactivateCurrentCell()
	{
		if (base.CausesValidation)
		{
			return base.ShouldDeactivateCurrentCell();
		}
		return false;
	}

	protected override void WireModel()
	{
		base.WireModel();
		WireGridModel(base.Model);
	}

	protected override void UnwireModel()
	{
		base.UnwireModel();
		UnwireGridModel(base.Model);
	}

	internal void WireGridModel(GridModel grid)
	{
		grid.CellsChanged += grid1_CellsChanged;
		grid.RowHeightsChanged += grid1_RowHeightsChanged;
		grid.ColWidthsChanged += grid1_ColWidthsChanged;
		grid.Properties.Changed += Properties_Changed;
		grid.ColsRemoved += grid1_ColsRemoved;
		grid.ColsInserted += grid1_ColsInserted;
		grid.RowsRemoved += grid1_RowsRemoved;
		grid.RowsInserted += grid1_RowsInserted;
		grid.SelectionChanged += grid1_SelectionChanged;
		grid.PrepareGraphics += grid1_PrepareGraphics;
	}

	internal void UnwireGridModel(GridModel grid)
	{
		grid.CellsChanged -= grid1_CellsChanged;
		grid.RowHeightsChanged -= grid1_RowHeightsChanged;
		grid.ColWidthsChanged -= grid1_ColWidthsChanged;
		grid.Properties.Changed -= Properties_Changed;
		grid.ColsRemoved -= grid1_ColsRemoved;
		grid.ColsInserted -= grid1_ColsInserted;
		grid.RowsRemoved -= grid1_RowsRemoved;
		grid.RowsInserted -= grid1_RowsInserted;
		grid.SelectionChanged -= grid1_SelectionChanged;
		grid.PrepareGraphics -= grid1_PrepareGraphics;
	}

	private void grid1_ColWidthsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		gridFrame.OnPreviewGridColWidthsChanged(sender, e);
	}

	private void grid1_RowHeightsChanged(object sender, GridRowColSizeChangedEventArgs e)
	{
		gridFrame.OnPreviewGridRowHeightsChanged(sender, e);
	}

	private void grid1_CellsChanged(object sender, GridCellsChangedEventArgs e)
	{
		gridFrame.OnPreviewGridCellsChanged(sender, e);
	}

	private void Properties_Changed(object sender, EventArgs e)
	{
		gridFrame.OnPreviewGridPropertiesChanged(sender, e);
	}

	private void grid1_ColsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		gridFrame.OnPreviewGridColsRemoved(sender, e);
	}

	private void grid1_ColsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		gridFrame.OnPreviewGridColsInserted(sender, e);
	}

	private void grid1_RowsRemoved(object sender, GridRangeRemovedEventArgs e)
	{
		gridFrame.OnPreviewGridRowsRemoved(sender, e);
	}

	private void grid1_RowsInserted(object sender, GridRangeInsertedEventArgs e)
	{
		gridFrame.OnPreviewGridRowsInserted(sender, e);
	}

	private void grid1_SelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		gridFrame.OnPreviewGridSelectionChanged(sender, e);
	}

	private void grid1_PrepareGraphics(object sender, GraphicsEventArgs e)
	{
		gridFrame.OnPreviewGridPrepareGraphics(sender, e);
	}

	protected override void OnModelChanged(EventArgs e)
	{
		gridFrame.OnPreviewGridModelChanged(this, e);
		base.OnModelChanged(e);
	}
}
