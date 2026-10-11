using System.Collections;

namespace Etas.Base.UI.Framework;

internal class TransactionCommand : ICommand
{
	private bool _canUndo;

	private string _description;

	private ArrayList _targetList;

	private ArrayList _transactionList;

	public string Description => _description;

	public bool CanUndo => _canUndo;

	public TransactionCommand(string description)
	{
		_canUndo = true;
		_description = description;
		_targetList = new ArrayList();
		_transactionList = new ArrayList();
	}

	public bool InitializeTarget(object target)
	{
		return true;
	}

	public bool Do(object target)
	{
		ICommand command = null;
		object obj = null;
		for (int i = 0; i < _transactionList.Count; i++)
		{
			obj = _targetList[i];
			command = _transactionList[i] as ICommand;
			if (obj != null && command != null)
			{
				CommandStack.ExecuteDoOnly(command, obj);
				command = null;
				obj = null;
			}
		}
		return true;
	}

	public bool Undo()
	{
		ICommand command = null;
		object obj = null;
		int num = _transactionList.Count - 1;
		for (int num2 = num; num2 >= 0; num2--)
		{
			obj = _targetList[num2];
			command = _transactionList[num2] as ICommand;
			if (obj != null && command != null)
			{
				CommandStack.ExecuteUndoOnly(command, obj);
				command = null;
				obj = null;
			}
		}
		return true;
	}

	public void AddTransaction(ICommand cmd, object target)
	{
		_targetList.Add(target);
		_transactionList.Add(cmd);
	}
}
