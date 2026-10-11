using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class ToolBarButtonSeperator : ToolBarButton
{
	public ToolBarButtonSeperator()
	{
		base.Style = ToolBarButtonStyle.Separator;
		base.Tag = null;
	}
}
