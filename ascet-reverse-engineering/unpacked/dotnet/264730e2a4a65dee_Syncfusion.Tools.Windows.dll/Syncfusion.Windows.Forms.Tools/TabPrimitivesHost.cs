using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[TypeConverter(typeof(ExpandableObjectConverter))]
public class TabPrimitivesHost : Disposable
{
	private const int DEF_TOOLTIP_TIMER_INTERVAL = 100;

	private const int DEF_TOOLTIP_INITIAL_TIMER_INTERVAL = 500;

	private readonly Point DEF_TOOLTIP_OFFSET = new Point(13, 15);

	private TabControlAdv m_tabControl;

	private TabPrimitivesCollection m_tabPrimitives;

	private bool m_bVisible;

	private Point m_ptLocation = Point.Empty;

	private Size m_szSize = Size.Empty;

	private bool m_bNeedLayout = true;

	private TabPrimitiveHostAlignment m_alignment = TabPrimitiveHostAlignment.Near;

	private TabPrimitive m_pushedPrimitive;

	private PrimitiveDropDownPopupMenu m_dropDownPopupMenu;

	private Timer m_toolTipTimer;

	private ToolTipAdv m_toolTip;

	private Point m_mousePosition = Point.Empty;

	private int m_currentTabPrimitive = -1;

	private bool m_bShowToolTipFirstTime = true;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	[Description("Collection of primitives.")]
	public TabPrimitivesCollection TabPrimitives => m_tabPrimitives;

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	public TabControlAdv TabControl => m_tabControl;

	[Browsable(false)]
	public Rectangle Bounds => new Rectangle(m_ptLocation, m_szSize);

	[Description("Gets or sets control alignment.")]
	public TabPrimitiveHostAlignment Alignment
	{
		get
		{
			return m_alignment;
		}
		set
		{
			if (m_alignment != value)
			{
				m_alignment = value;
				RefreshTabControl();
			}
		}
	}

	[DefaultValue(false)]
	[Description("Gets or sets control visibility.")]
	public bool Visible
	{
		get
		{
			return m_bVisible;
		}
		set
		{
			if (m_bVisible != value)
			{
				m_bVisible = value;
				RefreshTabControl();
			}
		}
	}

	[Browsable(false)]
	public Size Size
	{
		get
		{
			Layout();
			return m_szSize;
		}
	}

