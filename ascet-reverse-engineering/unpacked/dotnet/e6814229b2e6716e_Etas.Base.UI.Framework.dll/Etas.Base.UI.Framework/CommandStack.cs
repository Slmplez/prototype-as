using System;
using System.Collections;
using System.ComponentModel;

namespace Etas.Base.UI.Framework;

internal class CommandStack : IDisposable
{
	private const string InvalidIndex = "Invalid Index was specified";

	private Guid guidStackId;

	private int maxHistory;

	private Stack undoStack;

	private Stack redoStack;

	private CommandTargetCollection targetCollection;

	private bool disposed;

	private bool _transactionInProgress;

	private TransactionCommand _transactionCmd;

	[Browsable(true)]
	public int MaxHistory
	{
		get
		{
			return maxHistory;
		}
		set
		{
			maxHistory = value;
		}
	}

	[Browsable(true)]
	public Guid StackId => guidStackId;

	public Stack RedoStack => redoStack;

	public Stack UndoStack => undoStack;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public int UndoCount => undoStack.Count;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public int RedoCount => redoStack.Count;

	public CommandStack(object target)
	{
		if (target == null)
		{
			CommandStackInitializationException ex = new CommandStackInitializationException("Invalid Index was specified");
			throw ex;
		}
		targetCollection = new CommandTargetCollection();
		targetCollection.Add(new CommandTarget(target));
		maxHistory = 256;
		undoStack = new Stack(20);
		redoStack = new Stack(20);
		guidStackId = Guid.NewGuid();
	}

	public CommandStack(object target, int maximumHistory)
	{
		if (target == null)
		{
			new CommandStackInitializationException("Invalid Index was specified");
		}
		else
		{
			targetCollection = new CommandTargetCollection();
			targetCollection.Add(new CommandTarget(target));
		}
		maxHistory = maximumHistory;
		undoStack = new Stack(20);
		redoStack = new Stack(20);
		guidStackId = Guid.NewGuid();
	}

	public Guid AddNewCommandTarget(object target)
	{
		CommandTarget commandTarget = new CommandTarget(target);
		targetCollection.Add(commandTarget);
		return commandTarget.TargetId;
	}

	public bool StartTransaction(string description)
	{
		if (_transactionInProgress)
		{
			return false;
		}
		_transactionInProgress = true;
		_transactionCmd = new TransactionCommand(description);
		return true;
	}

	public bool EndTransaction()
	{
		if (!_transactionInProgress)
		{
			return false;
		}
		ExecuteCommand(_transactionCmd);
		_transactionInProgress = false;
		return true;
	}

	public virtual bool AddTransaction(ICommand cmd)
	{
		bool result = false;
		if (cmd.CanUndo)
		{
			_transactionCmd.AddTransaction(cmd, targetCollection.DefaultObject.Target);
			result = true;
		}
		return result;
	}

	public virtual bool AddTransaction(ICommand cmd, Guid guidTargetId)
	{
		bool result = false;
		if (cmd.CanUndo)
		{
			_transactionCmd.AddTransaction(cmd, targetCollection[guidTargetId].Target);
			result = true;
		}
		return result;
	}

	public bool ReplaceCritcalObject(Guid guidId, object obj)
	{
		bool result = false;
		for (int i = 0; i < undoStack.Count; i++)
		{
			if (PeekUndo(i) is ICriticalObject criticalObject && criticalObject.ReplaceCriticalObject(guidId, obj))
			{
				result = true;
			}
		}
		for (int j = 0; j < redoStack.Count; j++)
		{
			if (PeekRedo(j) is ICriticalObject criticalObject2 && criticalObject2.ReplaceCriticalObject(guidId, obj))
			{
				result = true;
			}
		}
		return result;
	}

