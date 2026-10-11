namespace Syncfusion.ComponentModel;

public abstract class SyncfusionCommand
{
	public abstract string Description { get; }

	public abstract void Execute();
}