	[Browsable(false)]
	public Point Location
	{
		get
		{
			Layout();
			return m_ptLocation;
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[DefaultValue(true)]
	public bool NeedLayout
	{
		get
		{
			return m_bNeedLayout;
		}
		set
		{
			if (m_bNeedLayout != value)
			{
				m_bNeedLayout = value;
			}
		}
	}

	protected string ToolTipText
	{
		get
		{
			string result = string.Empty;
			if (m_currentTabPrimitive != -1)
			{
				result = TabPrimitives[m_currentTabPrimitive].ToolTip;
			}
			return result;
		}
	}

	protected bool ShouldShowToolTips
	{
		get
		{
			bool result = false;
			if (m_tabControl != null)
			{
				result = m_tabControl.ShowToolTips && !m_tabControl.IsDesignMode;
			}
			return result;
		}
	}

	internal bool NeedRotate
	{
		get
		{
			if (m_tabControl.Alignment != TabAlignment.Left)
			{
				return m_tabControl.Alignment == TabAlignment.Right;
			}
			return true;
		}
	}

	protected virtual bool ShouldSerializeAlignment()
	{
		return Alignment != TabPrimitiveHostAlignment.Near;
	}

	public virtual void ResetAlignment()
	{
		Alignment = TabPrimitiveHostAlignment.Near;
	}

	internal TabPrimitivesHost(TabControlAdv tabControl)
	{
		m_tabControl = tabControl;
		m_tabPrimitives = new TabPrimitivesCollection(this);
		m_tabPrimitives.CollectionChanged += M_TabPrimitives_CollectionChanged;
	}

	internal void RefreshTabControl()
	{
		m_tabControl.SetNeedLayout(value: true);
		m_tabControl.Invalidate();
	}

	protected virtual void CalculateSize()
	{
		int num = 0;
		int num2 = 0;
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			if (tabPrimitive.Visible)
			{
				num += tabPrimitive.Size.Width + tabPrimitive.Indent;
				if (tabPrimitive.Size.Height > num2)
				{
					num2 = tabPrimitive.Size.Height;
				}
			}
		}
		m_szSize = (NeedRotate ? new Size(num2, num) : new Size(num, num2));
	}

	protected virtual void CalculatePrimitivesLocation()
	{
		if (m_tabPrimitives.Count <= 0)
		{
			return;
		}
		int num = m_ptLocation.X;
		int num2 = m_ptLocation.Y;
		if (!TabControl.IsMirrored)
		{
			foreach (TabPrimitive tabPrimitive3 in m_tabPrimitives)
			{
				if (tabPrimitive3.Visible)
				{
					if (NeedRotate)
					{
						tabPrimitive3.SetLocation(new Point(num, num2));
						num2 += tabPrimitive3.Size.Height + tabPrimitive3.Indent;
					}
					else
					{
						tabPrimitive3.SetLocation(new Point(num, num2));
						num += tabPrimitive3.Size.Width + tabPrimitive3.Indent;
					}
				}
			}
			return;
		}
		for (int num3 = m_tabPrimitives.Count - 1; num3 >= 0; num3--)
		{
			TabPrimitive tabPrimitive2 = m_tabPrimitives[num3];
			if (tabPrimitive2.Visible)
			{
				if (NeedRotate)
				{
					tabPrimitive2.SetLocation(new Point(num, num2));
					num2 += tabPrimitive2.Size.Height + tabPrimitive2.Indent;
				}
				else
				{
					tabPrimitive2.SetLocation(new Point(num, num2));
					num += tabPrimitive2.Size.Width + tabPrimitive2.Indent;
				}
			}
		}
	}

	public virtual void Layout()
	{
		if (m_bNeedLayout)
		{
			CalculateSize();
			CalculatePrimitivesLocation();
			m_bNeedLayout = false;
		}
	}

	public virtual void RefreshPrimitiveEnabled()
	{
		if (m_tabControl.TabCount <= 0)
		{
			return;
		}
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			switch (tabPrimitive.TabPrimitiveType)
			{
			case TabPrimitiveType.FirstTab:
			case TabPrimitiveType.PreviousPage:
			case TabPrimitiveType.PreviousTab:
			{
				bool enabled2 = false;
				for (int num = m_tabControl.SelectedIndex - 1; num >= 0; num--)
				{
					if (m_tabControl.TabPages[num].TabVisible)
					{
						enabled2 = true;
					}
				}
				tabPrimitive.Enabled = enabled2;
				break;
			}
			case TabPrimitiveType.LastTab:
			case TabPrimitiveType.NextPage:
			case TabPrimitiveType.NextTab:
			{
				bool enabled = false;
				for (int i = m_tabControl.SelectedIndex + 1; i < m_tabControl.TabPages.Count; i++)
				{
					if (m_tabControl.TabPages[i].TabVisible)
					{
						enabled = true;
					}
				}
				tabPrimitive.Enabled = enabled;
				break;
			}
			}
		}
	}

	private void InitTimer()
	{
		if (m_toolTipTimer == null)
		{
			m_toolTipTimer = new Timer();
			m_toolTipTimer.Tick += OnToolTipTimerTick;
		}
	}

	private void InitToolTip()
	{
		if (m_toolTip == null && m_tabControl != null)
		{
			m_toolTip = new ToolTipAdv(m_tabControl);
			m_toolTip.BackColor = SystemColors.Info;
			m_toolTip.BorderStyle = BorderStyle.FixedSingle;
		}
	}

