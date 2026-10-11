using System;
using System.ComponentModel;
using System.Reflection;
using System.Resources;
using Etas.Base.Shared;

namespace Etas.Base.UI.Framework;

[Serializable]
public class CommandExecutor : IDisposable
{
	private const string CommandExecutorResources = "CommandExecutorResources.CommandExecutorResources";

	private const string InitializationFailure = "CommandExecutor failed to initialize";

	private CommandStackCollection _stackCollection;

	internal static ResourceManager ResourceManager;

	private bool _disposed;

	private bool _transactionPending;

	private bool _transactionInProgress;

	private string _description;

	private Guid _transactionStackId;

	private static CommandExecutor _commandExecutor = new CommandExecutor();

	[Browsable(true)]
	public static bool TransactionInProgress => _commandExecutor._transactionInProgress;

	[Browsable(true)]
	public bool TransactionPending => _commandExecutor._transactionPending;

	public static event CommandExecutedEventHandler CommandExecuted;

	private CommandExecutor()
	{
		InitializeResources();
		_stackCollection = new CommandStackCollection();
	}

	internal bool StartInternalTransaction(string description)
	{
		if (_transactionInProgress)
		{
			return false;
		}
		_transactionPending = true;
		_description = description;
		return true;
	}

	internal bool EndInternalTransaction()
	{
		if (!_transactionInProgress)
		{
			return false;
		}
		_stackCollection[_transactionStackId].EndTransaction();
		FireCommandExecutedEvent(_transactionStackId);
		_transactionInProgress = false;
		_transactionStackId = Guid.Empty;
		return true;
	}

	internal Guid RequestInternalCommandStack(object objCommandTarget)
	{
		CommandStack commandStack = null;
		try
		{
			commandStack = new CommandStack(objCommandTarget);
		}
		catch (CommandStackInitializationException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		_stackCollection.Add(commandStack);
		return commandStack.StackId;
	}

	internal Guid RequestInternalCommandStack(object objCommandTarget, int intMaxHistory)
	{
		CommandStack commandStack = null;
		try
		{
			commandStack = new CommandStack(objCommandTarget, intMaxHistory);
		}
		catch (CommandStackInitializationException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		_stackCollection.Add(commandStack);
		return commandStack.StackId;
	}

	internal void RemoveInternalCommandStack(Guid guidId)
	{
		_stackCollection.Remove(guidId);
	}

	internal int GetInternalMaxHistory(Guid guidId)
	{
		return _stackCollection[guidId].MaxHistory;
	}

	internal Guid AddNewInternalCommandTarget(Guid cmdId, object target)
	{
		return _stackCollection[cmdId].AddNewCommandTarget(target);
	}

	internal bool ReplaceInternalCritcalObject(Guid cmdId, Guid objId, object obj)
	{
		return _stackCollection[cmdId].ReplaceCritcalObject(objId, obj);
	}

	internal virtual bool StackInternalCommand(ICommand cmd, Guid guidId)
	{
		bool result = false;
		if (_transactionPending)
		{
			_transactionPending = false;
			_transactionStackId = guidId;
			_transactionInProgress = _stackCollection[guidId].StartTransaction(_description);
		}
		if (_transactionInProgress && _transactionStackId == guidId)
		{
			try
			{
				result = _stackCollection[guidId].AddTransaction(cmd);
			}
			catch (CommandExecutorStackException exception)
			{
				Logger.LogException(exception);
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2);
			}
		}
		else if (_transactionInProgress && _transactionStackId != guidId)
		{
			_stackCollection[_transactionStackId].EndTransaction();
		}
		else
		{
			try
			{
				result = _stackCollection[guidId].StackCommand(cmd);
				FireCommandExecutedEvent(guidId);
			}
			catch (CommandExecutorStackException exception3)
			{
				Logger.LogException(exception3);
			}
			catch (Exception exception4)
			{
				Logger.LogException(exception4);
			}
		}
		return result;
	}

	internal bool StackInternalCommand(ICommand cmd, Guid guidId, Guid guidTargetId)
	{
		bool result = false;
		if (_transactionPending)
		{
			_transactionPending = false;
			_transactionStackId = guidId;
			_transactionInProgress = _stackCollection[guidId].StartTransaction(_description);
		}
		if (_transactionInProgress && _transactionStackId == guidId)
		{
			try
			{
				result = _stackCollection[guidId].AddTransaction(cmd, guidTargetId);
			}
			catch (CommandExecutorStackException exception)
			{
				Logger.LogException(exception);
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2);
			}
		}
		else if (_transactionInProgress && _transactionStackId != guidId)
		{
			_stackCollection[_transactionStackId].EndTransaction();
		}
		else
		{
			try
			{
				result = _stackCollection[guidId].StackCommand(cmd, guidTargetId);
				FireCommandExecutedEvent(guidId);
			}
			catch (CommandExecutorStackException exception3)
			{
				Logger.LogException(exception3);
			}
			catch (Exception exception4)
			{
				Logger.LogException(exception4);
			}
		}
		return result;
	}

