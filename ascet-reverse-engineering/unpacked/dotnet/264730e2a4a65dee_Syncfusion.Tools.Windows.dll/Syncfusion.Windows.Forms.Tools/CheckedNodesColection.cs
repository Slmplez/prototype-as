using System;
using Syncfusion.Collections;

namespace Syncfusion.Windows.Forms.Tools;

public class CheckedNodesColection : ArrayListExt
{
	private bool m_bIsCleaning;

	public new TreeNodeAdv this[int index] => (TreeNodeAdv)base[index];

	public CheckedNodesColection()
	{
		base.ForceReadOnly = true;
	}

	public override int Add(object value)
	{
		if (!(value is TreeNodeAdv { Checked: false } treeNodeAdv))
		{
			return -1;
		}
		treeNodeAdv.Checked = true;
		return base.Add((object)treeNodeAdv);
	}

	public override void Remove(object obj)
	{
		if (!(obj is TreeNodeAdv treeNodeAdv))
		{
			throw new ArgumentNullException("node");
		}
		treeNodeAdv.Checked = false;
		base.Remove(treeNodeAdv);
	}

	public override void Clear()
	{
		m_bIsCleaning = true;
		int num;
		for (num = 0; num < Count; num++)
		{
			this[num].Checked = false;
			num--;
		}
		m_bIsCleaning = false;
	}

	public void ResolveNode(TreeNodeAdv node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (node.Checked)
		{
			if (!Contains(node))
			{
				Add(node);
			}
		}
		else
		{
			Remove(node);
		}
	}

	public void RemoveNodes(TreeNodeAdvCollection nodes)
	{
		if (nodes == null)
		{
			throw new ArgumentNullException("nodes");
		}
		if (nodes.Count != 0)
		{
			int i = 0;
			for (int count = nodes.Count; i < count; i++)
			{
				Remove(nodes[i]);
			}
		}
	}

	public void AddNodes(TreeNodeAdvCollection nodes)
	{
		if (nodes == null)
		{
			throw new ArgumentNullException("nodes");
		}
		if (nodes.Count != 0)
		{
			int i = 0;
			for (int count = nodes.Count; i < count; i++)
			{
				Add(nodes[i]);
			}
		}
	}

	internal int Add(TreeNodeAdv node)
	{
		if (node == null)
		{
			throw new ArgumentNullException("node");
		}
		if (node.Checked)
		{
			return base.Add((object)node);
		}
		return -1;
	}

	internal void Remove(TreeNodeAdv node)
	{
		if (node != null)
		{
			if (m_bIsCleaning)
			{
				node.Checked = false;
			}
			int num = base.IndexOf(node);
			if (num >= 0)
			{
				RemoveAt(num);
			}
			return;
		}
		throw new ArgumentNullException("node");
	}
}
