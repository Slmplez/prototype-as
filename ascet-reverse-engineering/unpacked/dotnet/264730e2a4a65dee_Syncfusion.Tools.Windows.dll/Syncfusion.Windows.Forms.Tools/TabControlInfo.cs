using System;
using System.Collections;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
public class TabControlInfo
{
	private const string DEF_ID = "TabControlInfo";

	private Hashtable m_htPages = new Hashtable();

	private TabControlInfo()
	{
	}

	private TabControlInfo(SerializationInfo info, StreamingContext context)
	{
		if (info.GetValue("TabControlInfo", typeof(Hashtable)) is Hashtable htPages)
		{
			m_htPages = htPages;
		}
	}

	public TabControlInfo(TabControlAdv tabControl)
	{
		if (tabControl == null)
		{
			throw new ArgumentNullException("tabControl");
		}
		if (tabControl == null || tabControl.TabPages == null || tabControl.TabPages.Count <= 0)
		{
			return;
		}
		ITabPanelData tabPanelData = tabControl.TabPanelData;
		if (tabPanelData != null)
		{
			int i = 0;
			for (int count = tabControl.TabPages.Count; i < count; i++)
			{
				TabPageAdv tabPageAdv = tabControl.TabPages[i];
				int num = tabPanelData.TabsData.IndexOf(tabPageAdv.TabData);
				TabPageInfo value = new TabPageInfo(tabPageAdv.Text, num, num == tabPanelData.SelectedIndex);
				m_htPages[tabPageAdv.Name] = value;
			}
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("TabPagesInfo", m_htPages, typeof(Hashtable));
	}

	public TabPageInfo GetTabPageInfo(string tabName)
	{
		if (tabName == null)
		{
			throw new ArgumentNullException("tabName");
		}
		return (TabPageInfo)m_htPages[tabName];
	}
}
