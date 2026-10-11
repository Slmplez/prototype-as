using System;
using Syncfusion.Windows.Forms.Tools;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.ComponentBannerTextProviders;

internal class ExtendableTextBoxBarItemTextBox : ExtendableBarItemTextBox
{
	public ExtendableTextBoxBarItemTextBox(TextBoxBarItem tbBarItem, BannerTextProvider provider)
		: base(tbBarItem, provider)
	{
		tbBarItem.TextBoxItemBound += TextBoxBarItemTextBoxBound;
		tbBarItem.AfterPopupItemPaint += TextBoxBarItemAfterPopupItemPaint;
	}

	protected void TextBoxBarItemTextBoxBound(object sender, TextBoxItemBoundEventArgs args)
	{
		OnTextBoxBound(args.TextBox);
	}

	protected override void ExtandbaleTextBoxHandleCreated(object sender, EventArgs e)
	{
		base.ExtandbaleTextBoxHandleCreated(sender, e);
		TextBoxBarItem textBoxBarItem = (TextBoxBarItem)m_barItem;
		ExtendableTextBoxTextChanged(sender, new ValueChangedEventArgs(null, textBoxBarItem.TextBoxValue));
	}
}
