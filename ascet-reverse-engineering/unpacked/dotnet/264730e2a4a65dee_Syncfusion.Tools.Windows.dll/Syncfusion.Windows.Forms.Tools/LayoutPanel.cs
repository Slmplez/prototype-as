using System;
using System.Collections;
using System.Drawing;
using System.Runtime.Serialization;

namespace Syncfusion.Windows.Forms.Tools;

[Serializable]
internal class LayoutPanel : ISerializable
{
	private float COEFFICIENT = 0.5f;

	private int MINIMUM_TABHOST_HEIGHT = 5;

	private int MINIMUM_TABHOST_WIDTH = 5;

	private int OFFSET = 3;

	private int SPLITTER_WIDTH = 5;

	private bool m_bHorizontal;

	[NonSerialized]
	private object m_oComponentOne;

	[NonSerialized]
	private object m_oComponentTwo;

	private Size m_szPanel;

	private Point m_ptLocation;

	private Point m_ptPanelOne;

	private Point m_ptPanelTwo;

	private Size m_szPanelOne;

	private Size m_szPanelTwo;

	private Rectangle m_rcSplitterBounds;

	private LayoutPanel m_lpPreviousLayoutPanel;

	[NonSerialized]
	private TabHost m_thTabHost;

	private float m_fCoefficient = 0.5f;

	private string m_sUniqueName = string.Empty;

	private string m_sTabHostOneName = string.Empty;

	private string m_sTabHostTwoName = string.Empty;

	internal bool Horizontal
	{
		get
		{
			return m_bHorizontal;
		}
		set
		{
			m_bHorizontal = value;
		}
	}

	internal Size Size
	{
		get
		{
			return m_szPanel;
		}
		set
		{
			m_szPanel = value;
		}
	}

	internal Point Location
	{
		get
		{
			return m_ptLocation;
		}
		set
		{
			m_ptLocation = value;
		}
	}

	internal Point PanelOneLocation
	{
		get
		{
			return m_ptPanelOne;
		}
		set
		{
			m_ptPanelOne = value;
		}
	}

	internal Point PanelTwoLocation
	{
		get
		{
			return m_ptPanelTwo;
		}
		set
		{
			m_ptPanelTwo = value;
		}
	}

	internal Size PanelOneSize
	{
		get
		{
			return m_szPanelOne;
		}
		set
		{
			m_szPanelOne = value;
		}
	}

	internal Size PanelTwoSize
	{
		get
		{
			return m_szPanelTwo;
		}
		set
		{
			m_szPanelTwo = value;
		}
	}

	internal object ComponentOne
	{
		get
		{
			return m_oComponentOne;
		}
		set
		{
			m_oComponentOne = value;
		}
	}

	internal object ComponentTwo
	{
		get
		{
			return m_oComponentTwo;
		}
		set
		{
			m_oComponentTwo = value;
		}
	}

	internal Rectangle SplitterBounds
	{
		get
		{
			return m_rcSplitterBounds;
		}
		set
		{
			m_rcSplitterBounds = value;
		}
	}

	internal LayoutPanel PreviousPanel
	{
		get
		{
			return m_lpPreviousLayoutPanel;
		}
		set
		{
			m_lpPreviousLayoutPanel = value;
		}
	}

	internal TabHost TabHost
	{
		get
		{
			return m_thTabHost;
		}
		set
		{
			m_thTabHost = value;
		}
	}

	internal float Coefficient
	{
		get
		{
			return m_fCoefficient;
		}
		set
		{
			if (value < 0f)
			{
				value = 0f;
			}
			m_fCoefficient = value;
		}
	}

	internal string TabHostOneName
	{
		get
		{
			return m_sTabHostOneName;
		}
		set
		{
			m_sTabHostOneName = value;
		}
	}

	internal string TabHostTwoName
	{
		get
		{
			return m_sTabHostTwoName;
		}
		set
		{
			m_sTabHostTwoName = value;
		}
	}

	internal string UniqueName
	{
		get
		{
			return m_sUniqueName;
		}
		set
		{
			m_sUniqueName = value;
		}
	}

	public LayoutPanel()
	{
	}

	public LayoutPanel(Size size, Point location, bool horizontal)
	{
		m_szPanel = size;
		m_ptLocation = location;
		m_bHorizontal = horizontal;
	}

