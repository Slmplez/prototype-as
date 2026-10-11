using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public class DelayedWaitCursor : OperationFeedbackListener
{
	private Cursor savedCursor;

	public DelayedWaitCursor()
	{
	}

	public DelayedWaitCursor(IOperationFeedbackProvider provider)
	{
		AddProvider(provider);
	}

	protected override void OnProgress(OperationFeedbackEventArgs e)
	{
		if (e.Milestone == OperationMilestone.Progress)
		{
			if (savedCursor == null)
			{
				savedCursor = Cursor.Current;
				Cursor.Current = Cursors.WaitCursor;
			}
		}
		else if (e.Milestone == OperationMilestone.Finished && savedCursor != null)
		{
			Cursor.Current = savedCursor;
			savedCursor = null;
		}
	}
}
