namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class BannerTextProvider2 : BannerTextProvider
{
	static BannerTextProvider2()
	{
		BannerTextProvider.RegisterProvider(new UpDownBannerTextProvider());
		BannerTextProvider.RegisterProvider(new ToolStripTextBoxBannerTextProvider());
		BannerTextProvider.RegisterProvider(new ToolStripComboBoxBannerTextProvider());
		BannerTextProvider.RegisterProvider(new ToolStripComboBoxExBannerTextProvider());
		BannerTextProvider.RegisterProvider(new ComboBoxBarItemBannerTextProvider());
		BannerTextProvider.RegisterProvider(new TextBoxBarItemBannerTextProvider());
	}

	internal new static void Extend(BannerTextProvider provider, IExtendableTexBox mainETB, IExtendableTexBox subETB)
	{
		BannerTextProvider.Extend(provider, mainETB, subETB);
	}
}