	public LayoutPanel(TabHost hostOne, Size size, Point location, bool horizontal)
		: this(size, location, horizontal)
	{
		m_oComponentOne = hostOne;
		m_oComponentTwo = null;
		if (hostOne != null)
		{
			hostOne.LayoutPanel = this;
			m_sUniqueName = hostOne.Name;
		}
	}

	public LayoutPanel(TabHost hostOne, TabHost hostTwo, Size size, Point location, bool horizontal)
		: this(size, location, horizontal)
	{
		m_oComponentOne = hostOne;
		m_oComponentTwo = hostTwo;
		if (hostOne != null)
		{
			hostOne.LayoutPanel = this;
		}
		if (hostTwo != null)
		{
			hostTwo.LayoutPanel = this;
			m_sUniqueName = hostTwo.Name;
		}
		m_thTabHost = hostTwo;
	}

	public void InitializePanelOne(TabHost pTabHost)
	{
		m_ptPanelOne = m_ptLocation;
		m_szPanelOne = m_szPanel;
		if (pTabHost != null && pTabHost.SplitterHost != null)
		{
			pTabHost.SplitterBounds = Rectangle.Empty;
			pTabHost.SplitterHost.Visible = false;
		}
	}

	public void DividePanelOnTwoParts()
	{
		if (m_oComponentOne == null || m_oComponentTwo == null)
		{
			m_ptPanelOne = m_ptLocation;
			m_szPanelOne = m_szPanel;
			m_ptPanelTwo = m_ptLocation;
			m_szPanelTwo = m_szPanel;
			m_rcSplitterBounds = Rectangle.Empty;
		}
		else if (m_bHorizontal)
		{
			int num = (int)((float)(m_szPanel.Height - TabbedMDIManager.SPLITTER_WIDTH) * m_fCoefficient);
			m_ptPanelOne = m_ptLocation;
			m_szPanelOne = new Size(m_szPanel.Width, num);
			int num2 = m_ptLocation.Y + num + TabbedMDIManager.SPLITTER_WIDTH;
			m_ptPanelTwo = new Point(m_ptLocation.X, num2);
			m_szPanelTwo = new Size(m_szPanel.Width, m_ptLocation.Y + m_szPanel.Height - num2);
			int x = m_ptLocation.X;
			int y = m_ptLocation.Y + num;
			m_rcSplitterBounds = new Rectangle(x, y, m_szPanel.Width, TabbedMDIManager.SPLITTER_WIDTH);
		}
		else
		{
			int num3 = (int)((float)(m_szPanel.Width - TabbedMDIManager.SPLITTER_WIDTH) * m_fCoefficient);
			m_ptPanelOne = m_ptLocation;
			m_szPanelOne = new Size(num3, m_szPanel.Height);
			int num4 = m_ptLocation.X + num3 + TabbedMDIManager.SPLITTER_WIDTH;
			m_ptPanelTwo = new Point(num4, m_ptLocation.Y);
			m_szPanelTwo = new Size(m_ptLocation.X + m_szPanel.Width - num4, m_szPanel.Height);
			int x2 = m_ptLocation.X + num3;
			int y2 = m_ptLocation.Y;
			m_rcSplitterBounds = new Rectangle(x2, y2, TabbedMDIManager.SPLITTER_WIDTH, m_szPanel.Height);
		}
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.m_szPanel = ((i == 0) ? m_szPanelOne : m_szPanelTwo);
				layoutPanel.m_ptLocation = ((i == 0) ? m_ptPanelOne : m_ptPanelTwo);
				layoutPanel.DividePanelOnTwoParts();
			}
		}
		if (m_thTabHost != null)
		{
			m_thTabHost.SplitterBounds = m_rcSplitterBounds;
		}
	}

	public void DivideTabHost(TabHost pPrevTabHost, TabHost pTabHost, bool horizontal)
	{
		bool flag = true;
		bool flag2 = false;
		if ((m_oComponentOne is TabHost && (TabHost)m_oComponentOne == pPrevTabHost) || (m_oComponentTwo is TabHost && (TabHost)m_oComponentTwo == pPrevTabHost))
		{
			flag2 = true;
			if (m_oComponentTwo is TabHost && (TabHost)m_oComponentTwo == pPrevTabHost)
			{
				flag = false;
			}
		}
		if (flag2)
		{
			LayoutPanel layoutPanel = new LayoutPanel(pPrevTabHost, pTabHost, flag ? m_szPanelOne : m_szPanelTwo, flag ? m_ptPanelOne : m_ptPanelTwo, horizontal);
			layoutPanel.DividePanelOnTwoParts();
			pTabHost.SplitterBounds = layoutPanel.SplitterBounds;
			pTabHost.SplitterHost.Horizontal = horizontal;
			pTabHost.SplitterHost.LayoutPanel = this;
			layoutPanel.m_lpPreviousLayoutPanel = this;
			if (flag)
			{
				m_oComponentOne = layoutPanel;
			}
			else
			{
				m_oComponentTwo = layoutPanel;
			}
		}
	}

	public void FindAndDeleteTabHost(LayoutPanel pPreviousPanel, TabHost pTabHost)
	{
		bool flag = true;
		bool flag2 = false;
		if ((m_oComponentOne is TabHost && (TabHost)m_oComponentOne == pTabHost) || (m_oComponentTwo is TabHost && (TabHost)m_oComponentTwo == pTabHost))
		{
			flag2 = true;
			if (m_oComponentTwo is TabHost && (TabHost)m_oComponentTwo == pTabHost)
			{
				flag = false;
			}
		}
		if (!flag2)
		{
			return;
		}
		if (flag)
		{
			m_oComponentOne = null;
		}
		else
		{
			m_oComponentTwo = null;
		}
		if (pPreviousPanel == null)
		{
			return;
		}
		object[] array = new object[2] { pPreviousPanel.m_oComponentOne, pPreviousPanel.m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (!(array[i] is LayoutPanel))
			{
				continue;
			}
			LayoutPanel layoutPanel = array[i] as LayoutPanel;
			if (this != layoutPanel)
			{
				continue;
			}
			object obj = (flag ? m_oComponentTwo : m_oComponentOne);
			if (obj is TabHost)
			{
				TabHost tabHost = obj as TabHost;
				tabHost.LayoutPanel = pPreviousPanel;
				if (i == 0)
				{
					pPreviousPanel.m_oComponentOne = tabHost;
				}
				else
				{
					pPreviousPanel.m_oComponentTwo = tabHost;
				}
			}
			else if (obj is LayoutPanel)
			{
				LayoutPanel layoutPanel2 = obj as LayoutPanel;
				layoutPanel2.m_lpPreviousLayoutPanel = pPreviousPanel;
				if (i == 0)
				{
					pPreviousPanel.m_oComponentOne = layoutPanel2;
				}
				else
				{
					pPreviousPanel.m_oComponentTwo = layoutPanel2;
				}
			}
			else if (i == 0)
			{
				pPreviousPanel.m_oComponentOne = null;
			}
			else
			{
				pPreviousPanel.m_oComponentTwo = null;
			}
			break;
		}
	}

	public void SetSplitterHosts()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetSplitterHosts();
			}
		}
		if (m_thTabHost != null)
		{
			m_thTabHost.SplitterBounds = m_rcSplitterBounds;
			if (m_thTabHost.SplitterHost != null)
			{
				m_thTabHost.SplitterHost.LayoutPanel = this;
			}
		}
	}

	public void SetTabHosts()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetTabHosts();
			}
		}
		m_thTabHost = GetTabHost(bComponentOne: false);
	}

	public TabHost GetTabHost(bool bComponentOne)
	{
		TabHost result = null;
		object obj = (bComponentOne ? m_oComponentOne : m_oComponentTwo);
		if (obj is LayoutPanel)
		{
			LayoutPanel layoutPanel = obj as LayoutPanel;
			result = layoutPanel.GetTabHost(bComponentOne: true);
		}
		else if (obj is TabHost)
		{
			result = obj as TabHost;
		}
		return result;
	}

	public void SetUniqueNames()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetUniqueNames();
			}
		}
		if (m_thTabHost != null)
		{
			m_sUniqueName = m_thTabHost.Name;
		}
	}

	public void SetNullablePanels()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetNullablePanels();
			}
		}
		RemoveNullablePanels();
	}

	public void RemoveNullablePanels()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (!(array[i] is LayoutPanel))
			{
				continue;
			}
			LayoutPanel layoutPanel = array[i] as LayoutPanel;
			if (layoutPanel.IsNullablePanel())
			{
				if (i == 0)
				{
					m_oComponentOne = null;
				}
				else
				{
					m_oComponentTwo = null;
				}
			}
		}
	}

	public bool IsNullablePanel()
	{
		if (m_oComponentOne == null && m_oComponentTwo == null)
		{
			return true;
		}
		return false;
	}

	public void SetLayoutPanels()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetLayoutPanels();
			}
			if (array[i] is TabHost)
			{
				TabHost tabHost = array[i] as TabHost;
				tabHost.LayoutPanel = this;
			}
		}
	}

	public void SetEqualWeights()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetEqualWeights();
			}
		}
		int pTabHostCount = 0;
		GetTabHostsCount(ref pTabHostCount, pForMaximize: true);
		if (pTabHostCount != 1)
		{
			m_fCoefficient = 1f / (float)pTabHostCount;
		}
	}

	public void SetCustomWeights()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.SetCustomWeights();
			}
		}
		m_fCoefficient = COEFFICIENT;
	}

	public void AlignmentToggle()
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.AlignmentToggle();
			}
		}
		m_bHorizontal = !m_bHorizontal;
	}

	public void MaximizeTabGroup(TabHost pTabHost, LayoutPanel pMainLayoutPanel)
	{
		_ = pTabHost.LayoutPanel;
		bool flag = true;
		flag = IsTabHostOnComponentOne(pTabHost, pMainLayoutPanel);
		pMainLayoutPanel.MinimizePanel(flag);
		while (pTabHost.LayoutPanel != pMainLayoutPanel)
		{
			pMainLayoutPanel = (flag ? (pMainLayoutPanel.ComponentOne as LayoutPanel) : (pMainLayoutPanel.ComponentTwo as LayoutPanel));
			flag = IsTabHostOnComponentOne(pTabHost, pMainLayoutPanel);
			pMainLayoutPanel.MinimizePanel(flag);
		}
	}

	private void MinimizePanel(bool bTabHostOnComponentOne)
	{
		if (bTabHostOnComponentOne)
		{
			if (m_oComponentTwo is TabHost)
			{
				RecalculateCoefficient(pMinimizeComponentOne: false, 1);
			}
			else if (m_oComponentTwo is LayoutPanel)
			{
				int pTabHostCount = 0;
				LayoutPanel layoutPanel = m_oComponentTwo as LayoutPanel;
				RecalculateCoefficient(pMinimizeComponentOne: false, layoutPanel.GetTabHostsCount(ref pTabHostCount, pForMaximize: true));
				layoutPanel.DivideAndMinimize(pTabHostCount);
			}
		}
		else if (m_oComponentOne is TabHost)
		{
			RecalculateCoefficient(pMinimizeComponentOne: true, 1);
		}
		else if (m_oComponentOne is LayoutPanel)
		{
			int pTabHostCount2 = 0;
			LayoutPanel layoutPanel2 = m_oComponentOne as LayoutPanel;
			RecalculateCoefficient(pMinimizeComponentOne: true, layoutPanel2.GetTabHostsCount(ref pTabHostCount2, pForMaximize: true));
			layoutPanel2.DivideAndMinimize(pTabHostCount2);
		}
		DividePanelOnTwoParts();
	}

	private void DivideAndMinimize(int pTabHostCount)
	{
		if (m_oComponentOne is TabHost && m_oComponentTwo is TabHost)
		{
			m_fCoefficient = COEFFICIENT;
		}
		else if (m_oComponentOne is TabHost && m_oComponentTwo is LayoutPanel)
		{
			LayoutPanel layoutPanel = m_oComponentTwo as LayoutPanel;
			m_fCoefficient = 1f / (float)pTabHostCount;
			layoutPanel.DivideAndMinimize(pTabHostCount--);
		}
		else if (m_oComponentOne is LayoutPanel && m_oComponentTwo is TabHost)
		{
			LayoutPanel layoutPanel2 = m_oComponentOne as LayoutPanel;
			m_fCoefficient = 1f - 1f / (float)pTabHostCount;
			layoutPanel2.DivideAndMinimize(pTabHostCount--);
		}
		else if (m_oComponentOne is LayoutPanel && m_oComponentTwo is LayoutPanel)
		{
			LayoutPanel layoutPanel3 = m_oComponentOne as LayoutPanel;
			LayoutPanel layoutPanel4 = m_oComponentTwo as LayoutPanel;
			m_fCoefficient = COEFFICIENT;
			layoutPanel3.DivideAndMinimize(pTabHostCount);
			layoutPanel4.DivideAndMinimize(pTabHostCount);
		}
		else
		{
			SetCustomWeights();
		}
	}

	private void RecalculateCoefficient(bool pMinimizeComponentOne, int pTabHostCount)
	{
		if (m_bHorizontal)
		{
			int num = MINIMUM_TABHOST_HEIGHT;
			if (m_thTabHost != null && m_thTabHost.MDITabPanel != null)
			{
				num = m_thTabHost.MDITabPanel.Height + OFFSET;
			}
			m_fCoefficient = (pMinimizeComponentOne ? ((float)(num * pTabHostCount + (pTabHostCount - 1) * SPLITTER_WIDTH) / (float)Size.Height) : (1f - (float)(num * pTabHostCount + (pTabHostCount - 1) * SPLITTER_WIDTH) / (float)Size.Height));
		}
		else
		{
			int num2 = MINIMUM_TABHOST_WIDTH;
			if (m_thTabHost != null && m_thTabHost.MDITabPanel != null && m_thTabHost.MDITabPanel.IsVerticalAlignment)
			{
				num2 = m_thTabHost.MDITabPanel.Width + OFFSET;
			}
			m_fCoefficient = (pMinimizeComponentOne ? ((float)(num2 * pTabHostCount + (pTabHostCount - 1) * SPLITTER_WIDTH) / (float)Size.Width) : (1f - (float)(num2 * pTabHostCount + (pTabHostCount - 1) * SPLITTER_WIDTH) / (float)Size.Width));
		}
		if (m_fCoefficient <= 0f || m_fCoefficient >= 1f)
		{
			m_fCoefficient = COEFFICIENT;
		}
	}

	private bool IsTabHostOnComponentOne(TabHost pTabHost, LayoutPanel pLayoutPanel)
	{
		bool result = false;
		LayoutPanel layoutPanel = pTabHost.LayoutPanel;
		if (layoutPanel == pLayoutPanel)
		{
			if (pLayoutPanel.ComponentOne is TabHost)
			{
				TabHost tabHost = pLayoutPanel.ComponentOne as TabHost;
				if (tabHost == pTabHost)
				{
					result = true;
				}
			}
			if (pLayoutPanel.ComponentTwo is TabHost)
			{
				TabHost tabHost2 = pLayoutPanel.ComponentTwo as TabHost;
				if (tabHost2 == pTabHost)
				{
					result = false;
				}
			}
		}
		else
		{
			while (layoutPanel.PreviousPanel != pLayoutPanel)
			{
				layoutPanel = layoutPanel.PreviousPanel;
			}
			if (pLayoutPanel.ComponentOne is LayoutPanel)
			{
				LayoutPanel layoutPanel2 = pLayoutPanel.ComponentOne as LayoutPanel;
				if (layoutPanel2 == layoutPanel)
				{
					result = true;
				}
			}
			if (pLayoutPanel.ComponentTwo is LayoutPanel)
			{
				LayoutPanel layoutPanel3 = pLayoutPanel.ComponentTwo as LayoutPanel;
				if (layoutPanel3 == layoutPanel)
				{
					result = false;
				}
			}
		}
		return result;
	}

	internal int GetTabHostsCount(ref int pTabHostCount, bool pForMaximize)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				if (!pForMaximize)
				{
					pTabHostCount++;
				}
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetTabHostsCount(ref pTabHostCount, pForMaximize);
			}
			if (array[i] is TabHost)
			{
				pTabHostCount++;
			}
		}
		return pTabHostCount;
	}

	internal void GetNextAndPreviousTabHosts(TabHost pTabHost, ref ArrayList pPreviousHosts, ref ArrayList pNextHosts, ref bool bIsPrevious)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetNextAndPreviousTabHosts(pTabHost, ref pPreviousHosts, ref pNextHosts, ref bIsPrevious);
			}
			else if (array[i] is TabHost)
			{
				TabHost tabHost = array[i] as TabHost;
				if (tabHost == pTabHost)
				{
					bIsPrevious = false;
				}
				if (bIsPrevious)
				{
					pPreviousHosts.Add(tabHost);
				}
				else if (tabHost != pTabHost)
				{
					pNextHosts.Add(tabHost);
				}
			}
		}
	}

	internal Size GetTabHostSize(TabHost pHost)
	{
		Size result = Size.Empty;
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is TabHost)
			{
				TabHost tabHost = array[i] as TabHost;
				if (tabHost == pHost)
				{
					result = ((i == 0) ? m_szPanelOne : m_szPanelTwo);
				}
			}
		}
		return result;
	}

	internal void GetDistanceToRight(ref int iDistance, int iRight)
	{
		if (m_oComponentTwo is TabHost)
		{
			iDistance = m_szPanel.Width - m_szPanelOne.Width - SPLITTER_WIDTH - 1;
		}
		else if (m_oComponentTwo is LayoutPanel)
		{
			LayoutPanel layoutPanel = m_oComponentTwo as LayoutPanel;
			iDistance = layoutPanel.m_szPanel.Width;
			layoutPanel.GetDistancesToRight(ref iDistance, iRight);
		}
	}

	private void GetDistancesToRight(ref int iDistance, int iRight)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetDistancesToRight(ref iDistance, iRight);
			}
		}
		int num = m_ptPanelOne.X + m_szPanelOne.Width - iRight;
		int num2 = m_ptPanelTwo.X + m_szPanelTwo.Width - iRight;
		if (num < iDistance)
		{
			iDistance = num;
		}
		if (num2 < iDistance)
		{
			iDistance = num2;
		}
	}

	internal void GetDistanceToLeft(ref int iDistance, int iLeft)
	{
		if (m_oComponentOne is TabHost)
		{
			iDistance = m_szPanelOne.Width - 1;
		}
		else if (m_oComponentOne is LayoutPanel)
		{
			LayoutPanel layoutPanel = m_oComponentOne as LayoutPanel;
			iDistance = layoutPanel.m_szPanel.Width;
			layoutPanel.GetDistancesToLeft(ref iDistance, iLeft);
		}
	}

	private void GetDistancesToLeft(ref int iDistance, int iLeft)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetDistancesToLeft(ref iDistance, iLeft);
			}
		}
		int num = iLeft - m_ptPanelOne.X;
		int num2 = iLeft - m_ptPanelTwo.X;
		if (num < iDistance)
		{
			iDistance = num;
		}
		if (num2 < iDistance)
		{
			iDistance = num2;
		}
	}

	internal void GetDistanceToDown(ref int iDistance, int iDown)
	{
		if (m_oComponentTwo is TabHost)
		{
			iDistance = m_szPanel.Height - m_szPanelOne.Height - SPLITTER_WIDTH - 1;
		}
		else if (m_oComponentTwo is LayoutPanel)
		{
			LayoutPanel layoutPanel = m_oComponentTwo as LayoutPanel;
			iDistance = layoutPanel.m_szPanel.Height;
			layoutPanel.GetDistancesToDown(ref iDistance, iDown);
		}
	}

	private void GetDistancesToDown(ref int iDistance, int iDown)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetDistancesToDown(ref iDistance, iDown);
			}
		}
		int num = m_ptPanelOne.Y + m_szPanelOne.Height - iDown;
		int num2 = m_ptPanelTwo.Y + m_szPanelTwo.Height - iDown;
		if (num < iDistance)
		{
			iDistance = num;
		}
		if (num2 < iDistance)
		{
			iDistance = num2;
		}
	}

	internal void GetDistanceToTop(ref int iDistance, int iTop)
	{
		if (m_oComponentOne is TabHost)
		{
			iDistance = m_szPanelOne.Height - 1;
		}
		else if (m_oComponentOne is LayoutPanel)
		{
			LayoutPanel layoutPanel = m_oComponentOne as LayoutPanel;
			iDistance = layoutPanel.m_szPanel.Height;
			layoutPanel.GetDistancesToTop(ref iDistance, iTop);
		}
	}

	private void GetDistancesToTop(ref int iDistance, int iTop)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.GetDistancesToTop(ref iDistance, iTop);
			}
		}
		int num = iTop - m_ptPanelOne.Y;
		int num2 = iTop - m_ptPanelTwo.Y;
		if (num < iDistance)
		{
			iDistance = num;
		}
		if (num2 < iDistance)
		{
			iDistance = num2;
		}
	}

	internal void SplitterMoved(int iDelta)
	{
		if (m_thTabHost != null)
		{
			RecalculateCoefficientForTwoTabHosts(iDelta);
			if (m_oComponentOne is TabHost && m_oComponentTwo is LayoutPanel)
			{
				LayoutPanel layoutPanel = m_oComponentTwo as LayoutPanel;
				layoutPanel.ChangeBelongedTabHostsRightOrBottom(iDelta, m_rcSplitterBounds, m_bHorizontal);
			}
			else if (m_oComponentOne is LayoutPanel && m_oComponentTwo is TabHost)
			{
				LayoutPanel layoutPanel2 = m_oComponentOne as LayoutPanel;
				layoutPanel2.ChangeBelongedTabHostsLeftOrTop(iDelta, m_rcSplitterBounds, m_bHorizontal);
			}
			else if (m_oComponentOne is LayoutPanel && m_oComponentTwo is LayoutPanel)
			{
				LayoutPanel layoutPanel3 = m_oComponentOne as LayoutPanel;
				layoutPanel3.ChangeBelongedTabHostsLeftOrTop(iDelta, m_rcSplitterBounds, m_bHorizontal);
				LayoutPanel layoutPanel4 = m_oComponentTwo as LayoutPanel;
				layoutPanel4.ChangeBelongedTabHostsRightOrBottom(iDelta, m_rcSplitterBounds, m_bHorizontal);
			}
		}
	}

	private void RecalculateCoefficientForTwoTabHosts(int iDelta)
	{
		if (m_bHorizontal)
		{
			m_fCoefficient = (float)(m_szPanelOne.Height + iDelta) / (float)(m_szPanel.Height - SPLITTER_WIDTH);
		}
		else
		{
			m_fCoefficient = (float)(m_szPanelOne.Width + iDelta) / (float)(m_szPanel.Width - SPLITTER_WIDTH);
		}
	}

	private void ChangeBelongedTabHostsRightOrBottom(int iDelta, Rectangle rcSplitterBounds, bool bHorizontal)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.ChangeBelongedTabHostsRightOrBottom(iDelta, rcSplitterBounds, bHorizontal);
			}
		}
		if (bHorizontal)
		{
			if (m_ptPanelOne.Y == rcSplitterBounds.Bottom)
			{
				m_szPanel.Height -= iDelta;
				if (m_bHorizontal == bHorizontal)
				{
					m_szPanelOne.Height -= iDelta;
					m_fCoefficient = (float)m_szPanelOne.Height / (float)(m_szPanel.Height - SPLITTER_WIDTH);
				}
			}
			if (m_ptPanelTwo.Y == rcSplitterBounds.Bottom)
			{
				m_szPanel.Height -= iDelta;
				if (m_bHorizontal == bHorizontal)
				{
					m_szPanelTwo.Height -= iDelta;
					m_fCoefficient = 1f - (float)m_szPanelTwo.Height / (float)(m_szPanel.Height - SPLITTER_WIDTH);
				}
			}
			return;
		}
		if (m_ptPanelOne.X == rcSplitterBounds.Right)
		{
			m_szPanel.Width -= iDelta;
			if (m_bHorizontal == bHorizontal)
			{
				m_szPanelOne.Width -= iDelta;
				m_fCoefficient = (float)m_szPanelOne.Width / (float)(m_szPanel.Width - SPLITTER_WIDTH);
			}
		}
		if (m_ptPanelTwo.X == rcSplitterBounds.Right)
		{
			m_szPanel.Width -= iDelta;
			if (m_bHorizontal == bHorizontal)
			{
				m_szPanelTwo.Width -= iDelta;
				m_fCoefficient = 1f - (float)m_szPanelTwo.Width / (float)(m_szPanel.Width - SPLITTER_WIDTH);
			}
		}
	}

	private void ChangeBelongedTabHostsLeftOrTop(int iDelta, Rectangle rcSplitterBounds, bool bHorizontal)
	{
		object[] array = new object[2] { m_oComponentOne, m_oComponentTwo };
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i] is LayoutPanel)
			{
				LayoutPanel layoutPanel = array[i] as LayoutPanel;
				layoutPanel.ChangeBelongedTabHostsLeftOrTop(iDelta, rcSplitterBounds, bHorizontal);
			}
		}
		if (bHorizontal)
		{
			if (m_ptPanelTwo.Y + m_szPanelTwo.Height == rcSplitterBounds.Top)
			{
				m_szPanel.Height += iDelta;
				if (m_bHorizontal == bHorizontal)
				{
					m_szPanelTwo.Height += iDelta;
					m_fCoefficient = 1f - (float)m_szPanelTwo.Height / (float)(m_szPanel.Height - SPLITTER_WIDTH);
				}
			}
			if (m_ptPanelOne.Y + m_szPanelOne.Height == rcSplitterBounds.Top)
			{
				m_szPanel.Height += iDelta;
				if (m_bHorizontal == bHorizontal)
				{
					m_szPanelOne.Height += iDelta;
					m_fCoefficient = (float)m_szPanelOne.Height / (float)(m_szPanel.Height - SPLITTER_WIDTH);
				}
			}
			return;
		}
		if (m_ptPanelTwo.X + m_szPanelTwo.Width == rcSplitterBounds.Left)
		{
			m_szPanel.Width += iDelta;
			if (m_bHorizontal == bHorizontal)
			{
				m_szPanelTwo.Width += iDelta;
				m_fCoefficient = 1f - (float)m_szPanelTwo.Width / (float)(m_szPanel.Width - SPLITTER_WIDTH);
			}
		}
		if (m_ptPanelOne.X + m_szPanelOne.Width == rcSplitterBounds.Left)
		{
			m_szPanel.Width += iDelta;
			if (m_bHorizontal == bHorizontal)
			{
				m_szPanelOne.Width += iDelta;
				m_fCoefficient = (float)m_szPanelOne.Width / (float)(m_szPanel.Width - SPLITTER_WIDTH);
			}
		}
	}

	public LayoutPanel(SerializationInfo info, StreamingContext context)
	{
		m_sUniqueName = info.GetString("UniqueName");
		m_fCoefficient = info.GetSingle("Coefficient");
		m_bHorizontal = info.GetBoolean("Horizontal");
		SerializationInfoEnumerator enumerator = info.GetEnumerator();
		while (enumerator.MoveNext())
		{
			SerializationEntry current = enumerator.Current;
			if (current.Name == "TabHost1" + m_sUniqueName)
			{
				m_sTabHostOneName = info.GetString("TabHost1" + m_sUniqueName);
			}
			else if (current.Name == "TabHost2" + m_sUniqueName)
			{
				m_sTabHostTwoName = info.GetString("TabHost2" + m_sUniqueName);
			}
			else if (current.Name == "LayoutPanel1" + m_sUniqueName)
			{
				m_oComponentOne = info.GetValue("LayoutPanel1" + m_sUniqueName, typeof(LayoutPanel));
			}
			else if (current.Name == "LayoutPanel2" + m_sUniqueName)
			{
				m_oComponentTwo = info.GetValue("LayoutPanel2" + m_sUniqueName, typeof(LayoutPanel));
			}
		}
	}

	public void GetObjectData(SerializationInfo info, StreamingContext context)
	{
		if (m_oComponentOne is TabHost)
		{
			TabHost tabHost = m_oComponentOne as TabHost;
			info.AddValue("TabHost1" + m_sUniqueName, tabHost.Name);
		}
		else if (m_oComponentOne is LayoutPanel)
		{
			info.AddValue("LayoutPanel1" + m_sUniqueName, m_oComponentOne, typeof(LayoutPanel));
		}
		if (m_oComponentTwo is TabHost)
		{
			TabHost tabHost2 = m_oComponentTwo as TabHost;
			info.AddValue("TabHost2" + m_sUniqueName, tabHost2.Name);
		}
		else if (m_oComponentTwo is LayoutPanel)
		{
			info.AddValue("LayoutPanel2" + m_sUniqueName, m_oComponentTwo, typeof(LayoutPanel));
		}
		info.AddValue("Coefficient", m_fCoefficient);
		info.AddValue("UniqueName", m_sUniqueName);
		info.AddValue("Horizontal", m_bHorizontal);
	}
}
