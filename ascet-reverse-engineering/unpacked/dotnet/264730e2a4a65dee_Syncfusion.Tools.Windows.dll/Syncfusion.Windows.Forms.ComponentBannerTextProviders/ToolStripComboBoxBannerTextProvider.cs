using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ToolStripComboBoxBannerTextProvider : ComponentBannerTextProviderBase
{
	public ToolStripComboBoxBannerTextProvider()
	{
		m_type = typeof(ToolStripComboBox);
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ToolStripComboBox toolStripComboBox)
		{
			result = new ExtendableComboBoxTextBox(toolStripComboBox.ComboBox);
		}
		return result;
	}
}
