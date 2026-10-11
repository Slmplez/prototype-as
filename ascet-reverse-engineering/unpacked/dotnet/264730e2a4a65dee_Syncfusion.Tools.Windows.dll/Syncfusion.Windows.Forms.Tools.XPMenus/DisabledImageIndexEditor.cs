using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class DisabledImageIndexEditor : BarItemImageIndexEditor
{
	protected override IList GetImages(BarItem item)
	{
		return item.GetDisabledImageListInternal(item.Manager?.LargeIcons ?? false);
	}
}
