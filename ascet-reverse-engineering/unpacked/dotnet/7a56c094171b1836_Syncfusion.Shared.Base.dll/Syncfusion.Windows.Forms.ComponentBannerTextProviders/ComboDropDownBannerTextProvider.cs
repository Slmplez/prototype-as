using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public class ComboDropDownBannerTextProvider : ComponentBannerTextProviderBase
{
	public ComboDropDownBannerTextProvider()
	{
		m_type = typeof(ComboDropDown);
	}

	public override bool CanExtend(Component extendee)
	{
		bool result = false;
		if (extendee is ComboDropDown comboDropDown && base.CanExtend(extendee))
		{
			result = comboDropDown.DropDownStyle != ComboBoxStyle.DropDownList;
		}
		return result;
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is ComboDropDown comboDropDown)
		{
			result = new ExtendableTextBox(comboDropDown.TextBox);
		}
		return result;
	}
}
