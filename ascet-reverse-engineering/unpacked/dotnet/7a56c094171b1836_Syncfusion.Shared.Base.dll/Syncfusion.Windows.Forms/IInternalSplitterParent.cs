using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

internal interface IInternalSplitterParent
{
	Cursor OverrideCursor { get; set; }

	void OnMoveSplitter(object sender, int x, int y);

	void OnMovedSplitter(object sender);

	void InvalidateSplitter(object sender);
}
