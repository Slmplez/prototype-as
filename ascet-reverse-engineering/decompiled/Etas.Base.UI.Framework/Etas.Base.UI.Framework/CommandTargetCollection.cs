using System;
using System.Collections;

namespace Etas.Base.UI.Framework;

[Serializable]
internal class CommandTargetCollection : CollectionBase
{
	public CommandTarget this[int index]
	{
		get
		{
			return (CommandTarget)base.List[index];
		}
		set
		{
			base.List[index] = value;
		}
	}

	public CommandTarget DefaultObject => base.List[0] as CommandTarget;

	public CommandTarget this[Guid guidId]
	{
		get
		{
			foreach (CommandTarget item in base.List)
			{
				if (item.TargetId == guidId)
				{
					return item;
				}
			}
			throw new Exception("Invalid index specified");
		}
	}

	public void Add(CommandTarget node)
	{
		base.List.Add(node);
	}

	public void Remove(int index)
	{
		if (index > base.Count - 1 || index < 0)
		{
			throw new Exception("Invalid index specified");
		}
		base.List.RemoveAt(index);
	}

	public void Remove(Guid guidId)
	{
		int index = 0;
		int num = 0;
		foreach (CommandTarget item in base.List)
		{
			if (item.TargetId == guidId)
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
