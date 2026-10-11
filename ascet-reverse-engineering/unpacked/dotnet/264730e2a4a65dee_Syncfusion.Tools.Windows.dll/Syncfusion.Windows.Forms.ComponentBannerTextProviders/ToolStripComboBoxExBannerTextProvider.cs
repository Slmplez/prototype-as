using System.ComponentModel;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ToolStripComboBoxExBannerTextProvider : ComponentBannerTextProviderBase
{
	public ToolStripComboBoxExBannerTextProvider()
	{
		m_type = typeof(ToolStripComboBoxEx);
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ToolStripComboBoxEx toolStripComboBoxEx)
		{
			result = new ExtendableComboBoxTextBox(toolStripComboBoxEx.ComboBox);
		}
		return result;
	}
}
