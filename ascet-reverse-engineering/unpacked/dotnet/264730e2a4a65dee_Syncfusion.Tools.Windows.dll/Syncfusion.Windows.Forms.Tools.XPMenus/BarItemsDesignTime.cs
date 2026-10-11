using System.ComponentModel;
using Syncfusion.Documentation;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
[TypeConverter(typeof(BarItemsConverter))]
public class BarItemsDesignTime : BarItems
{
	public BarItemsDesignTime()
	{
	}

	public BarItemsDesignTime(BarItem[] barItems)
		: base(barItems)
	{
	}
}
