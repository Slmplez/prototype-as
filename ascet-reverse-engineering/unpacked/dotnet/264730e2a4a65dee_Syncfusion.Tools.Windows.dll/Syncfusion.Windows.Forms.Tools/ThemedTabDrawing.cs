using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class ThemedTabDrawing : ThemedControlDrawing
{
	private TabControlAdv tabControl;

	public ThemedTabDrawing(TabControlAdv tabControl, string classList)
		: base(classList)
	{
		this.tabControl = tabControl;
	}

	public void DrawTabPane(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 9, 0, rect);
	}

	public void DrawTabBody(Graphics g, Rectangle rect, Rectangle clipRect)
	{
		DrawThemeBackground(g, 10, 0, rect, clipRect);
	}

	public void DrawTabBody(Graphics g, Rectangle rect)
	{
		DrawThemeBackground(g, 10, 0, rect);
	}

	public void DrawTabBackground(Graphics g, ITabRenderer renderer, bool selectedTab, Rectangle rect)
	{
		int stateID = 1;
		if (selectedTab)
		{
			stateID = 3;
		}
		else if (renderer.HotTrack)
		{
			stateID = 2;
		}
		DrawThemeBackground(g, 1, stateID, rect);
	}

	public void DetachTabControl()
	{
		XPThemes.UnregisterControlDrawing(this);
		tabControl = null;
	}

	protected override void Dispose(bool disposing)
	{
		DetachTabControl();
		base.Dispose(disposing);
	}
}
