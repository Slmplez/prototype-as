using System;
using System.Collections;

namespace Etas.Base.UI.Framework;

[Serializable]
internal class CommandStackCollection : CollectionBase
{
	private const string InvalidIndex = "CommandStackCollection_InvalidIndex";

	public CommandStack this[int index]
	{
		get
		{
			return (CommandStack)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	public CommandStack this[Guid guidId]
	{
		get
		{
			foreach (CommandStack item in base.List)
			{
				if (item.StackId == guidId)
				{
					return item;
				}
			}
			CommandExecutorStackException ex = new CommandExecutorStackException("CommandStackCollection_InvalidIndex");
			throw ex;
		}
	}

	public void Add(CommandStack node)
	{
		base.List.Add(node);
	}

	public void Remove(int index)
	{
		if (index > base.Count - 1 || index < 0)
		{
			CommandExecutorStackException ex = new CommandExecutorStackException("CommandStackCollection_InvalidIndex");
			throw ex;
		}
		base.List.RemoveAt(index);
	}

	public void Remove(Guid guidId)
	{
		int index = 0;
		int num = 0;
		foreach (CommandStack item in base.List)
		{
			if (item.StackId == guidId)
			{
				index = num;
			}
			else
			{
				num++;
			}
		}
		Remove(index);
	}
}