	private void OnToolTipTimerTick(object sender, EventArgs e)
	{
		InitToolTip();
		ShowToolTip(ToolTipText);
		m_toolTipTimer.Stop();
	}

	private bool IsValidToolTipPosition(Point pos)
	{
		bool result = false;
		Point pt = m_tabControl.PointToClient(pos);
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			if (tabPrimitive.Visible && tabPrimitive.Bounds.Contains(pt))
			{
				result = true;
			}
		}
		return result;
	}

	protected void ShowToolTip(string text)
	{
		if (m_toolTip == null)
		{
			return;
		}
		if (text == null || text == string.Empty || !ShouldShowToolTips || (m_dropDownPopupMenu != null && m_dropDownPopupMenu.IsShowing()))
		{
			if (m_toolTip.Visible)
			{
				m_toolTip.HidePopup();
			}
			return;
		}
		Point mousePosition = Control.MousePosition;
		if (IsValidToolTipPosition(mousePosition))
		{
			mousePosition.Offset(DEF_TOOLTIP_OFFSET.X, DEF_TOOLTIP_OFFSET.Y);
			m_toolTip.Text = text;
			m_toolTip.ShowPopup(mousePosition);
		}
	}

	protected void StartShowingToolTip(int interval)
	{
		if (interval < 0)
		{
			throw new ArgumentException("interval");
		}
		if (m_toolTipTimer == null)
		{
			InitTimer();
		}
		if (m_toolTipTimer != null)
		{
			m_toolTipTimer.Interval = interval;
			m_toolTipTimer.Start();
		}
	}

	protected void StopShowingToolTip()
	{
		if (m_toolTipTimer != null)
		{
			ShowToolTip(null);
			m_bShowToolTipFirstTime = true;
			m_toolTipTimer.Interval = 500;
			m_toolTipTimer.Stop();
		}
	}

	internal void SetLocation(Point location)
	{
		m_ptLocation = location;
		m_bNeedLayout = true;
	}

	internal void SetLocation(int x, int y)
	{
		SetLocation(new Point(x, y));
	}

	internal void SetFullModeForAllDropDownPrimitives(bool isFullMode)
	{
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			tabPrimitive.SetIsFullMode(isFullMode);
		}
	}

	internal void HandledOnPaint(Graphics g)
	{
		if (!Visible)
		{
			return;
		}
		Layout();
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			tabPrimitive.Draw(g);
		}
	}

	internal void HandledMouseMove(MouseEventArgs e)
	{
		int num = -1;
		if (Visible && e.Button == MouseButtons.None)
		{
			m_mousePosition = new Point(e.X, e.Y);
			foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
			{
				if (tabPrimitive.Visible)
				{
					bool flag = tabPrimitive.Bounds.Contains(m_mousePosition);
					if (flag)
					{
						num = m_tabPrimitives.IndexOf(tabPrimitive);
					}
					if (tabPrimitive.State == ButtonState.Normal && flag)
					{
						tabPrimitive.SetState(ButtonState.Flat);
						m_tabControl.Invalidate(tabPrimitive.Bounds);
					}
					if (tabPrimitive.State == ButtonState.Flat && !flag)
					{
						tabPrimitive.SetState(ButtonState.Normal);
						m_tabControl.Invalidate(tabPrimitive.Bounds);
					}
				}
			}
		}
		if (num != -1)
		{
			if (num != m_currentTabPrimitive && ShouldShowToolTips && !m_bShowToolTipFirstTime)
			{
				ShowToolTip(null);
				StartShowingToolTip(100);
			}
		}
		else
		{
			ShowToolTip(null);
		}
		m_currentTabPrimitive = num;
	}

	internal void HandledMouseDown(MouseEventArgs e)
	{
		if (!Visible || m_pushedPrimitive != null)
		{
			return;
		}
		Point pt = new Point(e.X, e.Y);
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			if (tabPrimitive.Visible && tabPrimitive.Enabled && tabPrimitive.Bounds.Contains(pt))
			{
				tabPrimitive.SetState(ButtonState.Pushed);
				m_pushedPrimitive = tabPrimitive;
				m_tabControl.Invalidate(tabPrimitive.Bounds);
				break;
			}
		}
	}

	internal void HandledMouseUp(MouseEventArgs e)
	{
		if (Visible && m_pushedPrimitive != null && m_pushedPrimitive.Enabled)
		{
			Point pt = new Point(e.X, e.Y);
			bool flag = m_pushedPrimitive.Bounds.Contains(pt);
			if (!flag || m_pushedPrimitive.TabPrimitiveType != TabPrimitiveType.DropDown)
			{
				m_pushedPrimitive.SetState(flag ? ButtonState.Flat : ButtonState.Normal);
				m_tabControl.Invalidate(m_pushedPrimitive.Bounds);
			}
			if (flag)
			{
				OnButtonClick(m_pushedPrimitive);
			}
			m_pushedPrimitive = null;
		}
	}

	internal void HandledMouseLeave()
	{
		if (!Visible)
		{
			return;
		}
		foreach (TabPrimitive tabPrimitive in m_tabPrimitives)
		{
			if (tabPrimitive.State == ButtonState.Flat)
			{
				tabPrimitive.SetState(ButtonState.Normal);
				m_tabControl.Invalidate(tabPrimitive.Bounds);
			}
		}
		StopShowingToolTip();
	}

	internal void HandledMouseHover(EventArgs e)
	{
		if (m_tabControl != null && m_tabControl.ShowToolTips && m_bShowToolTipFirstTime)
		{
			m_bShowToolTipFirstTime = false;
			StartShowingToolTip(500);
		}
	}

	protected virtual void OnButtonClick(TabPrimitive primitive)
	{
		TabPrimitiveClickEventArgs e = new TabPrimitiveClickEventArgs(primitive);
		m_tabControl.OnTabPrimitiveClick(e);
		if (e.Cancel)
		{
			return;
		}
		bool flag = m_tabControl.RightToLeft == RightToLeft.Yes;
		switch (primitive.TabPrimitiveType)
		{
		case TabPrimitiveType.NextTab:
		{
			if (m_tabControl.SelectedIndex >= m_tabControl.TabCount - 1)
			{
				break;
			}
			for (int i = m_tabControl.SelectedIndex + 1; i < m_tabControl.TabCount; i++)
			{
				if (m_tabControl.IsDesignMode || m_tabControl.TabPages[i].TabVisible)
				{
					m_tabControl.SelectedIndex = i;
					m_tabControl.SelectedTab.SetSelectedAtDesignTime();
					break;
				}
			}
			break;
		}
		case TabPrimitiveType.PreviousTab:
		{
			if (m_tabControl.SelectedIndex <= 0)
			{
				break;
			}
			for (int num2 = m_tabControl.SelectedIndex - 1; num2 >= 0; num2--)
			{
				if (m_tabControl.IsDesignMode || m_tabControl.TabPages[num2].TabVisible)
				{
					m_tabControl.SelectedIndex = num2;
					m_tabControl.SelectedTab.SetSelectedAtDesignTime();
					break;
				}
			}
			break;
		}
		case TabPrimitiveType.FirstTab:
		{
			if (m_tabControl.SelectedIndex <= 0)
			{
				break;
			}
			for (int l = 0; l < m_tabControl.TabCount; l++)
			{
				if (m_tabControl.IsDesignMode || m_tabControl.TabPages[l].TabVisible)
				{
					m_tabControl.SelectedIndex = l;
					m_tabControl.SelectedTab.SetSelectedAtDesignTime();
					break;
				}
			}
			break;
		}
		case TabPrimitiveType.LastTab:
		{
			if (m_tabControl.SelectedIndex >= m_tabControl.TabCount - 1)
			{
				break;
			}
			for (int num = m_tabControl.TabPages.Count - 1; num >= 0; num--)
			{
				if (m_tabControl.IsDesignMode || m_tabControl.TabPages[num].TabVisible)
				{
					m_tabControl.SelectedIndex = num;
					m_tabControl.SelectedTab.SetSelectedAtDesignTime();
					break;
				}
			}
			break;
		}
		case TabPrimitiveType.NextPage:
			if ((flag ? m_tabControl.Renderer.CanScrollLeft : m_tabControl.Renderer.CanScrollRight) && m_tabControl.SizeMode != TabSizeMode.ShrinkToFit)
			{
				if (!flag)
				{
					m_tabControl.Renderer.Scroll(ScrollIncrement.Page, ScrollDirection.Right);
					for (int k = m_tabControl.SelectedIndex; k < m_tabControl.Renderer.Renderers.Count; k++)
					{
						TabRendererBase tabRendererBase3 = m_tabControl.Renderer.Renderers[k] as TabRendererBase;
						if (tabRendererBase3.Bounds.Left > 0f && (m_tabControl.IsDesignMode || m_tabControl.TabPages[k].TabVisible))
						{
							m_tabControl.SelectedIndex = k;
							m_tabControl.SelectedTab.SetSelectedAtDesignTime();
							break;
						}
					}
					break;
				}
				m_tabControl.Renderer.Scroll(ScrollIncrement.Page, ScrollDirection.Left);
				for (int num4 = m_tabControl.Renderer.Renderers.Count - 1; num4 >= 0; num4--)
				{
					TabRendererBase tabRendererBase4 = m_tabControl.Renderer.Renderers[num4] as TabRendererBase;
					if (tabRendererBase4.Bounds.Left > 0f && (m_tabControl.IsDesignMode || m_tabControl.TabPages[num4].TabVisible))
					{
						m_tabControl.SelectedIndex = num4;
						m_tabControl.SelectedTab.SetSelectedAtDesignTime();
						break;
					}
				}
			}
			else if (m_tabControl.SelectedIndex < m_tabControl.TabCount - 1 && (m_tabControl.IsDesignMode || m_tabControl.TabPages[m_tabControl.TabCount - 1].TabVisible))
			{
				m_tabControl.SelectedIndex = m_tabControl.TabCount - 1;
				m_tabControl.SelectedTab.SetSelectedAtDesignTime();
			}
			break;
		case TabPrimitiveType.PreviousPage:
			if ((flag ? m_tabControl.Renderer.CanScrollRight : m_tabControl.Renderer.CanScrollLeft) && m_tabControl.SizeMode != TabSizeMode.ShrinkToFit)
			{
				if (!flag)
				{
					m_tabControl.Renderer.Scroll(ScrollIncrement.Page, ScrollDirection.Left);
					for (int j = 0; j < m_tabControl.Renderer.Renderers.Count; j++)
					{
						TabRendererBase tabRendererBase = m_tabControl.Renderer.Renderers[j] as TabRendererBase;
						if (tabRendererBase.Bounds.Left > 0f && (m_tabControl.IsDesignMode || m_tabControl.TabPages[j].TabVisible))
						{
							m_tabControl.SelectedIndex = j;
							m_tabControl.SelectedTab.SetSelectedAtDesignTime();
							break;
						}
					}
					break;
				}
				m_tabControl.Renderer.Scroll(ScrollIncrement.Page, ScrollDirection.Right);
				for (int num3 = m_tabControl.Renderer.Renderers.Count - 1; num3 >= 0; num3--)
				{
					TabRendererBase tabRendererBase2 = m_tabControl.Renderer.Renderers[num3] as TabRendererBase;
					if (tabRendererBase2.Bounds.Left > 0f && (m_tabControl.IsDesignMode || m_tabControl.TabPages[num3].TabVisible))
					{
						m_tabControl.SelectedIndex = num3;
						m_tabControl.SelectedTab.SetSelectedAtDesignTime();
						break;
					}
				}
			}
			else if (m_tabControl.SelectedIndex > 0 && (m_tabControl.IsDesignMode || m_tabControl.TabPages[0].TabVisible))
			{
				m_tabControl.SelectedIndex = 0;
				m_tabControl.SelectedTab.SetSelectedAtDesignTime();
			}
			break;
		case TabPrimitiveType.Close:
			if (m_tabControl.SelectedTab != null)
			{
				Form form = m_tabControl.SelectedTab.Tag as Form;
				m_tabControl.SelectedTab.Close();
				form?.Close();
			}
			break;
		case TabPrimitiveType.DropDown:
		{
			if (m_dropDownPopupMenu == null)
			{
				InitDropDownPopupMenu();
			}
			if (m_dropDownPopupMenu.IsShowing())
			{
				m_dropDownPopupMenu.Hide();
				break;
			}
			FillItemsDropDownPopupMenu();
			Point location = primitive.Location;
			if (TabControl.Alignment == TabAlignment.Left || TabControl.Alignment == TabAlignment.Right)
			{
				location.X = Location.X + Size.Width;
				if (TabControl.IsMirrored)
				{
					location.Y += primitive.Size.Height;
				}
			}
			else
			{
				location.Y += Size.Height;
				if (TabControl.IsMirrored)
				{
					location.X += primitive.Size.Width;
				}
			}
			m_dropDownPopupMenu.Show(TabControl, location);
			break;
		}
		}
	}

	private void InitDropDownPopupMenu()
	{
		m_dropDownPopupMenu = new PrimitiveDropDownPopupMenu();
		m_dropDownPopupMenu.TabControlAdv = TabControl;
		m_dropDownPopupMenu.ParentBarItem = new ParentBarItem();
		m_dropDownPopupMenu.ParentBarItem.PopupClosed += PopupClosed;
	}

	private void FillItemsDropDownPopupMenu()
	{
		ParentBarItem parentBarItem = m_dropDownPopupMenu.ParentBarItem;
		foreach (BarItem item in parentBarItem.Items)
		{
			item.Click -= BarItem_Click;
		}
		parentBarItem.Items.Clear();
		foreach (TabPageAdv tabPage in TabControl.TabPages)
		{
			BarItem barItem2 = new BarItem();
			barItem2.Text = tabPage.Text;
			barItem2.ImageList = TabControl.ImageList;
			barItem2.ImageIndex = tabPage.ImageIndex;
			barItem2.Enabled = tabPage.Enabled;
			barItem2.Tag = tabPage;
			barItem2.Click += BarItem_Click;
			parentBarItem.Items.Add(barItem2);
		}
		m_dropDownPopupMenu.ActiveBounds = m_pushedPrimitive.Bounds;
	}

	private void M_TabPrimitives_CollectionChanged(object sender, EventArgs e)
	{
		RefreshTabControl();
	}

	private void PopupClosed(object sender, EventArgs e)
	{
		if (m_pushedPrimitive != null && m_pushedPrimitive.State == ButtonState.Pushed)
		{
			Point pt = TabControl.PointToClient(Control.MousePosition);
			m_pushedPrimitive.SetState(m_pushedPrimitive.Bounds.Contains(pt) ? ButtonState.Flat : ButtonState.Normal);
			m_tabControl.Invalidate(m_pushedPrimitive.Bounds);
		}
	}

	private void BarItem_Click(object sender, EventArgs e)
	{
		if (sender is BarItem { Tag: TabPageAdv tag })
		{
			TabControl.SelectedTab = tag;
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (m_toolTip != null)
			{
				m_toolTip.Dispose();
				m_toolTip = null;
			}
			if (m_tabPrimitives != null)
			{
				m_tabPrimitives.Dispose();
				m_tabPrimitives = null;
			}
		}
		base.Dispose(disposing);
	}
}
