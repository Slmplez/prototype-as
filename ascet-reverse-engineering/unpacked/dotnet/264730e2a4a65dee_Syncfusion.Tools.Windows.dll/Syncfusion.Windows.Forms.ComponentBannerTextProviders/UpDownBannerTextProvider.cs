using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class UpDownBannerTextProvider : ComponentBannerTextProviderBase
{
	public UpDownBannerTextProvider()
	{
		m_type = typeof(UpDownBase);
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		IExtendableTexBox result = null;
		if (extendee is UpDownBase upDownBase)
		{
			foreach (Control control in upDownBase.Controls)
			{
				if (control is TextBox textBox)
				{
					result = new ExtendableTextBox(textBox);
					break;
				}
			}
		}
		return result;
	}
}
