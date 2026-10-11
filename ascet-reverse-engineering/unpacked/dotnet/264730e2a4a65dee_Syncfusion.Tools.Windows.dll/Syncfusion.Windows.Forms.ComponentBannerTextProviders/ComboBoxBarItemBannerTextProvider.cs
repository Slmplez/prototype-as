using System.ComponentModel;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ComboBoxBarItemBannerTextProvider : ComponentBannerTextProviderBase
{
	public ComboBoxBarItemBannerTextProvider()
	{
		m_type = typeof(ComboBoxBarItem);
	}

	public override bool CanExtend(Component extendee)
	{
		bool result = false;
		if (extendee is ComboBoxBarItem comboBoxBarItem && base.CanExtend(extendee))
		{
			result = comboBoxBarItem.Editable;
		}
		return result;
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ComboBoxBarItem cbBarItem)
		{
			result = new ExtendableComboBoxBarItemTextBox(cbBarItem, provider);
		}
		return result;
	}
}
