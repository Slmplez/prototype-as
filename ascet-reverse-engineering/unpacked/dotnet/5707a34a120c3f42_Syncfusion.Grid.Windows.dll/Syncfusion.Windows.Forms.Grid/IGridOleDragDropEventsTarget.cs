using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Grid;

public interface IGridOleDragDropEventsTarget
{
	void OnDragDrop(DragEventArgs e);

	void OnDragEnter(DragEventArgs e);

	void OnDragLeave(EventArgs e);

	void OnDragOver(DragEventArgs e);
}
