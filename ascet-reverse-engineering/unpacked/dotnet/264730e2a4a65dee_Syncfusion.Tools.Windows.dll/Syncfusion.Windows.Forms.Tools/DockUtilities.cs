using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
internal class DockUtilities
{
	public static void RecGetChildControllers(DockControllerBase dc, ArrayList alchildren)
	{
		if (dc is DockHostController)
		{
			alchildren.Add(dc);
			return;
		}
		for (int i = 0; i < dc.ChildCount; i++)
		{
			RecGetChildControllers(dc.GetChildAt(i), alchildren);
		}
	}
}
