using System.ComponentModel;

namespace Syncfusion.ComponentModel;

public sealed class OperationFeedbackEventArgs : CancelEventArgs
{
	private int percent;

	private string name;

	private string description;

	private bool allowCancel;

	private bool allowRollback;

	private bool rollback;

	private OperationMilestone milestone;

	private int ticks;

	public int Percent => percent;

	public string Name => name;

	public string Description => description;

	public bool AllowCancel => allowCancel;

	public bool AllowRollback => allowCancel;

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

	public OperationMilestone Milestone => milestone;

	public int Ticks => ticks;

	public OperationFeedbackEventArgs(OperationMilestone milestone, string name, string description, int percent, int ticks, bool allowCancel, bool allowRollback)
	{
		this.milestone = milestone;
		this.name = name;
		this.description = description;
		this.percent = percent;
		this.allowCancel = allowCancel;
		this.allowRollback = allowRollback;
		this.ticks = ticks;
	}
}
