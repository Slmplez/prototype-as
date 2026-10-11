using System;
using System.Drawing;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms.Tools;

public class MDIChildTabData : TabData
{
	private Form m_mdiChild;

	private ITabPanelData m_TabPanelData;

	private TabbedMDIManager m_mdiManager;

	private Icon m_icon;

	public Form MdiChild => m_mdiChild;

	public override string Text
	{
		get
		{
			if (m_mdiChild is ITabbedMDIChildForm)
			{
				bool validValueReturned = false;
				ITabbedMDIChildForm tabbedMDIChildForm = m_mdiChild as ITabbedMDIChildForm;
				string customTabText = tabbedMDIChildForm.GetCustomTabText(out validValueReturned);
				if (validValueReturned)
				{
					return customTabText;
				}
			}
			return m_mdiChild.Text;
		}
		set
		{
			if (value != m_mdiChild.Text)
			{
				m_mdiChild.Text = ((value == null) ? string.Empty : value);
			}
		}
	}

	public Icon Icon
	{
		get
		{
			if (!m_mdiManager.UseIconsInTabs)
			{
				return null;
			}
			return m_icon;
		}
		set
		{
			if (value != m_icon)
			{
				m_icon = value;
			}
		}
	}

	public override int ImageIndex
	{
		get
		{
			if (m_mdiManager.UseIconsInTabs || m_mdiManager.shouldKeepImageIndex)
			{
				return base.ImageIndex;
			}
			return -1;
		}
		set
		{
			base.ImageIndex = value;
		}
	}

	public MDIChildTabData(ITabPanelData pTabPanelData, Form pMdiChild, TabbedMDIManager pMdiManager, MDIChildTabData pPrevTabData)
	{
		m_TabPanelData = pTabPanelData;
		m_mdiChild = pMdiChild;
		m_mdiManager = pMdiManager;
		CopyFrom(pPrevTabData);
		m_mdiChild.GotFocus += MDIChild_Focused;
		m_mdiChild.TextChanged += MDIChild_TextChanged;
	}

	public MDIChildTabData(MDIChildTabData pPrevTabData)
	{
		m_TabPanelData = pPrevTabData.m_TabPanelData;
		m_mdiChild = pPrevTabData.m_mdiChild;
		m_mdiManager = pPrevTabData.m_mdiManager;
		CopyFrom(pPrevTabData);
	}

	public MDIChildTabData()
	{
	}

	private void MDIChild_TextChanged(object sender, EventArgs e)
	{
		OnBoundsAffected();
	}

	private void MDIChild_Focused(object sender, EventArgs e)
	{
		m_TabPanelData.SelectedIndex = m_TabPanelData.TabsData.IndexOf(this);
	}

	protected void CopyFrom(MDIChildTabData pPrevTabData)
	{
		if (pPrevTabData != null)
		{
			m_icon = pPrevTabData.m_icon;
		}
		CopyFrom((TabData)pPrevTabData);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			m_mdiManager = null;
			m_TabPanelData = null;
			m_icon = null;
			if (m_mdiChild != null)
			{
				m_mdiChild.GotFocus -= MDIChild_Focused;
				m_mdiChild.TextChanged -= MDIChild_TextChanged;
				m_mdiChild = null;
			}
		}
		base.Dispose(disposing);
	}
}
