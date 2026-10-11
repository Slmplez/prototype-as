using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public sealed class GridCurrentCellControlKeyMessageEventArgs : SyncfusionHandledEventArgs
{
	private Control control;

	private Message msg;

	private bool scrollInView;

	private bool callProcessKeyPreview;

	private bool callBaseProcessKeyMessage;

	private bool result;

	public Control Control => control;

	public Message Msg => msg;

	[TraceProperty(true)]
	public bool ScrollInView
	{
		get
		{
			return scrollInView;
		}
		set
		{
			scrollInView = value;
		}
	}

	[TraceProperty(true)]
	public bool CallProcessKeyPreview
	{
		get
		{
			return callProcessKeyPreview;
		}
		set
		{
			callProcessKeyPreview = value;
		}
	}

	[TraceProperty(true)]
	public bool CallBaseProcessKeyMessage
	{
		get
		{
			return callBaseProcessKeyMessage;
		}
		set
		{
			callBaseProcessKeyMessage = value;
		}
	}

	public bool Result
	{
		get
		{
			return result;
		}
		set
		{
			result = value;
		}
	}

	public GridCurrentCellControlKeyMessageEventArgs(Control control, Message msg, bool scrollInView, bool callProcessKeyPreview, bool callBaseProcessKeyMessage, bool result)
	{
		this.control = control;
		this.msg = msg;
		this.scrollInView = scrollInView;
		this.callProcessKeyPreview = callProcessKeyPreview;
		this.callBaseProcessKeyMessage = callBaseProcessKeyMessage;
		this.result = result;
	}
}
