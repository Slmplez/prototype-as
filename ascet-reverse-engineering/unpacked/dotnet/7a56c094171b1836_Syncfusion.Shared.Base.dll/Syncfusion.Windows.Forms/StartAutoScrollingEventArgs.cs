using System.Windows.Forms;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms;

public sealed class StartAutoScrollingEventArgs : SyncfusionCancelEventArgs
{
	private AutoScrollReason reason;

	private int accStartInterval;

	private int accStepInterval;

	private int accMinInterval;

	private int accDelayScrollTimer;

	private ScrollBars direction;

	[TraceProperty(true)]
	public AutoScrollReason Reason => reason;

	[TraceProperty(true)]
	public ScrollBars Direction => direction;

	[TraceProperty(true)]
	public int AccStartInterval
	{
		get
		{
			return accStartInterval;
		}
		set
		{
			accStartInterval = value;
		}
	}

	[TraceProperty(true)]
	public int AccStepInterval
	{
		get
		{
			return accStepInterval;
		}
		set
		{
			accStepInterval = value;
		}
	}

	[TraceProperty(true)]
	public int AccMinInterval
	{
		get
		{
			return accMinInterval;
		}
		set
		{
			accMinInterval = value;
		}
	}

	internal int AccDelayScrollTimer
	{
		get
		{
			return accDelayScrollTimer;
		}
		set
		{
			accDelayScrollTimer = value;
		}
	}

	internal StartAutoScrollingEventArgs(AutoScrollReason reason, ScrollBars direction, int accStartInterval, int accStepInterval, int accMinInterval, int accDelayScrollTimer)
	{
		this.reason = reason;
		this.direction = direction;
		this.accStartInterval = accStartInterval;
		this.accStepInterval = accStepInterval;
		this.accMinInterval = accMinInterval;
		this.accDelayScrollTimer = accDelayScrollTimer;
	}
}
