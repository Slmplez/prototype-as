using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.InternalMenus;

internal class RichToolBarButton : ToolBarButton
{
	public RichToolBarButton(string text, int imageindex, object evt)
	{
		base.ToolTipText = text;
		base.ImageIndex = imageindex;
		base.Tag = evt;
	}

	public RichToolBarButton(string text, int imageindex)
		: this(text, imageindex, null)
	{
	}
}
