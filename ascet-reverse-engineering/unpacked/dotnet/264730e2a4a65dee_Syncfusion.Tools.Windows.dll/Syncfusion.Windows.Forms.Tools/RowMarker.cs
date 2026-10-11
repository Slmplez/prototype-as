using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class RowMarker
{
	protected CommandDockBar cmdDockBar;

	protected int nRefCount;

	public CommandDockBar DockBar => cmdDockBar;

	public RowMarker(CommandDockBar dockbar)
	{
		cmdDockBar = dockbar;
	}

	public void IncreaseRefCount()
	{
		nRefCount++;
	}

	public void DecreaseRefCount()
	{
		nRefCount--;
		if (nRefCount == 0)
		{
			cmdDockBar.RowMarkers.Remove(this);
		}
	}
}
