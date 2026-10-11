using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public class ComboBoxBannerTextProvider : ComponentBannerTextProviderBase
{
	public ComboBoxBannerTextProvider()
	{
		m_type = typeof(ComboBox);
	}

	public override bool CanExtend(Component extendee)
	{
		bool result = false;
		if (extendee is ComboBox comboBox && base.CanExtend(extendee))
		{
			result = comboBox.DropDownStyle != ComboBoxStyle.DropDownList;
		}
		return result;
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ComboBox combo)
		{
			result = new ExtendableComboBoxTextBox(combo);
		}
		return result;
	}
}
