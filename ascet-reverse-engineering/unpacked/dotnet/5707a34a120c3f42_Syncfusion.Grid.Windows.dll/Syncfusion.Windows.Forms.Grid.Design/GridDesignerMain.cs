using System;
using System.Resources;

namespace Syncfusion.Windows.Forms.Grid.Design;

[Serializable]
public class GridDesignerMain
{
	internal static string manifestNamespace = GridWindowsAssembly.RootNamespace + ".Design.Resources.";

	internal static string menuNamespace = GridWindowsAssembly.RootNamespace + ".Design.Actions.";

	internal static GridSyncProperties syncProps;

	internal static ResourceManager IconResources;

	public static void Design(GridControl grid)
	{
		if (IconResources == null)
		{
			IconResources = new ResourceManager(manifestNamespace + "MainMenuItemResources", typeof(GridFrame).Module.Assembly, null);
		}
		GridFrame gridFrame = new GridFrame(grid);
		gridFrame.ShowDialog();
		gridFrame.Dispose();
	}
}