	internal virtual bool ExecuteInternalCommand(ICommand cmd, Guid guidId)
	{
		bool result = false;
		if (_transactionPending)
		{
			_transactionPending = false;
			_transactionStackId = guidId;
			_transactionInProgress = _stackCollection[guidId].StartTransaction(_description);
		}
		if (_transactionInProgress && _transactionStackId == guidId)
		{
			try
			{
				result = _stackCollection[guidId].AddTransaction(cmd);
			}
			catch (CommandExecutorStackException exception)
			{
				Logger.LogException(exception);
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2);
			}
		}
		else if (_transactionInProgress && _transactionStackId != guidId)
		{
			_stackCollection[_transactionStackId].EndTransaction();
		}
		else
		{
			try
			{
				ClearRedoOnCommandExecution(guidId);
				result = _stackCollection[guidId].ExecuteCommand(cmd);
				FireCommandExecutedEvent(guidId);
			}
			catch (CommandExecutorStackException exception3)
			{
				Logger.LogException(exception3);
			}
			catch (Exception exception4)
			{
				Logger.LogException(exception4);
			}
		}
		return result;
	}

	internal void ClearRedoOnCommandExecution(Guid guidId)
	{
		if (_stackCollection[guidId].RedoStack.Count > 0)
		{
			_stackCollection[guidId].RedoStack.Clear();
		}
	}

	internal bool ExecuteInternalCommand(ICommand cmd, Guid guidId, Guid guidTargetId)
	{
		bool result = false;
		if (_transactionPending)
		{
			_transactionPending = false;
			_transactionStackId = guidId;
			_transactionInProgress = _stackCollection[guidId].StartTransaction(_description);
		}
		if (_transactionInProgress && _transactionStackId == guidId)
		{
			try
			{
				result = _stackCollection[guidId].AddTransaction(cmd, guidTargetId);
			}
			catch (CommandExecutorStackException exception)
			{
				Logger.LogException(exception);
			}
			catch (Exception exception2)
			{
				Logger.LogException(exception2);
			}
		}
		else if (_transactionInProgress && _transactionStackId != guidId)
		{
			_stackCollection[_transactionStackId].EndTransaction();
		}
		else
		{
			try
			{
				ClearRedoOnCommandExecution(guidId);
				result = _stackCollection[guidId].ExecuteCommand(cmd, guidTargetId);
				FireCommandExecutedEvent(guidId);
			}
			catch (CommandExecutorStackException exception3)
			{
				Logger.LogException(exception3);
			}
			catch (Exception exception4)
			{
				Logger.LogException(exception4);
			}
		}
		return result;
	}

	internal bool UndoInternalCommand(Guid guidId)
	{
		bool result = false;
		try
		{
			result = _stackCollection[guidId].UndoCommand();
			FireCommandExecutedEvent(guidId);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal bool RedoInternalCommand(Guid guidId)
	{
		bool result = false;
		try
		{
			result = _stackCollection[guidId].RedoCommand();
			FireCommandExecutedEvent(guidId);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal bool RedoInternalCommand(Guid guidId, Guid guidTargetId)
	{
		bool result = false;
		try
		{
			result = _stackCollection[guidId].RedoCommand(guidTargetId);
			FireCommandExecutedEvent(guidId);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal ICommand PeekInternalUndo(int offset, Guid guidId)
	{
		ICommand result = null;
		try
		{
			result = _stackCollection[guidId].PeekUndo(offset);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal ICommand PeekInternalRedo(int offset, Guid guidId)
	{
		ICommand result = null;
		try
		{
			result = _stackCollection[guidId].PeekRedo(offset);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal int GetInternalUndoCount(Guid guidId)
	{
		int result = 0;
		try
		{
			result = _stackCollection[guidId].UndoCount;
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal int GetInternalRedoCount(Guid guidId)
	{
		int result = 0;
		try
		{
			result = _stackCollection[guidId].RedoCount;
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
		return result;
	}

	internal void ClearInternalHistory(Guid guidId)
	{
		try
		{
			_stackCollection[guidId].ClearHistory();
			FireCommandExecutedEvent(guidId);
		}
		catch (CommandExecutorStackException exception)
		{
			Logger.LogException(exception);
		}
		catch (Exception exception2)
		{
			Logger.LogException(exception2);
		}
	}

	public static bool StartTransaction(string description)
	{
		return _commandExecutor.StartInternalTransaction(description);
	}

	public static bool EndTransaction()
	{
		return _commandExecutor.EndInternalTransaction();
	}

	public static Guid RequestCommandStack(object commandTarget)
	{
		return _commandExecutor.RequestInternalCommandStack(commandTarget);
	}

	public static Guid RequestCommandStack(object commandTarget, int maxHistory)
	{
		return _commandExecutor.RequestInternalCommandStack(commandTarget, maxHistory);
	}

	public static void RemoveCommandStack(Guid cmdId)
	{
		_commandExecutor.RemoveInternalCommandStack(cmdId);
	}

	public static int GetMaxHistory(Guid cmdId)
	{
		return _commandExecutor.GetInternalMaxHistory(cmdId);
	}

	public static Guid AddNewCommandTarget(Guid cmdId, object target)
	{
		return _commandExecutor.AddNewInternalCommandTarget(cmdId, target);
	}

	public static bool ReplaceCritcalObject(Guid cmdId, Guid objId, object obj)
	{
		return _commandExecutor.ReplaceInternalCritcalObject(cmdId, objId, obj);
	}

	public static bool StackCommand(ICommand cmd, Guid cmdId)
	{
		return _commandExecutor.StackInternalCommand(cmd, cmdId);
	}

	public static bool StackCommand(ICommand cmd, Guid cmdId, Guid targetId)
	{
		return _commandExecutor.StackInternalCommand(cmd, cmdId, targetId);
	}

	public static bool ExecuteCommand(ICommand cmd, Guid cmdId)
	{
		return _commandExecutor.ExecuteInternalCommand(cmd, cmdId);
	}

	public static bool ExecuteCommand(ICommand cmd, Guid cmdId, Guid targetId)
	{
		return _commandExecutor.ExecuteInternalCommand(cmd, cmdId, targetId);
	}

	public static bool UndoCommand(Guid cmdId)
	{
		return _commandExecutor.UndoInternalCommand(cmdId);
	}

	public static bool RedoCommand(Guid cmdId)
	{
		return _commandExecutor.RedoInternalCommand(cmdId);
	}

	public static bool RedoCommand(Guid cmdId, Guid targetId)
	{
		return _commandExecutor.RedoInternalCommand(cmdId, targetId);
	}

	public static ICommand PeekUndo(int offset, Guid cmdId)
	{
		return _commandExecutor.PeekInternalUndo(offset, cmdId);
	}

	public static ICommand PeekRedo(int offset, Guid cmdId)
	{
		return _commandExecutor.PeekInternalRedo(offset, cmdId);
	}

	public static int GetUndoCount(Guid cmdId)
	{
		return _commandExecutor.GetInternalUndoCount(cmdId);
	}

	public static int GetRedoCount(Guid cmdId)
	{
		return _commandExecutor.GetInternalRedoCount(cmdId);
	}

	public static void ClearHistory(Guid cmdId)
	{
		_commandExecutor.ClearInternalHistory(cmdId);
	}

	private void InitializeResources()
	{
		ResourceManager = new ResourceManager("sls.Commands.Strings", Assembly.GetExecutingAssembly());
	}

	private void FireCommandExecutedEvent(Guid cmdId)
	{
		if (CommandExecutor.CommandExecuted != null)
		{
			CommandExecutor.CommandExecuted(this, new CommandExecutedEventArgs(cmdId));
		}
	}

	public void Dispose()
	{
		_ = _disposed;
		_disposed = true;
	}
}
