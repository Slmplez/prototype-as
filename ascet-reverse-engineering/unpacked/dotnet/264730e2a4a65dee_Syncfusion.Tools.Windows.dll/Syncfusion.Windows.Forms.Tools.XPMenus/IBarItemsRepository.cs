using System.Collections;
using System.Windows.Forms;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

public interface IBarItemsRepository
{
	BarItems Items { get; }

	Bars Bars { get; }

	ArrayList Categories { get; }

	IntList CategoriesToIgnoreInCustDialog { get; }

	ImageList ImageList { get; }

	ImageList LargeImageList { get; }

	bool ClearItemsAfterImport { get; }
}
