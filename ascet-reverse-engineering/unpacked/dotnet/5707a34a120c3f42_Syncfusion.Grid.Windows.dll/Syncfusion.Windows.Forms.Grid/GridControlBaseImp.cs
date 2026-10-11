using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public class GridControlBaseImp : GridControlBase
{
	private IMouseController resizeCellsController;

	private IMouseController dragSelectRowOrColumnController;

	private IMouseController selectCellsController;

	private IMouseController dragColumnHeaderController;

	internal IMouseController clickCellsController;

	private IGridDataObjectConsumer dataDataObjectConsumer;

	private IGridDataObjectConsumer textDataObjectConsumer;

	private GridPaintSelectCells paintSelectCells;

	private GridOleDataSourceMouseController oleDataSource;

	private GridOleDropTarget oleDropTarget;

	private GridControlRowAccessibleObjectsIndexer recordAccessibleObjects;

	private GridControlColHeaderAccessibleObjectsIndexer colHeaderAccessibleObjects;

	private bool accessibilityEnabled;

	private ToolTip cellToolTip1;

	private int tipRow = -1;

	private int tipCol = -1;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public override IGridPaintSelectCells PaintSelectCells
	{
		get
		{
			if (paintSelectCells == null)
			{
				paintSelectCells = new GridPaintSelectCells(this);
			}
			return paintSelectCells;
		}
	}

	internal GridControlRowAccessibleObjectsIndexer RowAccessibleObjects
	{
		get
		{
			if (recordAccessibleObjects == null)
			{
				recordAccessibleObjects = new GridControlRowAccessibleObjectsIndexer(this);
			}
			return recordAccessibleObjects;
		}
	}

	internal GridControlColHeaderAccessibleObjectsIndexer ColHeaderAccessibleObjects
	{
		get
		{
			if (colHeaderAccessibleObjects == null)
			{
				colHeaderAccessibleObjects = new GridControlColHeaderAccessibleObjectsIndexer(this);
			}
			return colHeaderAccessibleObjects;
		}
	}

	[Description("Specifies if the control should enable its Accessibility support.")]
	[Category("Behavior")]
	[Browsable(true)]
	[DefaultValue(false)]
	public bool AccessibilityEnabled
	{
		get
		{
			return accessibilityEnabled;
		}
		set
		{
			accessibilityEnabled = value;
		}
	}

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public ToolTip CellToolTip
	{
		get
		{
			if (cellToolTip1 == null)
			{
				cellToolTip1 = CreateCellToolTip();
				cellToolTip1.Disposed += cellToolTip1_Disposed;
			}
			return cellToolTip1;
		}
		set
		{
			if (cellToolTip1 != value)
			{
				if (cellToolTip1 != null)
				{
					cellToolTip1.RemoveAll();
					cellToolTip1.Dispose();
				}
				cellToolTip1 = value;
				cellToolTip1.Disposed += cellToolTip1_Disposed;
			}
		}
	}

	[Category("Grid")]
	[Description("Occurs when mouse pointer is moved to a new cell and a ToolTip is initialized for that cell.")]
	public event GridActivateToolTipEventHandler ActivateToolTip;

	[Description("Occurs when the user hovers the mouse over a column header or clicks on it.")]
	[Category("Drag Drop")]
	public event GridQueryDragColumnHeaderEventHandler QueryAllowDragColumnHeader;

	static GridControlBaseImp()
	{
		InitCellModelFactory();
	}

	public GridControlBaseImp()
		: this(null)
	{
		InitCellModelFactory();
	}

	public GridControlBaseImp(GridModel model)
		: base(model)
	{
	}

	private static void InitCellModelFactory()
	{
		if (GridFactoryProvider.CellModelFactory == null || GridFactoryProvider.CellModelFactory.IsDefault)
		{
			GridFactoryProvider.Init(new GridCellModelFactory());
		}
	}

	protected override void InitializeMouseControllers()
	{
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.ResizeCells) != GridControllerOptions.None)
		{
			try
			{
				if (resizeCellsController == null)
				{
					resizeCellsController = new GridResizeCellsMouseController(this);
					base.MouseControllerDispatcher.Add(resizeCellsController);
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
		else if (resizeCellsController != null)
		{
			base.MouseControllerDispatcher.Remove(resizeCellsController);
			resizeCellsController = null;
		}
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.DragSelectRowOrColumn) != GridControllerOptions.None)
		{
			try
			{
				if (dragSelectRowOrColumnController == null)
				{
					dragSelectRowOrColumnController = new GridDragSelectMouseController(this);
					base.MouseControllerDispatcher.Add(dragSelectRowOrColumnController);
				}
			}
			catch (Exception ex2)
			{
				TraceUtil.TraceExceptionCatched(ex2);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex2))
				{
					throw;
				}
			}
		}
		else if (dragSelectRowOrColumnController != null)
		{
			base.MouseControllerDispatcher.Remove(dragSelectRowOrColumnController);
			dragSelectRowOrColumnController = null;
		}
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.SelectCells) != GridControllerOptions.None || (base.Model.Options.ControllerOptions & GridControllerOptions.ClickCells) != GridControllerOptions.None)
		{
			try
			{
				if (selectCellsController == null)
				{
					selectCellsController = new GridSelectCellsMouseController(this);
					base.MouseControllerDispatcher.Add(selectCellsController);
				}
			}
			catch (Exception ex3)
			{
				TraceUtil.TraceExceptionCatched(ex3);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex3))
				{
					throw;
				}
			}
		}
		else if (selectCellsController != null)
		{
			base.MouseControllerDispatcher.Remove(selectCellsController);
			selectCellsController = null;
		}
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.ExcelLikeSelection) != GridControllerOptions.None)
		{
			try
			{
				if (base.ExcelLikeFrameSelections == null)
				{
					base.ExcelLikeFrameSelections = new GridPaintExcelLikeSelection(this);
				}
			}
			catch (Exception ex4)
			{
				TraceUtil.TraceExceptionCatched(ex4);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex4))
				{
					throw;
				}
			}
		}
		else if (base.ExcelLikeFrameSelections != null)
		{
			base.ExcelLikeFrameSelections = null;
		}
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.OleDataSource) != GridControllerOptions.None)
		{
			try
			{
				EnableOleDataSource();
			}
			catch (Exception ex5)
			{
				TraceUtil.TraceExceptionCatched(ex5);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex5))
				{
					throw;
				}
			}
		}
		else if (oleDataSource != null)
		{
			base.MouseControllerDispatcher.Remove(oleDataSource);
			oleDataSource = null;
		}
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.OleDropTarget) != GridControllerOptions.None)
		{
			try
			{
				EnableOleDropTarget();
			}
			catch (Exception ex6)
			{
				TraceUtil.TraceExceptionCatched(ex6);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex6))
				{
					throw;
				}
			}
		}
		else if (oleDropTarget != null)
		{
			oleDropTarget.Dispose();
			oleDropTarget = null;
		}
		InitializeDataObjectConsumerOptions();
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.DragColumnHeader) != GridControllerOptions.None)
		{
			try
			{
				if (dragColumnHeaderController == null)
				{
					dragColumnHeaderController = new GridDragColumnHeaderMouseController(this);
					base.MouseControllerDispatcher.Add(dragColumnHeaderController);
				}
				return;
			}
			catch (Exception ex7)
			{
				TraceUtil.TraceExceptionCatched(ex7);
				if (!ExceptionManager.RaiseExceptionCatched(this, ex7))
				{
					throw;
				}
				return;
			}
		}
		if (dragColumnHeaderController != null)
		{
			base.MouseControllerDispatcher.Remove(dragColumnHeaderController);
			dragColumnHeaderController = null;
		}
	}

	protected override void ResetMouseControllers()
	{
		base.MouseControllerDispatcher.Remove(resizeCellsController);
		base.MouseControllerDispatcher.Remove(dragSelectRowOrColumnController);
		base.MouseControllerDispatcher.Remove(selectCellsController);
		base.MouseControllerDispatcher.Remove(clickCellsController);
		base.MouseControllerDispatcher.Remove(oleDataSource);
		resizeCellsController = null;
		dragSelectRowOrColumnController = null;
		selectCellsController = null;
		clickCellsController = null;
		oleDataSource = null;
	}

	protected override void InitializeDataObjectConsumerOptions()
	{
		if ((base.Model.Options.ControllerOptions & GridControllerOptions.OleDropTarget) != GridControllerOptions.None)
		{
			if ((base.Model.Options.DataObjectConsumerOptions & GridDataObjectConsumerOptions.Styles) != GridDataObjectConsumerOptions.None)
			{
				RegisterDataObjectConsumer(dataDataObjectConsumer = new GridDataDataObjectConsumer(this));
			}
			else if (oleDropTarget != null)
			{
				oleDropTarget.UnregisterConsumer(dataDataObjectConsumer);
				dataDataObjectConsumer = null;
			}
			if ((base.Model.Options.DataObjectConsumerOptions & GridDataObjectConsumerOptions.Text) != GridDataObjectConsumerOptions.None)
			{
				RegisterDataObjectConsumer(textDataObjectConsumer = new GridTextDataObjectConsumer(this));
			}
			else if (textDataObjectConsumer != null)
			{
				oleDropTarget.UnregisterConsumer(textDataObjectConsumer);
				textDataObjectConsumer = null;
			}
		}
		else if (oleDropTarget != null)
		{
			if (dataDataObjectConsumer != null)
			{
				oleDropTarget.UnregisterConsumer(dataDataObjectConsumer);
				dataDataObjectConsumer = null;
			}
			if (textDataObjectConsumer != null)
			{
				oleDropTarget.UnregisterConsumer(textDataObjectConsumer);
				textDataObjectConsumer = null;
			}
			oleDropTarget.Dispose();
			oleDropTarget = null;
		}
	}

	protected override void WireModel()
	{
		base.WireModel();
		base.Model.SelectionChanged += ModelSelectionChanged;
		base.Model.PrepareClearSelection += ModelPrepareClearSelection;
		base.Model.PrepareChangeSelection += ModelPrepareChangeSelection;
	}

	protected override void UnwireModel()
	{
		base.UnwireModel();
		if (base.Model != null)
		{
			base.Model.SelectionChanged -= ModelSelectionChanged;
			base.Model.PrepareClearSelection -= ModelPrepareClearSelection;
			base.Model.PrepareChangeSelection -= ModelPrepareChangeSelection;
		}
	}

	protected override void IntUpdateSelectRange()
	{
		if (base.UpdateSelectRange_Range != null && !base.UpdateSelectRange_Range.IsEmpty)
		{
			PaintSelectCells.UpdateSelectRange(base.UpdateSelectRange_Range, base.UpdateSelectRange_OldRange);
			base.UpdateSelectRange_Range = null;
			base.UpdateSelectRange_OldRange = null;
		}
	}

	private void ModelSelectionChanged(object sender, GridSelectionChangedEventArgs e)
	{
		if (e.OldRanges != null && PaintSelectCells != null)
		{
			PaintSelectCells.UpdateSelectRange(e.Range, e.OldRanges);
		}
	}

	private void ModelPrepareClearSelection(object sender, EventArgs e)
	{
		if (PaintSelectCells != null)
		{
			PaintSelectCells.PrepareClearSelection();
		}
	}

	private void ModelPrepareChangeSelection(object sender, GridPrepareChangeSelectionEventArgs e)
	{
		if (PaintSelectCells != null)
		{
			PaintSelectCells.PrepareChangeSelection(e.OldRange, e.NewRange);
		}
	}

	public bool EnableOleDataSource()
	{
		return EnableOleDataSource(24);
	}

	public bool EnableOleDataSource(int flags)
	{
		if (oleDataSource != null)
		{
			base.MouseControllerDispatcher.Remove(oleDataSource);
		}
		oleDataSource = new GridOleDataSourceMouseController(this);
		if (oleDataSource != null)
		{
			base.MouseControllerDispatcher.Add(oleDataSource);
			return oleDataSource.EnableOleDataSource(flags);
		}
		return false;
	}

	public void EnableOleDropTarget()
	{
		int num = base.Model.Options.DragDropDropTargetFlags;
		if (num == 0)
		{
			num = 216;
		}
		EnableOleDropTarget(num);
	}

	public void EnableOleDropTarget(int flags)
	{
		if (oleDropTarget == null)
		{
			oleDropTarget = CreateOleDropTarget(this, flags);
		}
	}

	protected virtual GridOleDropTarget CreateOleDropTarget(GridControlBase grid, int flags)
	{
		GridOleDropTarget gridOleDropTarget = new GridOleDropTarget(this);
		gridOleDropTarget.Register(flags);
		return gridOleDropTarget;
	}

	public void RegisterDataObjectConsumer(IGridDataObjectConsumer consumer)
	{
		if (oleDropTarget == null)
		{
			EnableOleDropTarget();
		}
		oleDropTarget.RegisterConsumer(consumer);
	}

	internal GridControlRowAccessibleObject CreateRowAccessibilityInstance(int index)
	{
		return new GridControlRowAccessibleObject(this, index + 1);
	}

	internal GridControlColHeaderAccessibleObject CreateColHeaderAccessibilityInstance(int index)
	{
		return new GridControlColHeaderAccessibleObject(this, index + 1);
	}

	protected override AccessibleObject CreateAccessibilityInstance()
	{
		if (accessibilityEnabled)
		{
			return new GridControlBaseAccessibleObject(this);
		}
		return base.CreateAccessibilityInstance();
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing)
		{
			if (cellToolTip1 != null)
			{
				cellToolTip1.RemoveAll();
				cellToolTip1.Dispose();
				cellToolTip1 = null;
			}
			if (excelLikeFrameSelections is IDisposable)
			{
				((IDisposable)excelLikeFrameSelections).Dispose();
			}
			if (dataDataObjectConsumer is IDisposable)
			{
				((IDisposable)dataDataObjectConsumer).Dispose();
			}
			if (oleDataSource != null)
			{
				oleDataSource.Dispose();
			}
			if (oleDropTarget != null)
			{
				oleDropTarget.Dispose();
			}
			if (paintSelectCells != null)
			{
				paintSelectCells.Dispose();
			}
			if (textDataObjectConsumer is IDisposable)
			{
				((IDisposable)textDataObjectConsumer).Dispose();
			}
		}
	}

	protected virtual ToolTip CreateCellToolTip()
	{
		ToolTip toolTip = new ToolTip();
		toolTip.InitialDelay = 500;
		toolTip.ReshowDelay = 0;
		return toolTip;
	}

	protected override void Refresh(bool fromModel)
	{
		tipCol = -1;
		tipRow = -1;
		base.Refresh(fromModel);
	}

	internal void OnCellTipsMouseMove(MouseEventArgs e)
	{
		new Point(e.X, e.Y);
		if (PointToRowCol(new Point(e.X, e.Y), out var rowIndex, out var colIndex))
		{
			CurrentCell.AdjustRowColIfCoveredCell(ref rowIndex, ref colIndex);
		}
		if (IntelliMouseDragScroll.ActiveIntelliMouseDragScroll != null)
		{
			rowIndex = -1;
		}
		if (colIndex == tipCol && rowIndex == tipRow)
		{
			return;
		}
		ToolTip cellToolTip = ((GridControlBaseImp)GetGridWindow()).CellToolTip;
		tipCol = colIndex;
		tipRow = rowIndex;
		if (cellToolTip != null && cellToolTip.Active)
		{
			cellToolTip.Active = false;
		}
		if (rowIndex != -1)
		{
			GridStyleInfo viewStyleInfo = GetViewStyleInfo(rowIndex, colIndex);
			GridActivateToolTipEventArgs e2 = new GridActivateToolTipEventArgs(rowIndex, colIndex, viewStyleInfo);
			OnActivateToolTip(e2);
			if (!e2.Cancel && !GridUtil.IsEmpty(viewStyleInfo.CellTipText))
			{
				cellToolTip.RemoveAll();
				cellToolTip.Show(viewStyleInfo.CellTipText, GetGridWindow());
				cellToolTip.Active = true;
			}
			viewStyleInfo.Dispose();
		}
	}

	protected virtual void OnActivateToolTip(GridActivateToolTipEventArgs e)
	{
		if (this.ActivateToolTip != null)
		{
			this.ActivateToolTip(this, e);
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		base.OnMouseMove(e);
		OnCellTipsMouseMove(e);
	}

	private void cellToolTip1_Disposed(object sender, EventArgs e)
	{
		cellToolTip1.Disposed -= cellToolTip1_Disposed;
		cellToolTip1 = null;
	}

	protected virtual void OnQueryAllowDragColumnHeader(GridQueryDragColumnHeaderEventArgs e)
	{
		if (this.QueryAllowDragColumnHeader != null)
		{
			this.QueryAllowDragColumnHeader(this, e);
		}
	}

	internal void RaiseQueryAllowDragColumn(GridQueryDragColumnHeaderEventArgs e)
	{
		OnQueryAllowDragColumnHeader(e);
	}
}
