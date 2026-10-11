using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Text;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[DebuggerStepThrough]
public class GridStyleInfoIdentity : StyleInfoIdentityBase, IGridModelSource
{
	private IGridData data;

	private bool offLine;

	private GridCellPos cellPos;

	private IStyleInfo[] cachedBaseStyles;

	public virtual bool OffLine => offLine;

	public IGridData Data
	{
		[DebuggerStepThrough]
		get
		{
			return data;
		}
	}

	public int RowIndex
	{
		[DebuggerStepThrough]
		get
		{
			return cellPos._rowNumber;
		}
	}

	public int ColIndex
	{
		[DebuggerStepThrough]
		get
		{
			return cellPos._columnNumber;
		}
	}

	public GridCellPos CellPos
	{
		[DebuggerStepThrough]
		get
		{
			return cellPos;
		}
		set
		{
			cellPos = value;
		}
	}

	GridModel IGridModelSource.Model => GetGridModel();

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public virtual string Info => ToString();

	~GridStyleInfoIdentity()
	{
		if (!offLine && data != null)
		{
			((IGridVolatileData)data).ResetItem(cellPos);
		}
	}

	public override void Dispose()
	{
		if (!offLine && data != null)
		{
			((IGridVolatileData)data).ResetItem(cellPos);
		}
		data = null;
		cachedBaseStyles = null;
		base.Dispose();
	}

	public GridStyleInfoIdentity(IGridData data, int rowIndex, int colIndex)
	{
		this.data = data;
		cellPos = new GridCellPos(rowIndex, colIndex);
		offLine = false;
	}

	public GridStyleInfoIdentity(IGridData data, GridCellPos pos)
	{
		this.data = data;
		cellPos = pos;
		offLine = false;
	}

	public GridStyleInfoIdentity(IGridData data, int rowIndex, int colIndex, bool offLine)
	{
		this.data = data;
		cellPos = new GridCellPos(rowIndex, colIndex);
		this.offLine = offLine;
		if (offLine)
		{
			GC.SuppressFinalize(this);
		}
	}

	public GridStyleInfoIdentity(IGridData data, GridCellPos pos, bool offLine)
	{
		this.data = data;
		cellPos = pos;
		this.offLine = offLine;
		if (offLine)
		{
			GC.SuppressFinalize(this);
		}
	}

	protected GridStyleInfoIdentity(GridStyleInfoIdentity other)
	{
		data = other.data;
		cellPos = other.cellPos;
		if (offLine)
		{
			GC.SuppressFinalize(this);
		}
	}

	public GridStyleInfoIdentity MakeOfflineIdentity()
	{
		return new GridStyleInfoIdentity(data, cellPos.RowNumber, cellPos.ColumnNumber, offLine: true);
	}

	public override IStyleInfo[] GetBaseStyles(IStyleInfo thisStyleInfo)
	{
		if (base.InnerIdentity != null)
		{
			return base.InnerIdentity.GetBaseStyles(thisStyleInfo);
		}
		if (cachedBaseStyles == null && data != null)
		{
			cachedBaseStyles = data.GetBaseStyles(thisStyleInfo as GridStyleInfo, RowIndex, ColIndex);
		}
		return cachedBaseStyles;
	}

	public void ResetBaseStylesCache()
	{
		cachedBaseStyles = null;
	}

	public virtual GridCellModelBase LookupCellModel(string id)
	{
		return data.LookupCellModel(id);
	}

	public virtual GridModel GetGridModel()
	{
		return (data is GridVolatileData gridVolatileData) ? gridVolatileData.Grid : null;
	}

	public virtual GridControlBase GetActiveGridView()
	{
		return GetGridModel()?.ActiveGridView;
	}

	[DebuggerStepThrough]
	public override string ToString()
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.Append(base.ToString());
		stringBuilder.Append(" {");
		stringBuilder.Append("rowIndex = ");
		stringBuilder.Append(RowIndex.ToString());
		stringBuilder.Append(", colIndex = ");
		stringBuilder.Append(ColIndex.ToString());
		stringBuilder.Append(" }");
		return stringBuilder.ToString();
	}

	public override void OnStyleChanged(StyleInfoBase style, StyleInfoProperty sip)
	{
		if (!offLine && data != null)
		{
			data[RowIndex, ColIndex] = (GridStyleInfo)style;
		}
		cachedBaseStyles = null;
	}

	public override StyleInfoBase GetBaseStyle(IStyleInfo thisStyleInfo, StyleInfoProperty sip)
	{
		if (base.InnerIdentity != null)
		{
			return base.InnerIdentity.GetBaseStyle(thisStyleInfo, sip);
		}
		IStyleInfo[] baseStyles = GetBaseStyles(thisStyleInfo);
		if (baseStyles != null)
		{
			IStyleInfo[] array = baseStyles;
			for (int i = 0; i < array.Length; i++)
			{
				StyleInfoBase styleInfoBase = (StyleInfoBase)array[i];
				if (styleInfoBase != null && styleInfoBase.Store != null && styleInfoBase.HasValue(sip))
				{
					return styleInfoBase;
				}
			}
		}
		return null;
	}
}
