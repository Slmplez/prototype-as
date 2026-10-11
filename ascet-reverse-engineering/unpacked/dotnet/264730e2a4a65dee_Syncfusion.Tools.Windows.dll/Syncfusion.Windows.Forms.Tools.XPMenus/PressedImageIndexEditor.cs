using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[DocumentationExclude]
public class PressedImageIndexEditor : BarItemImageIndexEditor
{
	protected override IList GetImages(BarItem item)
	{
		return item.GetPressedImageListInternal(item.Manager?.LargeIcons ?? false);
	}
}
