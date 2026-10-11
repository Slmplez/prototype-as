using System;
using System.Collections;

namespace Syncfusion.Windows.Forms;

public class HistoryManager : IHistoryManager
{
	private static BlockSeparator s_blockSeparator = new BlockSeparator();

	private int m_openedBlocksCount;

	protected Stack m_stackUndo;

	protected Stack m_stackRedo;

	protected bool IsBlockOpened => m_openedBlocksCount > 0;

	public bool CanUndo => m_stackUndo.Count > 0;

	public bool CanRedo => m_stackRedo.Count > 0;

	public HistoryManager()
	{
		m_stackUndo = new Stack();
		m_stackRedo = new Stack();
	}

	public void Reset()
	{
		m_stackRedo.Clear();
		m_stackUndo.Clear();
		m_openedBlocksCount = 0;
	}

	public void Do(ICommand cmd)
	{
		if (cmd == null)
		{
			throw new ArgumentNullException("cmd");
		}
		if (m_stackRedo.Count > 0)
		{
			m_stackRedo.Clear();
		}
		cmd.Reverse();
		m_stackUndo.Push(cmd);
	}

	public bool Redo()
	{
		if (IsBlockOpened)
		{
			throw new InvalidOperationException("History block must be closed before calling this method.");
		}
		return ProcessCommands(m_stackRedo, m_stackUndo);
	}

	public bool Undo()
	{
		if (IsBlockOpened)
		{
			throw new InvalidOperationException("History block must be closed before calling this method.");
		}
		return ProcessCommands(m_stackUndo, m_stackRedo);
	}

	public void BeginBlock()
	{
		if (!IsBlockOpened)
		{
			m_stackUndo.Push(s_blockSeparator);
		}
		m_openedBlocksCount++;
	}

	public void CloseBlock()
	{
		if (!IsBlockOpened)
		{
			throw new InvalidOperationException("There is no opened history block to close.");
		}
		m_openedBlocksCount--;
		if (!IsBlockOpened)
		{
			m_stackUndo.Push(s_blockSeparator);
		}
	}

	public void RollBack()
	{
		if (!IsBlockOpened)
		{
			throw new InvalidOperationException("No history block opened to rollback.");
		}
		for (BlockSeparator blockSeparator = null; blockSeparator == null; blockSeparator = m_stackUndo.Pop() as BlockSeparator)
		{
		}
		m_openedBlocksCount = 0;
	}

	private void ProcessCommand(ICommand cmd, Stack destination)
	{
		cmd.Execute();
		cmd.Reverse();
		destination.Push(cmd);
	}

	private bool ProcessCommands(Stack stackSrc, Stack stackDest)
	{
		bool result = false;
		if (stackSrc.Count > 0)
		{
			object obj = stackSrc.Pop();
			if (obj is BlockSeparator obj2)
			{
				stackDest.Push(obj2);
				BlockSeparator blockSeparator = null;
				do
				{
					obj = stackSrc.Pop();
					if (obj is ICommand cmd)
					{
						ProcessCommand(cmd, stackDest);
					}
					else
					{
						blockSeparator = obj as BlockSeparator;
					}
				}
				while (blockSeparator == null && stackSrc.Count > 0);
				stackDest.Push(blockSeparator);
				result = true;
			}
			else if (obj is ICommand cmd2)
			{
				ProcessCommand(cmd2, stackDest);
				result = true;
			}
		}
		return result;
	}
}
