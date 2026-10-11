using Syncfusion.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class TabGroupItemsList : ArrayListExt
{
	public new TabGroupItem this[int index]
	{
		get
		{
			return (TabGroupItem)base[index];
		}
		set
		{
			base[index] = value;
		}
	}
}
