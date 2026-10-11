using System;
using System.IO;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCursors
{
	private static string cursorNS = GridWindowsAssembly.RootNamespace + ".Base.Resources.";

	[ThreadStatic]
	private static Cursor selectColumnCursor = null;

	[ThreadStatic]
	private static Cursor selectRowCursor = null;

	[ThreadStatic]
	private static Cursor selectRowRTLCursor = null;

	[ThreadStatic]
	private static Cursor rowHeightCursor = null;

	[ThreadStatic]
	private static Cursor columnWidthCursor = null;

	[ThreadStatic]
	private static Cursor dragSelectionCursor = null;

	public static Cursor ColumnWidthCursor
	{
		get
		{
			if (columnWidthCursor == null)
			{
				columnWidthCursor = GetCursor("SFWIDTH.CUR");
			}
			return columnWidthCursor;
		}
		set
		{
			columnWidthCursor = value;
		}
	}

	public static Cursor RowHeightCursor
	{
		get
		{
			if (rowHeightCursor == null)
			{
				rowHeightCursor = GetCursor("SFHEIGHT.CUR");
			}
			return rowHeightCursor;
		}
		set
		{
			rowHeightCursor = value;
		}
	}

	public static Cursor SelectColumnCursor
	{
		get
		{
			if (selectColumnCursor == null)
			{
				selectColumnCursor = GetCursor("SFCOLUMN.CUR");
			}
			return selectColumnCursor;
		}
		set
		{
			selectColumnCursor = value;
		}
	}

	public static Cursor SelectRowCursor
	{
		get
		{
			if (selectRowCursor == null)
			{
				selectRowCursor = GetCursor("SFROW.CUR");
			}
			return selectRowCursor;
		}
		set
		{
			selectRowCursor = value;
		}
	}

	public static Cursor SelectRowRTLCursor
	{
		get
		{
			if (selectRowRTLCursor == null)
			{
				selectRowRTLCursor = GetCursor("SFROWRTL.CUR");
			}
			return selectRowRTLCursor;
		}
		set
		{
			selectRowRTLCursor = value;
		}
	}

	public static Cursor DragSelectionCursor
	{
		get
		{
			if (dragSelectionCursor == null)
			{
				dragSelectionCursor = GetCursor("SFSELDRG.CUR");
			}
			return dragSelectionCursor;
		}
		set
		{
			dragSelectionCursor = value;
		}
	}

	private static Cursor GetCursor(string cursorName)
	{
		Cursor cursor = null;
		try
		{
			Type typeFromHandle = typeof(GridCursors);
			Stream manifestResourceStream = typeFromHandle.Module.Assembly.GetManifestResourceStream(cursorNS + cursorName);
			return new Cursor(manifestResourceStream);
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.Message);
			throw;
		}
	}
}
