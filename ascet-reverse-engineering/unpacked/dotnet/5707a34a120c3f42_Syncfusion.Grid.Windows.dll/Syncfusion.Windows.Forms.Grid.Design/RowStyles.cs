using System;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class RowStyles
{
	private GridRowColEntryCollection hiddenEntries;

	private GridRowColEntryCollection heightEntries;

	public GridRowColEntryCollection HiddenRows
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

	public GridRowColEntryCollection RowHeights
	{
		get
		{
			return heightEntries;
		}
		set
		{
			heightEntries = value;
		}
	}

	static RowStyles()
	{
	}
}
