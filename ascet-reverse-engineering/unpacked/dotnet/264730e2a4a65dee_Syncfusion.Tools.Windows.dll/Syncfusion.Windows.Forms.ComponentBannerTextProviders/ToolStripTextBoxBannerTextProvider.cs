using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ToolStripTextBoxBannerTextProvider : ComponentBannerTextProviderBase
{
	public ToolStripTextBoxBannerTextProvider()
	{
		m_type = typeof(ToolStripTextBox);
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ToolStripTextBox toolStripTextBox)
		{
			result = new ExtendableTextBox(toolStripTextBox.TextBox);
		}
		return result;
	}
}
