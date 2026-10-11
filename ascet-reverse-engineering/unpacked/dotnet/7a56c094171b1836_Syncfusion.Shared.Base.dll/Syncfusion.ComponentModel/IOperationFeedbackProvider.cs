using System.Collections;

namespace Syncfusion.ComponentModel;

public interface IOperationFeedbackProvider
{
	Stack FeedbackStack { get; }

	event OperationFeedbackEventHandler OperationFeedback;

	void RaiseOperationFeedbackEvent(OperationFeedbackEventArgs e);
}
