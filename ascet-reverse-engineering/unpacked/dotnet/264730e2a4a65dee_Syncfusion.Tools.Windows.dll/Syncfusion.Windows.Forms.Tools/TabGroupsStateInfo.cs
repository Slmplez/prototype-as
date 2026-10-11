using System;
using System.Collections;
using System.Runtime.Serialization;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
[DocumentationExclude]
public class TabGroupsStateInfo : ISerializable
{
	private const string GROUP_NAMES_VS_TAB_PAGES = "GroupNamesVsTabPages";

	private const string SELECTED_PAGES = "SelectedPages";

	private const string GROUP_NAMES = "GroupNames";

	private const string GROUP_BASE = "TabGroup";

	private const string MDI_AUTO_SCALE_BASE_SIZES = "MdiAutoScaleBaseSizes";

	private const string TAB_ALIGNMENT = "TabAlignment";

	private const string MDI_CLIENT_AUTO_SCALE_BASE_SIZES = "MdiClientAutoScaleBaseSize";

	private const string LAYOUT_PANEL = "LayoutPanel";

	private int m_iAutoScaleBaseMdiClientDim;

	private ArrayList m_lstMdiAutoScaleBaseDim = new ArrayList();

	private bool m_bHorizontalAlignment = true;

	private Hashtable m_htGroupNamesVsTabPages = new Hashtable();

	private Hashtable m_htSelectedPages = new Hashtable();

	private Hashtable m_htGroupNames = new Hashtable();

	private LayoutPanel m_lpLayoutPanel;

	public int TabGroupCount => m_htGroupNamesVsTabPages.Keys.Count;

	public int MdiClientAutoScaleBaseSize => m_iAutoScaleBaseMdiClientDim;

	public ArrayList MdiAutoScaleBaseSizes => m_lstMdiAutoScaleBaseDim;

	public bool Horizontal => m_bHorizontalAlignment;

	internal LayoutPanel LayoutPanel
	{
		get
		{
			return m_lpLayoutPanel;
		}
		set
		{
			m_lpLayoutPanel = value;
		}
	}

	private TabGroupsStateInfo()
	{
	}

	public TabGroupsStateInfo(TabbedMDIManager pManager)
	{
		TabbedGroupedMDIManager tabbedGroupedMDIManager = pManager as TabbedGroupedMDIManager;
		for (int i = 0; i < pManager.TabGroupHosts.Length; i++)
		{
			TabHost tabHost = pManager.TabGroupHosts[i];
			m_lstMdiAutoScaleBaseDim.Add(tabHost.MdiChildAutoScaleBaseDim);
			Hashtable hashtable = new Hashtable();
			foreach (TabPageAdv tabPage in tabHost.MDITabPanel.TabPages)
			{
				TabPageAdvCollection tabPages = tabHost.MDITabPanel.TabPages;
				hashtable.Add(new UniquePageID(tabPage.Text), tabPages.IndexOf(tabPage));
			}
			string key = "TabGroup" + i;
			if (tabbedGroupedMDIManager != null)
			{
				string groupNameOfHost = tabbedGroupedMDIManager.GetGroupNameOfHost(tabHost);
				if (groupNameOfHost != null)
				{
					m_htGroupNames[key] = groupNameOfHost;
				}
			}
			m_htGroupNamesVsTabPages[key] = hashtable;
			m_htSelectedPages[key] = tabHost.MDITabPanel.SelectedIndex;
		}
		m_iAutoScaleBaseMdiClientDim = pManager.autoScaleBaseMdiClientDim;
		m_bHorizontalAlignment = pManager.Horizontal;
		m_lpLayoutPanel = pManager.LayoutPanel;
	}

	private TabGroupsStateInfo(SerializationInfo info, StreamingContext context)
	{
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			if (current.Name == "MdiAutoScaleBaseSizes")
			{
				m_lstMdiAutoScaleBaseDim = info.GetValue("MdiAutoScaleBaseSizes", typeof(ArrayList)) as ArrayList;
			}
			else if (current.Name == "MdiClientAutoScaleBaseSize")
			{
				m_iAutoScaleBaseMdiClientDim = info.GetInt32("MdiClientAutoScaleBaseSize");
			}
			else if (current.Name == "TabAlignment")
			{
				m_bHorizontalAlignment = info.GetBoolean("TabAlignment");
			}
			else if (current.Name == "GroupNamesVsTabPages")
			{
				m_htGroupNamesVsTabPages = info.GetValue("GroupNamesVsTabPages", typeof(Hashtable)) as Hashtable;
			}
			else if (current.Name == "SelectedPages")
			{
				m_htSelectedPages = info.GetValue("SelectedPages", typeof(Hashtable)) as Hashtable;
			}
			else if (current.Name == "GroupNames")
			{
				m_htGroupNames = info.GetValue("GroupNames", typeof(Hashtable)) as Hashtable;
			}
			else if (current.Name == "LayoutPanel")
			{
				m_lpLayoutPanel = info.GetValue("LayoutPanel", typeof(LayoutPanel)) as LayoutPanel;
			}
			if (current.Name == "mdiAutoScaleBaseDim")
			{
				m_lstMdiAutoScaleBaseDim = info.GetValue("mdiAutoScaleBaseDim", typeof(ArrayList)) as ArrayList;
			}
			else if (current.Name == "autoScaleBaseMdiClientDim")
			{
				m_iAutoScaleBaseMdiClientDim = info.GetInt32("autoScaleBaseMdiClientDim");
			}
			else if (current.Name == "horizontalAlignment")
			{
				m_bHorizontalAlignment = info.GetBoolean("horizontalAlignment");
			}
			else if (current.Name == "groupNamesVsTabPages")
			{
				m_htGroupNamesVsTabPages = info.GetValue("groupNamesVsTabPages", typeof(Hashtable)) as Hashtable;
			}
			else if (current.Name == "selectedPages")
			{
				m_htSelectedPages = info.GetValue("selectedPages", typeof(Hashtable)) as Hashtable;
			}
			else if (current.Name == "htGroupNames")
			{
				m_htGroupNames = info.GetValue("htGroupNames", typeof(Hashtable)) as Hashtable;
			}
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		info.AddValue("GroupNamesVsTabPages", m_htGroupNamesVsTabPages, typeof(Hashtable));
		info.AddValue("SelectedPages", m_htSelectedPages, typeof(Hashtable));
		info.AddValue("GroupNames", m_htGroupNames, typeof(Hashtable));
		info.AddValue("MdiAutoScaleBaseSizes", m_lstMdiAutoScaleBaseDim);
		info.AddValue("MdiClientAutoScaleBaseSize", m_iAutoScaleBaseMdiClientDim);
		info.AddValue("TabAlignment", m_bHorizontalAlignment);
		info.AddValue("LayoutPanel", m_lpLayoutPanel, typeof(LayoutPanel));
	}

	public string GetGroupName(int i)
	{
		string text = "TabGroup" + i;
		string text2 = m_htGroupNames[text] as string;
		if (text2 == null)
		{
			text2 = text;
		}
		return text2;
	}

	public Hashtable GetTabNamesOfGroup(int i)
	{
		string key = "TabGroup" + i;
		return m_htGroupNamesVsTabPages[key] as Hashtable;
	}

	public int GetSelectedPagesOfGroup(int i)
	{
		string key = "TabGroup" + i;
		if (m_htSelectedPages != null && m_htSelectedPages.Contains(key))
		{
			return (int)m_htSelectedPages[key];
		}
		return -1;
	}
}
