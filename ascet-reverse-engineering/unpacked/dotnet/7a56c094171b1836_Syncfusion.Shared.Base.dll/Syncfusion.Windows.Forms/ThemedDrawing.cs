namespace Syncfusion.Windows.Forms;

public sealed class ThemedDrawing
{
	private static readonly object s_sync = new object();

	private static ThemedEditDrawing s_edit;

	private static ThemedButtonDrawing s_button;

	private static ThemedTreeViewDrawing s_tree;

	public static ThemedEditDrawing Edit
	{
		get
		{
			lock (s_sync)
			{
				if (s_edit == null && XPThemes.IsThemedOS)
				{
					s_edit = new ThemedEditDrawing();
				}
				return s_edit;
			}
		}
	}

	public static ThemedButtonDrawing Button
	{
		get
		{
			lock (s_sync)
			{
				if (s_button == null && XPThemes.IsThemedOS)
				{
					s_button = new ThemedButtonDrawing();
				}
				return s_button;
			}
		}
	}

	public static ThemedTreeViewDrawing TreeView
	{
		get
		{
			lock (s_sync)
			{
				if (s_tree == null && XPThemes.IsThemedOS)
				{
					s_tree = new ThemedTreeViewDrawing();
				}
				return s_tree;
			}
		}
	}

	public static void ResetCache()
	{
		lock (s_sync)
		{
			if (s_edit != null)
			{
				s_edit.Dispose();
				s_edit = null;
			}
			if (s_button != null)
			{
				s_button.Dispose();
				s_button = null;
			}
			if (s_tree != null)
			{
				s_tree.Dispose();
				s_tree = null;
			}
		}
	}
}
