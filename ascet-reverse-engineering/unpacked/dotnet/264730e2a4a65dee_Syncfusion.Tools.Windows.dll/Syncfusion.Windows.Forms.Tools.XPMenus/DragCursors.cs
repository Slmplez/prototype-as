using System;
using System.IO;
using System.Reflection;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class DragCursors
{
	[ThreadStatic]
	private static Cursor dragCursor;

	[ThreadStatic]
	private static Cursor copyCursor;

	[ThreadStatic]
	private static Cursor nodropCursor;

	public static Cursor DragCursor
	{
		get
		{
			if (dragCursor == null)
			{
				dragCursor = GetCursor("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.Cursors.DragCursor.cur");
			}
			return dragCursor;
		}
	}

	public static Cursor CopyCursor
	{
		get
		{
			if (copyCursor == null)
			{
				copyCursor = GetCursor("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.Cursors.CopyCursor.cur");
			}
			return copyCursor;
		}
	}

	public static Cursor NodropCursor
	{
		get
		{
			if (nodropCursor == null)
			{
				nodropCursor = GetCursor("Syncfusion.Windows.Forms.Tools.FrameworkComponents.XPMenus.Cursors.NoDropCursor.cur");
			}
			return nodropCursor;
		}
	}

	protected static Cursor GetCursor(string resourceName)
	{
		Cursor cursor = null;
		try
		{
			Type typeFromHandle = typeof(DragCursors);
			Assembly assembly = typeFromHandle.Module.Assembly;
			assembly.GetManifestResourceNames();
			Stream manifestResourceStream = assembly.GetManifestResourceStream(resourceName);
			return new Cursor(manifestResourceStream);
		}
		catch (Exception ex)
		{
			MessageBox.Show(ex.Message);
			throw ex;
		}
	}
}