	public virtual bool ExecuteCommand(ICommand cmd)
	{
		bool flag = cmd.Do(targetCollection.DefaultObject.Target);
		if (flag && cmd.CanUndo && maxHistory > 0 && undoStack.Count < maxHistory)
		{
			undoStack.Push(cmd);
		}
		return flag;
	}

	internal bool StackCommand(ICommand cmd)
	{
		bool result = false;
		if (cmd.CanUndo && maxHistory > 0 && undoStack.Count < maxHistory)
		{
			result = cmd.InitializeTarget(targetCollection.DefaultObject.Target);
			undoStack.Push(cmd);
		}
		return result;
	}

	internal bool StackCommand(ICommand cmd, Guid targetId)
	{
		bool result = false;
		if (cmd.CanUndo && maxHistory > 0 && undoStack.Count < maxHistory)
		{
			result = cmd.InitializeTarget(targetCollection[targetId].Target);
			undoStack.Push(cmd);
		}
		return result;
	}

	internal static bool ExecuteDoOnly(ICommand cmd, object target)
	{
		return cmd.Do(target);
	}

	internal static bool ExecuteUndoOnly(ICommand cmd, object target)
	{
		return cmd.Undo();
	}

	public virtual bool ExecuteCommand(ICommand cmd, Guid guidTargetId)
	{
		bool flag = cmd.Do(targetCollection[guidTargetId].Target);
		if (flag && cmd.CanUndo && maxHistory > 0 && undoStack.Count < maxHistory)
		{
			undoStack.Push(cmd);
		}
		return flag;
	}

	public virtual bool UndoCommand()
	{
		bool flag = false;
		if (undoStack.Count > 0)
		{
			ICommand command = (ICommand)undoStack.Pop();
			if (command != null)
			{
				flag = command.Undo();
				if (flag)
				{
					redoStack.Push(command);
				}
			}
		}
		return flag;
	}

	public virtual bool RedoCommand()
	{
		bool flag = false;
		if (redoStack.Count > 0)
		{
			ICommand command = (ICommand)redoStack.Pop();
			if (command != null)
			{
				flag = command.Do(targetCollection.DefaultObject.Target);
				if (flag)
				{
					undoStack.Push(command);
				}
			}
		}
		return flag;
	}

	public virtual bool RedoCommand(Guid guidTargetId)
	{
		bool flag = false;
		if (redoStack.Count > 0)
		{
			ICommand command = (ICommand)redoStack.Pop();
			if (command != null)
			{
				flag = command.Do(targetCollection[guidTargetId].Target);
				if (flag)
				{
					undoStack.Push(command);
				}
			}
		}
		return flag;
	}

	public ICommand PeekUndo(int offset)
	{
		ICommand result = null;
		if (offset >= 0 && offset < undoStack.Count)
		{
			if (offset == 0)
			{
				result = (ICommand)undoStack.Peek();
			}
			else
			{
				bool flag = false;
				IEnumerator enumerator = undoStack.GetEnumerator();
				for (int i = 0; i <= offset; i++)
				{
					flag = enumerator.MoveNext();
				}
				if (flag)
				{
					result = (ICommand)enumerator.Current;
				}
			}
		}
		return result;
	}

	public ICommand PeekRedo(int offset)
	{
		ICommand result = null;
		if (offset >= 0 && offset < redoStack.Count)
		{
			if (offset == 0)
			{
				result = (ICommand)redoStack.Peek();
			}
			else
			{
				bool flag = false;
				IEnumerator enumerator = redoStack.GetEnumerator();
				for (int i = 0; i <= offset; i++)
				{
					flag = enumerator.MoveNext();
				}
				if (flag)
				{
					result = (ICommand)enumerator.Current;
				}
			}
		}
		return result;
	}

	public void ClearHistory()
	{
		undoStack.Clear();
		redoStack.Clear();
	}

	public void Dispose()
	{
		if (!disposed)
		{
			redoStack.Clear();
			undoStack.Clear();
			redoStack = null;
			undoStack = null;
		}
		disposed = true;
	}
}
