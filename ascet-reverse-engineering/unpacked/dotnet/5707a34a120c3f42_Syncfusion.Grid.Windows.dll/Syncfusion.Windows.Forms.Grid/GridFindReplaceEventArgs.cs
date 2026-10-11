using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridFindReplaceEventArgs : SyncfusionEventArgs
{
	private string _findString;

	private string _replaceString;

	private GridFindTextOptions _options;

	private object _locationInfo;

	[TraceProperty(true)]
	public string FindString
	{
		get
		{
			return _findString;
		}
		set
		{
			_findString = value;
		}
	}

	[TraceProperty(true)]
	public string ReplaceString
	{
		get
		{
			return _replaceString;
		}
		set
		{
			_replaceString = value;
		}
	}

	[TraceProperty(true)]
	public GridFindTextOptions Options
	{
		get
		{
			return _options;
		}
		set
		{
			_options = value;
		}
	}

	[TraceProperty(true)]
	public object LocationInfo
	{
		get
		{
			return _locationInfo;
		}
		set
		{
			_locationInfo = value;
		}
	}

	public GridFindReplaceEventArgs(string findString, string replaceString, GridFindTextOptions options, object locationInfo)
	{
		_findString = findString;
		_replaceString = replaceString;
		_options = options;
		_locationInfo = locationInfo;
	}

	internal static GridFindTextOptions MakeFindOptions(bool bMatchCase, bool bMatchWholeCell, bool bSearchUp, bool bWholeTable, bool bColumnOnly, bool bSelectionOnly)
	{
		GridFindTextOptions gridFindTextOptions = GridFindTextOptions.None;
		if (bMatchCase)
		{
			gridFindTextOptions |= GridFindTextOptions.MatchCase;
		}
		if (bMatchWholeCell)
		{
			gridFindTextOptions |= GridFindTextOptions.MatchWholeCell;
		}
		if (bSearchUp)
		{
			gridFindTextOptions |= GridFindTextOptions.SearchUp;
		}
		if (bSelectionOnly)
		{
			gridFindTextOptions |= GridFindTextOptions.SelectionOnly;
		}
		if (bColumnOnly)
		{
			gridFindTextOptions |= GridFindTextOptions.ColumnOnly;
		}
		if (bWholeTable)
		{
			gridFindTextOptions |= GridFindTextOptions.WholeTable;
		}
		return gridFindTextOptions;
	}
}
