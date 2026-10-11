using System.Collections;
using Syncfusion.ComponentModel;

namespace Syncfusion.Windows.Forms.Grid;

public class GridTransactionCommand : SyncfusionCommand
{
	private Stack stack = new Stack();

	private string description;

	private GridModelCommandManager commandStack;

	public override string Description => description;

	public Stack Stack => stack;

	public GridTransactionCommand(GridModelCommandManager commandStack)
		: this(commandStack, string.Empty)
	{
	}

	public GridTransactionCommand(GridModelCommandManager commandStack, string s)
	{
		this.commandStack = commandStack;
		description = s;
	}

	public override void Execute()
	{
		bool flag = false;
		if (stack.Count > 1)
		{
			commandStack.Model.BeginUpdate(BeginUpdateOptions.InvalidateAndScroll, "GridTransactionCommand.Execute: " + description);
			flag = true;
		}
		try
		{
			commandStack.BeginTrans(description);
			SyncfusionCommand syncfusionCommand;
			while ((syncfusionCommand = Pop()) != null)
			{
				syncfusionCommand.Execute();
			}
			commandStack.CommitTrans();
		}
		finally
		{
			if (flag)
			{
				commandStack.Model.EndUpdate();
			}
		}
	}

	public void Push(SyncfusionCommand cmd)
	{
		stack.Push(cmd);
	}

	public SyncfusionCommand Peek()
	{
		return stack.Peek() as SyncfusionCommand;
	}

	public SyncfusionCommand Pop()
	{
		if (stack.Count > 0)
		{
			return stack.Pop() as SyncfusionCommand;
		}
		return null;
	}
}
