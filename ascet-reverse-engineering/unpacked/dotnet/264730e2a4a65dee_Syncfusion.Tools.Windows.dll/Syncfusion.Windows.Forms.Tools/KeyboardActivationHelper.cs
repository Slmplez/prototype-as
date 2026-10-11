using System;
using System.Collections;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

internal class KeyboardActivationHelper : IDisposable
{
	private ArrayList m_mdiChildList;

	private int m_currentActiveChildIndex;

	private Form m_mdiParent;

	private bool m_bIgnoreActivation;

	private int executionsCount;

	internal KeyboardActivationHelper(Form mdiParent)
	{
		m_mdiChildList = new ArrayList();
		m_currentActiveChildIndex = 0;
		m_mdiParent = mdiParent;
	}

	public void Dispose()
	{
		m_mdiChildList.Clear();
		m_mdiParent = null;
	}

	internal void AddMdiChild(Form mdiChild)
	{
		if (!m_mdiChildList.Contains(mdiChild))
		{
			m_mdiChildList.Add(mdiChild);
		}
		if (mdiChild == m_mdiParent.ActiveMdiChild)
		{
			MoveChild(m_mdiChildList.IndexOf(mdiChild), 0);
		}
	}

	internal void RemoveMdiChild(Form mdiChild)
	{
		if (m_currentActiveChildIndex != 0)
		{
			StopTabBasedActivation();
		}
		m_mdiChildList.Remove(mdiChild);
	}

	internal void StartTabBasedActivation()
	{
		if (m_currentActiveChildIndex != 0)
		{
			StopTabBasedActivation();
		}
		m_currentActiveChildIndex = 0;
	}

	internal void ActivateNext(bool shiftPressed)
	{
		if (m_mdiChildList.Count != 0 && executionsCount <= m_mdiChildList.Count)
		{
			if (shiftPressed)
			{
				m_currentActiveChildIndex--;
			}
			else
			{
				m_currentActiveChildIndex++;
			}
			if (m_currentActiveChildIndex > m_mdiChildList.Count - 1)
			{
				m_currentActiveChildIndex = 0;
			}
			else if (m_currentActiveChildIndex < 0)
			{
				m_currentActiveChildIndex = m_mdiChildList.Count - 1;
			}
			Form form = m_mdiChildList[m_currentActiveChildIndex] as Form;
			if (!form.Enabled)
			{
				executionsCount++;
				ActivateNext(shiftPressed);
				return;
			}
			m_bIgnoreActivation = true;
			form.Activate();
			m_bIgnoreActivation = false;
			executionsCount = 0;
		}
	}

	internal void StopTabBasedActivation()
	{
		if (m_currentActiveChildIndex != 0 && m_currentActiveChildIndex < m_mdiChildList.Count)
		{
			MoveChild(m_currentActiveChildIndex, 0);
		}
	}

	internal void BringToFront(Form mdiChild)
	{
		if (!m_bIgnoreActivation)
		{
			if (m_currentActiveChildIndex != 0)
			{
				StopTabBasedActivation();
			}
			if (m_mdiChildList.Contains(mdiChild))
			{
				MoveChild(m_mdiChildList.IndexOf(mdiChild), 0);
			}
		}
	}

	private void MoveChild(int from, int to)
	{
		Form value = m_mdiChildList[from] as Form;
		m_mdiChildList.RemoveAt(from);
		m_mdiChildList.Insert(to, value);
	}
}
