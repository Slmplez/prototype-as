using System;
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ExtendableComboBoxBarItemTextBox : ExtendableBarItemTextBox
{
	public ExtendableComboBoxBarItemTextBox(ComboBoxBarItem cbBarItem, BannerTextProvider provider)
		: base(cbBarItem, provider)
	{
		cbBarItem.TextBoxBound += ComboBoxBarItemTextBoxBound;
		cbBarItem.AfterPopupItemPaint += TextBoxBarItemAfterPopupItemPaint;
	}

	private void ComboBoxBarItemTextBoxBound(object sender, TextBoxBoundEventArgs args)
	{
		OnTextBoxBound(args.TextBox);
	}

	protected override void ExtandbaleTextBoxHandleCreated(object sender, EventArgs e)
	{
		base.ExtandbaleTextBoxHandleCreated(sender, e);
		ComboBoxBarItem comboBoxBarItem = (ComboBoxBarItem)m_barItem;
		ExtendableTextBoxTextChanged(sender, new ValueChangedEventArgs(null, comboBoxBarItem.TextBoxValue));
	}
}
