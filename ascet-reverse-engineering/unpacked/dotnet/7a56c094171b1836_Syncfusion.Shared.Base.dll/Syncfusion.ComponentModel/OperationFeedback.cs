using System;
using System.Collections;
using Syncfusion.Diagnostics;
using Syncfusion.Windows.Forms;

namespace Syncfusion.ComponentModel;

public sealed class OperationFeedback : IDisposable
{
	private IOperationFeedbackProvider feedback;

	private int tickCount;

	private bool canceled;

	private bool started;

	private string name = "";

	private string description = "";

	private int percentage = -1;

	private int counter;

	private int seriesCount = 1;

	private int seriesIndex = -1;

	private bool allowCancel;

	private bool allowRollback;

	private bool rollback;

	private bool allowNestedFeedback = true;

	private bool allowNestedProgress = true;

	private bool outerNestedFeedback = true;

	private bool outerNestedProgress = true;

	private OperationFeedback outer;

	private int lastTick = int.MaxValue;

	public int SeriesCount
	{
		get
		{
			return seriesCount;
		}
		set
		{
			seriesIndex = -1;
			seriesCount = value;
		}
	}

	public bool IsNested => outer != null;

	public bool AllowNestedProgress
	{
		get
		{
			return allowNestedProgress;
		}
		set
		{
			if (outerNestedProgress)
			{
				allowNestedProgress = value;
			}
		}
	}

	public bool ShouldCallProgress => outerNestedProgress;

	public bool ShouldShowFeedback => outerNestedFeedback;

	public bool AllowNestedFeedback
	{
		get
		{
			return allowNestedFeedback;
		}
		set
		{
			if (outerNestedFeedback)
			{
				allowNestedFeedback = value;
			}
		}
	}

	public bool ShouldCancel
	{
		get
		{
			if (!canceled && ShouldCallProgress)
			{
				canceled = !OnProgress();
			}
			if (canceled && outer != null)
			{
				outer.canceled = true;
			}
			return canceled;
		}
	}

	public bool AllowCancel
	{
		get
		{
			return allowCancel;
		}
		set
		{
			allowCancel = value;
		}
	}

	public bool AllowRollback
	{
		get
		{
			return allowRollback;
		}
		set
		{
			allowRollback = value;
		}
	}

	public bool Rollback
	{
		get
		{
			return rollback;
		}
		set
		{
			rollback = value;
		}
	}

	public bool RollbackConfirmed => false;

	public string Name
	{
		get
		{
			return name;
		}
		set
		{
			name = value;
		}
	}

	public int Ticks
	{
		get
		{
			if (tickCount != int.MaxValue)
			{
				return Environment.TickCount - tickCount;
			}
			return 0;
		}
	}

	public string Description
	{
		get
		{
			return description;
		}
		set
		{
			description = value;
		}
	}

	public int PercentComplete
	{
		get
		{
			return percentage;
		}
		set
		{
			percentage = value;
		}
	}

	public int Counter => counter;

	private Stack FeedbackStack => feedback.FeedbackStack;

	public OperationFeedback(IOperationFeedbackProvider feedback)
	{
		if (feedback == null)
		{
			throw new ArgumentNullException();
		}
		this.feedback = feedback;
		if (FeedbackStack.Count > 0)
		{
			outer = FeedbackStack.Peek() as OperationFeedback;
		}
		if (outer != null)
		{
			name = outer.name;
			description = outer.description;
			percentage = outer.percentage;
			counter = outer.counter;
			allowCancel = outer.allowCancel;
			outerNestedFeedback = (allowNestedFeedback = outer.allowNestedFeedback);
			outerNestedProgress = (allowNestedProgress = outer.allowNestedProgress);
			tickCount = outer.tickCount;
			outer.seriesIndex++;
		}
		else
		{
			tickCount = int.MaxValue;
		}
		FeedbackStack.Push(this);
	}

	void IDisposable.Dispose()
	{
		OnClose();
		GC.SuppressFinalize(this);
	}

	public void Start()
	{
		started = true;
		OnStart();
	}

	public void Close()
	{
		OnClose();
		GC.SuppressFinalize(this);
	}

	public void Progress()
	{
		if (!canceled)
		{
			canceled = !OnProgress();
		}
	}

	private void OnStart()
	{
		try
		{
			if (tickCount == int.MaxValue)
			{
				tickCount = Environment.TickCount;
			}
			if (!IsNested)
			{
				OperationFeedbackEventArgs e = new OperationFeedbackEventArgs(OperationMilestone.Start, name, description, percentage, 0, allowCancel: false, allowRollback: false);
				feedback.RaiseOperationFeedbackEvent(e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}

	private int GetAdjustePercentage()
	{
		int result = percentage;
		if (outer != null && outer.SeriesCount > 1 && outer.seriesIndex >= 0)
		{
			result = percentage / outer.SeriesCount + 100 / outer.SeriesCount * outer.seriesIndex;
		}
		return result;
	}

	private bool OnProgress()
	{
		if (!started)
		{
			Start();
		}
		counter++;
		if (lastTick != int.MaxValue && Environment.TickCount - lastTick < 30)
		{
			return true;
		}
		lastTick = Environment.TickCount;
		try
		{
			OperationFeedbackEventArgs e = new OperationFeedbackEventArgs(OperationMilestone.Progress, name, description, GetAdjustePercentage(), Environment.TickCount - tickCount, allowCancel, allowRollback);
			feedback.RaiseOperationFeedbackEvent(e);
			rollback = e.Rollback;
			return !allowCancel || !e.Cancel;
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
			return false;
		}
	}

	private void OnClose()
	{
		FeedbackStack.Pop();
		try
		{
			if (!IsNested)
			{
				OperationFeedbackEventArgs e = new OperationFeedbackEventArgs(OperationMilestone.Finished, name, description, GetAdjustePercentage(), Environment.TickCount - tickCount, allowCancel: false, allowRollback: false);
				feedback.RaiseOperationFeedbackEvent(e);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(this, ex))
			{
				throw;
			}
		}
	}
}
