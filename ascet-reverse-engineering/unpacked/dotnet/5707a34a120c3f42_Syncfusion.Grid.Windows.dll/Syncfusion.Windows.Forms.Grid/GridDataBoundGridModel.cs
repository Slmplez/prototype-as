using System;
using System.ComponentModel;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

[Serializable]
public class GridDataBoundGridModel : GridModel
{
	private bool inClipboardCut;

	private bool inClearingCells;

	[Browsable(false)]
	public GridModelDataBinder Binder
	{
		get
		{
			return (GridModelDataBinder)base.DataProvider;
		}
		set
		{
			if (Binder != value)
			{
				base.DataProvider = value;
				OnBinderChanged(EventArgs.Empty);
			}
		}
	}

	public event EventHandler BinderChanged;

	public GridDataBoundGridModel()
		: this(typeof(GridModel))
	{
	}

	public GridDataBoundGridModel(Type type)
		: base(type)
	{
	}

	protected GridDataBoundGridModel(SerializationInfo info, StreamingContext context)
		: base(info, context)
	{
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected override void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		base.GetObjectData(info, context);
	}

	protected virtual void OnBinderChanged(EventArgs e)
	{
		if (this.BinderChanged != null)
		{
			this.BinderChanged(this, e);
		}
	}

	protected override void OnColsMoving(GridRangeMovingEventArgs e)
	{
		BeginUpdate(BeginUpdateOptions.InvalidateAndScroll);
		try
		{
			base.OnColsMoving(e);
			if (!e.Cancel)
			{
				Binder.ModelColsMoving(this, e);
			}
		}
		finally
		{
			EndUpdate();
		}
	}

	protected override void OnClipboardPaste(GridCutPasteEventArgs e)
	{
		base.OnClipboardPaste(e);
		if (!e.Handled && base.ActiveGridView != null)
		{
			e.Handled = true;
			e.Result = false;
			if (!base.ReadOnly && Binder.EnableEdit && base.Selections.GetSelectedRanges(out var ranges, considerCurrentCell: true))
			{
				IDataObject dataObject = Clipboard.GetDataObject();
				int clipboardFlags = e.ClipboardFlags;
				e.Result = Binder.DataBoundPaste(dataObject, clipboardFlags, ranges, e);
			}
		}
	}

	protected override void OnClipboardCanPaste(GridCutPasteEventArgs e)
	{
		base.OnClipboardCanPaste(e);
		if (!e.Handled)
		{
			if (base.ReadOnly || !Binder.EnableEdit)
			{
				e.Result = false;
			}
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
		}
	}

	protected override void OnClipboardCut(GridCutPasteEventArgs e)
	{
		if (inClipboardCut)
		{
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
			return;
		}
		base.OnClipboardCut(e);
		if (e.Handled)
		{
			return;
		}
		bool directSaveCellInfo = Binder.DirectSaveCellInfo;
		try
		{
			inClipboardCut = true;
			Binder.DirectSaveCellInfo = true;
			e.Handled = true;
			if (!base.ReadOnly && Binder.EnableEdit)
			{
				e.Result = base.CutPaste.Cut();
			}
		}
		finally
		{
			Binder.DirectSaveCellInfo = directSaveCellInfo;
			inClipboardCut = false;
		}
	}

	protected override void OnClipboardCanCut(GridCutPasteEventArgs e)
	{
		base.OnClipboardCanCut(e);
		if (!e.Handled)
		{
			if (base.ReadOnly || !Binder.EnableEdit)
			{
				e.Result = false;
			}
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
		}
	}

	protected override void OnClipboardCopy(GridCutPasteEventArgs e)
	{
		base.OnClipboardCopy(e);
		if (!e.Handled)
		{
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
		}
	}

	protected override void OnClipboardCanCopy(GridCutPasteEventArgs e)
	{
		base.OnClipboardCanCopy(e);
		if (!e.Handled)
		{
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
		}
	}

	protected override void OnClearingCells(GridClearingCellsEventArgs e)
	{
		if (inClearingCells)
		{
			e.ClearStyle = false;
			return;
		}
		base.OnClearingCells(e);
		if (e.Handled)
		{
			return;
		}
		bool directSaveCellInfo = Binder.DirectSaveCellInfo;
		try
		{
			inClearingCells = true;
			Binder.DirectSaveCellInfo = true;
			e.Handled = true;
			if (base.ReadOnly || !Binder.EnableEdit)
			{
				return;
			}
			if (base.ActiveGridView != null)
			{
				if (e.RangeList.Count == 1 && e.RangeList[0].Equals(base.ActiveGridView.CurrentCell.RangeInfo))
				{
					Binder.BeginEdit();
					Binder.DirectSaveCellInfo = false;
				}
				else if (e.RangeList.AnyRangeContains(base.ActiveGridView.CurrentCell.RangeInfo))
				{
					Binder.BeginEdit();
				}
			}
			e.Result = ClearCells(e.RangeList, e.ClearStyle);
		}
		finally
		{
			Binder.DirectSaveCellInfo = directSaveCellInfo;
			inClearingCells = false;
		}
	}

	protected override void OnQueryOleDataSourceData(GridQueryOleDataSourceDataEventArgs e)
	{
		base.OnQueryOleDataSourceData(e);
		if (!e.Handled)
		{
			e.DragDropFlags &= -17;
			e.IgnoreCurrentCell = SelectedRanges.Count > 0;
		}
	}
}
