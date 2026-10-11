using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class HighlightedImageIndexEditor : BarItemImageIndexEditor
{
	protected override IList GetImages(BarItem item)
	{
		return item.GetHighlightImageListInternal(item.Manager?.LargeIcons ?? false);
	}
}
