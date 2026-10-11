using System;
using System.IO;
using System.Reflection;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class MDITabsDragCursors
{
	[ThreadStatic]
	public static Cursor dropCursor;

	[ThreadStatic]
	public static Cursor nodropCursor;

	public static Cursor DropCursor
	{
		get
		{
			if (dropCursor == null)
			{
				dropCursor = GetCursor("Syncfusion.Windows.Forms.Tools.FrameworkComponents.TabbedMDI.Cursors.Drop.CUR");
			}
			return dropCursor;
		}
	}

	public static Cursor NodropCursor
	{
		get
		{
			if (nodropCursor == null)
			{
				nodropCursor = GetCursor("Syncfusion.Windows.Forms.Tools.FrameworkComponents.TabbedMDI.Cursors.NoDrop.CUR");
			}
			return nodropCursor;
		}
	}

	protected static Cursor GetCursor(string resourceName)
	{
		Cursor cursor = null;
		try
		{
			Type typeFromHandle = typeof(MDITabsDragCursors);
			Assembly assembly = typeFromHandle.Module.Assembly;
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
