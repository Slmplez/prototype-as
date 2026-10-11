using System;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class ColumnStyles
{
	private GridRowColEntryCollection hiddenEntries;

	private GridRowColEntryCollection widthEntries;

	public GridRowColEntryCollection HiddenColumns
	{
		get
		{
			return hiddenEntries;
		}
		set
		{
			hiddenEntries = value;
		}
	}

	public GridRowColEntryCollection ColumnWidths
	{
		get
		{
			return widthEntries;
		}
		set
		{
			widthEntries = value;
		}
	}

	static ColumnStyles()
	{
	}
}
