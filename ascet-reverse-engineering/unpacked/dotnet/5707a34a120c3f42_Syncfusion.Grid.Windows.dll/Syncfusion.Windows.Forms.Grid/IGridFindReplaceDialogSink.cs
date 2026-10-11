using System.Drawing;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridFindReplaceDialogSink
{
	object Find(GridFindReplaceEventArgs e);

	object Replace(GridFindReplaceEventArgs e);

	void ReplaceAll(GridFindReplaceEventArgs e);

	void ShowInfoMessage(string msg, string category);

	Rectangle GetScreenRect(object lc);
}
