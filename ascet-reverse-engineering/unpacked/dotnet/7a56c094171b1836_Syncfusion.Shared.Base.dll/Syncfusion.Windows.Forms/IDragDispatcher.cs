using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IDragDispatcher
{
	void DispatchDragOver(DragEventArgs drgevent);

	void DispatchOnDragDrop(DragEventArgs drgevent);

	void DispatchOnDragEnter(DragEventArgs drgevent);

	void DispatchOnDragLeave(EventArgs e);

	void DispatchOnQueryContinueDrag(QueryContinueDragEventArgs args);

	void DispatchOnGiveFeedback(GiveFeedbackEventArgs args);

	DragDropEffects DispatchDoDragDrop(object data, DragDropEffects allowedEffects);
}
