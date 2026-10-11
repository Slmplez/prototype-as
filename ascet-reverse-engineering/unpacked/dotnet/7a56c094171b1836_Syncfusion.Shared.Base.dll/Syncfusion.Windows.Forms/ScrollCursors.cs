using System;
using System.IO;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
internal class ScrollCursors
{
	[ThreadStatic]
	private static string cursorNS = "Syncfusion.Windows.Forms.Scrolling.";

	[ThreadStatic]
	private static Cursor dragWheelAllCursor = null;

	[ThreadStatic]
	private static Cursor dragWheelSouthCursor = null;

	[ThreadStatic]
	private static Cursor dragWheelNorthCursor = null;

	[ThreadStatic]
	private static Cursor dragWheelWestCursor = null;

	[ThreadStatic]
	private static Cursor dragWheelEastCursor = null;

	public static Cursor DragWheelAllCursor
	{
		get
		{
			if (dragWheelAllCursor == null)
			{
				dragWheelAllCursor = GetCursor("IMA.CUR");
			}
			return dragWheelAllCursor;
		}
	}

	public static Cursor DragWheelSouthCursor
	{
		get
		{
			if (dragWheelSouthCursor == null)
			{
				dragWheelSouthCursor = GetCursor("IMD.CUR");
			}
			return dragWheelSouthCursor;
		}
	}

	public static Cursor DragWheelNorthCursor
	{
		get
		{
			if (dragWheelNorthCursor == null)
			{
				dragWheelNorthCursor = GetCursor("IMU.CUR");
			}
			return dragWheelNorthCursor;
		}
	}

	public static Cursor DragWheelWestCursor
	{
		get
		{
			if (dragWheelWestCursor == null)
			{
				dragWheelWestCursor = GetCursor("IML.CUR");
			}
			return dragWheelWestCursor;
		}
	}

	public static Cursor DragWheelEastCursor
	{
		get
		{
			if (dragWheelEastCursor == null)
			{
				dragWheelEastCursor = GetCursor("IMR.CUR");
			}
			return dragWheelEastCursor;
		}
	}

	protected static Cursor GetCursor(string cursorName)
	{
		Cursor cursor = null;
		try
		{
			Type typeFromHandle = typeof(ScrollCursors);
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
