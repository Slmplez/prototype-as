using System;
using System.ComponentModel;

namespace Syncfusion.Windows.Forms.Tools;

[Obsolete("The TabPageExt type will soon be replaced with the TabPageAdv for consistency in naming in our library. Please replace all occurences of TabPageExt with TabPageAdv in your app.")]
[ToolboxItem(false)]
public class TabPageExt : TabPageAdv
{
	public TabPageExt()
	{
	}

	public TabPageExt(ITabData tabData, ITabPanelDefaultProperties tabPanelDefaultProperties)
		: base(tabData, tabPanelDefaultProperties)
	{
	}

	public TabPageExt(string label)
		: base(label)
	{
	}
}
