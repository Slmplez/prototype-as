using System.ComponentModel;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class TextBoxBarItemBannerTextProvider : ComponentBannerTextProviderBase
{
	public TextBoxBarItemBannerTextProvider()
	{
		m_type = typeof(TextBoxBarItem);
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is TextBoxBarItem tbBarItem)
		{
			result = new ExtendableTextBoxBarItemTextBox(tbBarItem, provider);
		}
		return result;
	}
}
