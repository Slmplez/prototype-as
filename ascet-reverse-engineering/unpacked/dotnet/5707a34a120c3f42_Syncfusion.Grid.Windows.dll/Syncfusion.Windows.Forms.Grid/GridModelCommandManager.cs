using System;
using System.Collections;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridModelCommandManager : GridModelBound
{
	private Stack undoStack;

	private Stack redoStack;

	private GridCommandMode mode;

	private GridTransactionCommand transCmd;

	private int nestedTransactionCount;

	private bool rolledBack;

	internal bool selChanged;

	private bool enabled;

	public bool InTransaction => transCmd != null;

	public GridTransactionCommand CurrentTransactionCommand => transCmd;

	private Stack PushStack
	{
		get
		{
			if (transCmd != null)
			{
				return transCmd.Stack;
			}
			if (mode == GridCommandMode.Undo)
			{
				return RedoStack;
			}
			return UndoStack;
		}
	}

	private Stack PullStack
	{
		get
		{
			if (mode == GridCommandMode.Redo)
			{
				return RedoStack;
			}
			return UndoStack;
		}
	}

	public GridCommandMode Mode
	{
		get
		{
			return mode;
		}
		set
		{
			mode = value;
		}
	}

	public bool Enabled
	{
		get
		{
			return enabled;
		}
		set
		{
			enabled = value;
		}
	}

	public bool ShouldGenerateUndoInfo
	{
		get
		{
			if (enabled && model.ShouldRecordUndo)
			{
				return mode != GridCommandMode.Rollback;
			}
			return false;
		}
	}

	public bool IsRecording
	{
		get
		{
			if (enabled)
			{
				return mode == GridCommandMode.Recording;
			}
			return false;
		}
	}

	public Stack UndoStack
	{
		get
		{
			if (undoStack == null)
			{
				undoStack = new Stack();
			}
			return undoStack;
		}
	}

	public Stack RedoStack
	{
		get
		{
			if (redoStack == null)
			{
				redoStack = new Stack();
			}
			return redoStack;
		}
	}

	public GridModelCommandManager(GridModel model)
		: base(model)
	{
	}

	public GridSelectionStateCommand CreateSelectionStateCommand()
	{
		GridSelectionStateCommand result = null;
		if (!InTransaction && base.Model.selectionStateChanged)
		{
			GridRangeInfo[] array = new GridRangeInfo[base.Model.SelectedRanges.Count];
			if (array.Length > 0)
			{
				base.Model.SelectedRanges.CopyTo(array, 0);
			}
			result = new GridSelectionStateCommand(base.Model, base.Model.currentRow, base.Model.currentCol, array);
			base.Model.selectionStateChanged = false;
		}
		return result;
	}

	public void Push(SyncfusionCommand cmd)
	{
		Push(cmd, CreateSelectionStateCommand());
	}

	public void Push(SyncfusionCommand cmd, SyncfusionCommand selectionStateCommand)
	{
		PushStack.Push(cmd);
		if (selectionStateCommand != null)
		{
			PushStack.Push(selectionStateCommand);
		}
		if (mode == GridCommandMode.Recording)
		{
			RedoStack.Clear();
		}
		base.Model.RaiseCommandStackChanged(EventArgs.Empty);
	}

	private SyncfusionCommand Peek()
	{
		Stack pullStack = PullStack;
		return pullStack.Peek() as SyncfusionCommand;
	}

	private SyncfusionCommand Pop()
	{
		try
		{
			Stack pullStack = PullStack;
			if (pullStack.Count > 0)
			{
				return pullStack.Pop() as SyncfusionCommand;
			}
			return null;
		}
		finally
		{
			base.Model.RaiseCommandStackChanged(EventArgs.Empty);
		}
	}

	public void Clear()
	{
		undoStack.Clear();
		redoStack.Clear();
	}

	public void Undo()
	{
		bool flag = false;
		try
		{
			GridCurrentCell gridCurrentCell = ((base.Model.ActiveGridView != null) ? base.Model.ActiveGridView.CurrentCell : null);
			if (gridCurrentCell != null && gridCurrentCell.IsModified)
			{
				object controlText = gridCurrentCell.Renderer.ControlText;
				gridCurrentCell.RejectChanges();
				gridCurrentCell.Deactivate(discardChanges: true);
				gridCurrentCell.Refresh();
				RedoStack.Push(new GridCurrentCellValueCommand(base.Model, gridCurrentCell.RowIndex, gridCurrentCell.ColIndex, controlText));
				return;
			}
			if (IsRecording && RedoStack.Count == 0)
			{
				SyncfusionCommand syncfusionCommand = CreateSelectionStateCommand();
				if (syncfusionCommand != null)
				{
					base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
					flag = true;
					RedoStack.Push(syncfusionCommand);
				}
			}
			if (IsRecording && RedoStack.Count > 0 && UndoStack.Count > 0 && UndoStack.Peek() is GridSelectionStateCommand)
			{
				if (!flag)
				{
					base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
				}
				flag = true;
				Execute(GridCommandMode.Undo);
			}
			Execute(GridCommandMode.Undo);
		}
		finally
		{
			if (flag)
			{
				base.Model.EndUpdate();
			}
		}
	}

	public void Redo()
	{
		bool flag = false;
		try
		{
			if (IsRecording && UndoStack.Count > 0 && RedoStack.Count > 0 && RedoStack.Peek() is GridSelectionStateCommand)
			{
				base.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
				flag = true;
				while (RedoStack.Count > 0 && RedoStack.Peek() is GridSelectionStateCommand)
				{
					Execute(GridCommandMode.Redo);
				}
			}
			Execute(GridCommandMode.Redo);
		}
		finally
		{
			if (flag)
			{
				base.Model.EndUpdate();
			}
		}
	}

	private void Execute(GridCommandMode mode)
	{
		if (InTransaction)
		{
			throw new InvalidOperationException("Can't perform Undo or Redo during a transaction (" + transCmd.Description + ")");
		}
		GridCommandMode gridCommandMode = Mode;
		Mode = mode;
		SyncfusionCommand syncfusionCommand = Pop();
		try
		{
			syncfusionCommand?.Execute();
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
		Mode = gridCommandMode;
	}

	public void BeginTrans(string s)
	{
		if (InTransaction)
		{
			nestedTransactionCount++;
			return;
		}
		nestedTransactionCount = 0;
		rolledBack = false;
		base.Model.selectionStateChanged = true;
		SyncfusionCommand syncfusionCommand = CreateSelectionStateCommand();
		GridTransactionCommand gridTransactionCommand = new GridTransactionCommand(this, s);
		transCmd = gridTransactionCommand;
		if (syncfusionCommand != null)
		{
			Push(syncfusionCommand);
		}
	}

	public void CommitTrans()
	{
		if (InTransaction)
		{
			if (nestedTransactionCount > 0)
			{
				nestedTransactionCount--;
				return;
			}
			SyncfusionCommand cmd = transCmd;
			transCmd = null;
			Push(cmd);
		}
		else if (!rolledBack)
		{
			throw new InvalidOperationException("CommitTrans without BeginTrans");
		}
	}

	public void Rollback()
	{
		if (InTransaction)
		{
			GridTransactionCommand gridTransactionCommand = transCmd;
			rolledBack = true;
			nestedTransactionCount = 0;
			transCmd = null;
			gridTransactionCommand.Execute();
		}
		else if (!rolledBack)
		{
			throw new InvalidOperationException("Rollback without BeginTrans");
		}
	}
}
