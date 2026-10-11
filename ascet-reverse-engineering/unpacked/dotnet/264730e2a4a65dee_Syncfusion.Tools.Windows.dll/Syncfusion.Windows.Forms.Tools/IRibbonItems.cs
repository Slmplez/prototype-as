using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

[Description("Supports events which are raised before ToolStrip item will be added to collection and beforeToolStrip item will be removed from collection. Also method for removing ToolStrip item at the specific index is represented.")]
public interface IRibbonItems : ICollection, IEnumerable
{
	ToolStripItem this[int index] { get; }

	event RibbonItemsEventHandler BeforeAddItem;

	event RibbonItemsEventHandler BeforeRemoveItem;

	void RemoveAt(int idx);
}
