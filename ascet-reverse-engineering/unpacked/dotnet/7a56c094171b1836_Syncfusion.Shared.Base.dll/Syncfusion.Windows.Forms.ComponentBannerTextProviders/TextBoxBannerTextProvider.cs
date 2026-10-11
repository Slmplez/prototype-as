using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

public class TextBoxBannerTextProvider : ComponentBannerTextProviderBase
{
	public TextBoxBannerTextProvider()
	{
		m_type = typeof(TextBoxBase);
	}

	public override bool CanExtend(Component extendee)
	{
		bool result = false;
		TextBoxBase textBoxBase = extendee as TextBox;
		if (textBoxBase != null && base.CanExtend(extendee))
		{
			result = !textBoxBase.Multiline;
		}
		return result;
	}

	public override IExtendableTexBox GetExtendableTexBox(Component extendee, BannerTextProvider provider)
	{
		return new ExtendableTextBox((TextBox)extendee);
	}
}
