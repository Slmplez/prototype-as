using System;
using System.Collections;
using System.Runtime.Serialization;
using System.Security.Permissions;
using System.Xml.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class GridCellsMemento : ISerializable
{
	private ColumnStyles colStyles;

	private RowStyles rowStyles;

	private GridCellInfoCollection cells;

	private GridNonImmutableRangeInfoCollection coveredRanges;

	private GridNonImmutableRangeInfoCollection banneredRanges;

	private GridBaseStylesMap baseStylesMap;

	private GridBaseStyleCollection gridBaseStyles;

	[XmlElement("ColumnStyleCollection")]
	public ColumnStyles GridColStyles
	{
		get
		{
			if (colStyles == null)
			{
				colStyles = new ColumnStyles();
			}
			return colStyles;
		}
		set
		{
			colStyles = value;
		}
	}

	[XmlElement("RowStyleCollection")]
	public RowStyles GridRowStyles
	{
		get
		{
			if (rowStyles == null)
			{
				rowStyles = new RowStyles();
			}
			return rowStyles;
		}
		set
		{
			rowStyles = value;
		}
	}

	public GridNonImmutableRangeInfoCollection CoveredRanges
	{
		get
		{
			if (coveredRanges == null)
			{
				coveredRanges = new GridNonImmutableRangeInfoCollection();
			}
			return coveredRanges;
		}
		set
		{
			coveredRanges = value;
		}
	}

	public GridNonImmutableRangeInfoCollection BanneredRanges
	{
		get
		{
			if (banneredRanges == null)
			{
				banneredRanges = new GridNonImmutableRangeInfoCollection();
			}
			return banneredRanges;
		}
		set
		{
			banneredRanges = value;
		}
	}

	[XmlElement("BaseStylesMap")]
	public GridBaseStyleCollection GridBaseStylesToSerialize
	{
		get
		{
			return gridBaseStyles;
		}
		set
		{
			gridBaseStyles = value;
		}
	}

	[DocumentationExclude]
	[XmlIgnore]
	private GridBaseStylesMap BaseStylesMap
	{
		get
		{
			if (gridBaseStyles != null)
			{
				baseStylesMap = new GridBaseStylesMap();
				GridBaseStyleCollection.GridBaseStyleEnumerator enumerator = gridBaseStyles.GetEnumerator();
				while (enumerator.MoveNext())
				{
					baseStylesMap.Add(enumerator.Current);
				}
			}
			if (baseStylesMap == null)
			{
				baseStylesMap = new GridBaseStylesMap();
				baseStylesMap.RegisterStandardStyles();
			}
			return baseStylesMap;
		}
		set
		{
			baseStylesMap = value;
			SetGridBaseStylesToSerialize(baseStylesMap);
		}
	}

	[XmlElement("CellData")]
	public GridCellInfoCollection Cells
	{
		get
		{
			if (cells == null)
			{
				cells = new GridCellInfoCollection();
			}
			return cells;
		}
		set
		{
			cells = value;
		}
	}

	public GridCellsMemento()
	{
		rowStyles = null;
		colStyles = null;
	}

	public GridCellsMemento(GridControl grid)
	{
		InitializeFrom(grid);
	}

	protected GridCellsMemento(SerializationInfo info, StreamingContext context)
	{
		colStyles = (ColumnStyles)info.GetValue("ColumnStyles", typeof(ColumnStyles));
		rowStyles = (RowStyles)info.GetValue("RowStyles", typeof(RowStyles));
		cells = (GridCellInfoCollection)info.GetValue("Data", typeof(GridCellInfoCollection));
		coveredRanges = (GridNonImmutableRangeInfoCollection)info.GetValue("CoveredRanges", typeof(GridNonImmutableRangeInfoCollection));
		banneredRanges = (GridNonImmutableRangeInfoCollection)info.GetValue("BanneredRanges", typeof(GridNonImmutableRangeInfoCollection));
		baseStylesMap = (GridBaseStylesMap)info.GetValue("BaseStylesMap", typeof(GridBaseStylesMap));
	}

	void ISerializable.GetObjectData(SerializationInfo info, StreamingContext context)
	{
		GetObjectData(info, context);
	}

	[SecurityPermission(SecurityAction.Demand, SerializationFormatter = true)]
	protected virtual void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("ColumnStyles", colStyles);
		info.AddValue("RowStyles", rowStyles);
		info.AddValue("Data", cells);
		info.AddValue("CoveredRanges", coveredRanges);
		info.AddValue("BanneredRanges", banneredRanges);
		info.AddValue("BaseStylesMap", baseStylesMap);
	}

	private void SetGridBaseStylesToSerialize(GridBaseStylesMap map)
	{
		gridBaseStyles = new GridBaseStyleCollection();
		IEnumerator enumerator = map.baseStyles.Keys.GetEnumerator();
		while (enumerator.MoveNext())
		{
			gridBaseStyles.Add(map[enumerator.Current.ToString()]);
		}
	}

	public void InitializeFrom(GridControl grid)
	{
		CoveredRanges.Clear();
		BanneredRanges.Clear();
		BaseStylesMap = grid.BaseStylesMap;
		grid.RowHeightEntries = null;
		GridRowStyles.RowHeights = new GridRowColEntryCollection();
		foreach (GridRowHeight rowHeightEntry in grid.RowHeightEntries)
		{
			GridRowStyles.RowHeights.Add(new GridRowColEntry(rowHeightEntry.RowIndex, rowHeightEntry.Height));
		}
		GridRowStyles.HiddenRows = new GridRowColEntryCollection();
		foreach (GridRowHidden rowHiddenEntry in grid.RowHiddenEntries)
		{
			GridRowStyles.HiddenRows.Add(new GridRowColEntry(rowHiddenEntry.RowIndex, 0));
		}
		grid.ColWidthEntries = null;
		GridColStyles.ColumnWidths = new GridRowColEntryCollection();
		foreach (GridColWidth colWidthEntry in grid.ColWidthEntries)
		{
			GridColStyles.ColumnWidths.Add(new GridRowColEntry(colWidthEntry.ColIndex, colWidthEntry.Width));
		}
		GridColStyles.HiddenColumns = new GridRowColEntryCollection();
		foreach (GridColHidden colHiddenEntry in grid.ColHiddenEntries)
		{
			GridColStyles.HiddenColumns.Add(new GridRowColEntry(colHiddenEntry.ColIndex, 0));
		}
		for (int i = 0; i < grid.CoveredRanges.Count; i++)
		{
			CoveredRanges.Add(new GridNonImmutableRangeInfo(grid.CoveredRanges.Ranges[i]));
		}
		for (int j = 0; j < grid.BanneredRanges.Count; j++)
		{
			BanneredRanges.Add(new GridNonImmutableRangeInfo(grid.BanneredRanges.Ranges[j]));
		}
		grid.GridCells = null;
		Cells = new GridCellInfoCollection(grid.GridCells);
		foreach (GridCellInfo cell in Cells)
		{
			GridStylesParser.ParsePropertyStore(cell.StyleInfo.Store);
		}
	}

	public void ApplyTo(GridControl grid)
	{
		grid.BaseStylesMap = BaseStylesMap;
		grid.RowHiddenEntries.Clear();
		foreach (GridRowColEntry hiddenRow in GridRowStyles.HiddenRows)
		{
			grid.RowHiddenEntries.Add(new GridRowHidden(hiddenRow.Index));
		}
		grid.RowHeightEntries.Clear();
		foreach (GridRowColEntry rowHeight in GridRowStyles.RowHeights)
		{
			grid.RowHeightEntries.Add(new GridRowHeight(rowHeight.Index, rowHeight.Length));
		}
		grid.ColHiddenEntries.Clear();
		foreach (GridRowColEntry hiddenColumn in GridColStyles.HiddenColumns)
		{
			grid.ColHiddenEntries.Add(new GridColHidden(hiddenColumn.Index));
		}
		grid.ColWidthEntries.Clear();
		foreach (GridRowColEntry columnWidth in GridColStyles.ColumnWidths)
		{
			grid.ColWidthEntries.Add(new GridColWidth(columnWidth.Index, columnWidth.Length));
		}
		GridNonImmutableRangeInfoCollection.GridNonImmutableRangeInfoEnumerator enumerator = CoveredRanges.GetEnumerator();
		grid.CoveredRanges.Clear();
		while (enumerator.MoveNext())
		{
			grid.CoveredRanges.Add(enumerator.Current.ToRangeInfo());
		}
		enumerator = BanneredRanges.GetEnumerator();
		grid.BanneredRanges.Clear();
		while (enumerator.MoveNext())
		{
			grid.BanneredRanges.Add(enumerator.Current.ToRangeInfo());
		}
		grid.GridCells = new GridCellInfoCollection(Cells);
	}
}
