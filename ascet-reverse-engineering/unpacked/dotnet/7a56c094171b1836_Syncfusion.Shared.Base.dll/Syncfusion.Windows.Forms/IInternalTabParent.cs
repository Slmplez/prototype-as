using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IInternalTabParent
{
	ImageList ImageList { get; }

	TabBarSplitterStyle Style { get; }

	void GetMeasureTools(out Graphics g, out Font font, out int delta);

	void GetDrawingTools(InternalTab tab, out Brush fillBrush, out Color textColor, out Font font, out int delta);

	void DisposeMeasureTools();
}
