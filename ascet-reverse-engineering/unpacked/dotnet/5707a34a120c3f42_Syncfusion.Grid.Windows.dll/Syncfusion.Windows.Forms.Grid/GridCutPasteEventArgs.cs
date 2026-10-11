using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridCutPasteEventArgs : SyncfusionHandledEventArgs
{
	private bool ignoreCurrentCell;

	private bool result;

	private DataObject dataObject;

	private int clipboardFlags = 56;

	private GridRangeInfoList rangeList;

	[TraceProperty(true)]
	public bool IgnoreCurrentCell
	{
		get
		{
			return ignoreCurrentCell;
		}
		set
		{
			ignoreCurrentCell = value;
		}
	}

	[TraceProperty(true)]
	public bool Result
	{
		get
		{
			return result;
		}
		set
		{
			result = value;
		}
	}

	public DataObject DataObject
	{
		get
		{
			return dataObject;
		}
		set
		{
			dataObject = value;
		}
	}

	[TraceProperty(true)]
	public int ClipboardFlags
	{
		get
		{
			return clipboardFlags;
		}
		set
		{
			clipboardFlags = value;
		}
	}

	[TraceProperty(true)]
	public GridRangeInfoList RangeList
	{
		get
		{
			return rangeList;
		}
		set
		{
			rangeList = value;
		}
	}

	public GridCutPasteEventArgs(bool ignoreCurrentCell, bool result, int clipboardFlags, GridRangeInfoList rangeList)
	{
		this.ignoreCurrentCell = ignoreCurrentCell;
		this.result = result;
		this.clipboardFlags = clipboardFlags;
		this.rangeList = rangeList;
	}
}
