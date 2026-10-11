using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools;

public abstract class TabPanelRenderer : ITabPanelRenderer, ITabPanelDefaultProperties
{
	private const int DEF_TOOLTIP_TIMER_INTERVAL = 100;

	private const int DEF_TOOLTIP_INITIAL_TIMER_INTERVAL = 500;

	[DocumentationExclude]
	protected bool bringSelectedTabToFront;

	private bool needLayout;

	private bool m_bForceDrawImage;

	[DocumentationExclude]
	protected RectangleF tdbounds;

	private Hashtable m_toolTipHash = new Hashtable();

	protected ArrayList tabRenderers;

	[DocumentationExclude]
	protected int currentHotTrackTab = -1;

	[DocumentationExclude]
	protected int currentTooltipTab = -1;

	protected ITabControl parent;

	private ITabPanelData tabPanelData;

	private static readonly Point DEF_TOOLTIP_OFFSET = new Point(13, 15);

	private bool m_bisTabSelecting;

	private bool m_bShouldShowToolTipFirstTime = true;

	private Timer m_toolTipTimer;

	private ToolTipAdv m_toolTip;

	private SuperToolTip m_superToolTip;

	private int selIndexOnDragStart = -1;

	private bool internalDragging;

	private RectangleF dragIgnoreRectTransformed = RectangleF.Empty;

	private Point ptScreenMouseDown = Point.Empty;

	[DocumentationExclude]
	public ArrayList Renderers => tabRenderers;

	public bool ForceDrawImage
	{
		get
		{
			return m_bForceDrawImage;
		}
		set
		{
			if (m_bForceDrawImage != value)
			{
				m_bForceDrawImage = value;
			}
		}
	}

	public bool NeedLayout => needLayout;

	public RectangleF Bounds
	{
		get
		{
			return ApplyDrawingTransform(tdbounds, apply: false);
		}
		set
		{
			tdbounds = ApplyDrawingTransform(value, apply: true);
			SetNeedLayout(needLayout: true);
		}
	}

	public virtual bool ScrollingSupported => false;

	public virtual bool CanScrollLeft => false;

	public virtual bool CanScrollRight => false;

	[DocumentationExclude]
	public virtual bool IsMirrored
	{
		get
		{
			if (!(parent is TabControlAdv tabControlAdv))
			{
				return false;
			}
			return tabControlAdv.IsMirrored;
		}
	}

	public bool NeedMouseMove
	{
		get
		{
			bool flag = TabPanelData.HotTrack || TabPanelData.ShowToolTips;
			if (!flag && TabPanelData is ITabPanelData2 tabPanelData)
			{
				flag = tabPanelData.ShowSuperToolTips;
			}
			return flag;
		}
	}

	public ITabPanelData TabPanelData
	{
		get
		{
			return tabPanelData;
		}
		set
		{
			if (tabPanelData != value)
			{
				if (tabPanelData != null)
				{
					Detach();
				}
				tabPanelData = value;
				if (tabPanelData != null)
				{
					tabPanelData.PropertyChanged += TabPanel_PropertyChanged;
					tabPanelData.TabsData.CollectionAffected += Tabs_CollectionChanged;
					OnTabsCollectionChanged();
				}
			}
		}
	}

	public virtual Color TabPanelBackColor
	{
		get
		{
			Color color = TabPanelData.BackColor;
			if (color == Color.Empty)
			{
				color = DefaultTabPanelBackgroundColor();
			}
			return color;
		}
	}

	protected string ToolTipText
	{
		get
		{
			string result = string.Empty;
			if (TabPanelData != null)
			{
				if (TabPanelData.ShowToolTips && tabPanelData.TabsData != null && currentTooltipTab >= 0 && currentTooltipTab < TabPanelData.TabsData.Count)
				{
					if (TabPanelData.TabsData[currentTooltipTab] is ITabData { ToolTip: not null } tabData)
					{
						result = tabData.ToolTip;
					}
				}
				else if (TabPanelData.SizeMode == TabSizeMode.ShrinkToFit && currentTooltipTab >= 0 && currentTooltipTab < tabRenderers.Count && tabRenderers[currentTooltipTab] is ITabRenderer tabRenderer && tabRenderer.IsTextShrunk() && tabRenderer.TabData != null)
				{
					result = tabRenderer.TabData.ToolTip;
				}
			}
			return result;
		}
	}

	protected ToolTipInfo SuperToolTip
	{
		get
		{
			ToolTipInfo result = null;
			if (TabPanelData != null)
			{
				if (TabPanelData is ITabPanelData2 { ShowSuperToolTips: not false } && this.tabPanelData.TabsData != null && currentTooltipTab >= 0 && currentTooltipTab < TabPanelData.TabsData.Count)
				{
					if (TabPanelData.TabsData[currentTooltipTab] is ITabData2 { ToolTip: not null } tabData)
					{
						result = tabData.SuperTooltip;
					}
				}
				else if (TabPanelData.SizeMode == TabSizeMode.ShrinkToFit && currentTooltipTab >= 0 && currentTooltipTab < tabRenderers.Count && tabRenderers[currentTooltipTab] is ITabRenderer tabRenderer && tabRenderer.IsTextShrunk() && tabRenderer.TabData != null && tabRenderer.TabData is ITabData2 tabData2)
				{
					result = tabData2.SuperTooltip;
				}
			}
			return result;
		}
	}

	protected bool ShouldShowToolTips
	{
		get
		{
			bool result = false;
			if (TabPanelData != null)
			{
				result = TabPanelData.ShowToolTips || TabPanelData.SizeMode == TabSizeMode.ShrinkToFit;
				if ((parent != null && parent.IsDesignMode()) || m_bisTabSelecting)
				{
					result = false;
				}
			}
			return result;
		}
	}

	protected bool ShouldShowSuperToolTips
	{
		get
		{
			bool result = false;
			if (TabPanelData is ITabPanelData2 tabPanelData)
			{
				result = tabPanelData.ShowSuperToolTips || TabPanelData.SizeMode == TabSizeMode.ShrinkToFit;
				if ((parent != null && parent.IsDesignMode()) || m_bisTabSelecting)
				{
					result = false;
				}
			}
			return result;
		}
	}

	protected int SelectedIndexOnDragStart => selIndexOnDragStart;

	protected RectangleF DragIgnoreRect => dragIgnoreRectTransformed;

	protected virtual bool Moving
	{
		get
		{
			return internalDragging;
		}
		set
		{
			if (internalDragging != value)
			{
				internalDragging = value;
				if (!internalDragging)
				{
					parent.GetControl().Capture = false;
					selIndexOnDragStart = -1;
					dragIgnoreRectTransformed = RectangleF.Empty;
				}
				else
				{
					parent.GetControl().Capture = true;
					selIndexOnDragStart = TabPanelData.SelectedIndex;
				}
			}
		}
	}

	public abstract void GetPreferredSize(Graphics g, ref SizeF preferredSize);

	public abstract void ComputeTabPositions(Graphics g);

	public virtual Rectangle GetTabBounds(int index)
	{
		if (index < 0 || index >= tabRenderers.Count)
		{
			return Rectangle.Empty;
		}
		RectangleF currentBounds = ((ITabRenderer)tabRenderers[index]).GetCurrentBounds();
		return Rectangle.Round(ApplyDrawingTransform(currentBounds, apply: false));
	}

	public bool DrawItemCallback(DrawTabEventArgs eventArgs)
	{
		return parent.OnDrawItem(eventArgs);
	}

	protected void SetNeedLayout(bool needLayout)
	{
		this.needLayout = needLayout;
	}

	public virtual void Layout(Graphics g, bool fromPaint)
	{
		if (NeedLayout)
		{
			SetNeedLayout(needLayout: false);
		}
		ComputeTabPositions(g);
		ValidateScrollOffset(bringSelectedTabToFront, !fromPaint);
		bringSelectedTabToFront = false;
	}

	[DocumentationExclude]
	protected bool GetIsMirroredForVerticalAlignment()
	{
		bool result = false;
		if (parent is TabControlAdv tabControlAdv)
		{
			result = tabControlAdv.GetIsMirroredForVerticalAlignment();
		}
		return result;
	}

	public virtual Color DefaultActiveTabColor()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultActiveTabColor(TabPanelData, parent);
	}

	public virtual Color DefaultInactiveTabColor()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultInactiveTabColor(TabPanelData, parent);
	}

	public virtual Color DefaultTabForeColor()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultTabForeColor(TabPanelData, parent);
	}

	public virtual Color DefaultTabPanelBackgroundColor()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultTabPanelBackgroundColor(TabPanelData, parent);
	}

	public virtual Color DefaultFixedSingleBorderColor()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultFixedSingleBorderColor(TabPanelData, parent);
	}

	public virtual Font DefaultTabPanelFont()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultTabPanelFont(TabPanelData, parent);
	}

	public virtual Font DefaultActiveTabFont()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultActiveTabFont(TabPanelData, parent);
	}

	public virtual Font DefaultInactiveTabFont()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.DefaultInactiveTabFont(TabPanelData, parent);
	}

	[DocumentationExclude]
	protected internal virtual bool ShouldDrawVisible(ITabData tabData)
	{
		if (!parent.IsDesignMode())
		{
			return tabData.TabVisible;
		}
		return true;
	}

	[DocumentationExclude]
	protected int GetHiddenTabsCount()
	{
		int num = 0;
		foreach (ITabRenderer tabRenderer in tabRenderers)
		{
			if (!ShouldDrawVisible(tabRenderer.TabData))
			{
				num++;
			}
		}
		return num;
	}

	public virtual void Scroll(ScrollIncrement increment, ScrollDirection direction)
	{
	}

	public virtual void ValidateScrollOffset(bool makeSelectedTabVisible, bool invalidate)
	{
	}

	public virtual RectangleF ApplyDrawingTransform(RectangleF rect, bool apply)
	{
		TabAlignment alignment = TabPanelData.Alignment;
		Graphics graphics = parent.GetGraphics();
		return TabUtils.ApplyTransform(graphics, alignment, rect, apply);
	}

	public TabPanelRenderer()
	{
		tabRenderers = new ArrayList();
	}

	public virtual void Detach()
	{
		if (TabPanelData != null)
		{
			TabPanelData.PropertyChanged -= TabPanel_PropertyChanged;
			TabPanelData.TabsData.CollectionAffected -= Tabs_CollectionChanged;
			foreach (ITabData tabsDatum in TabPanelData.TabsData)
			{
				tabsDatum.BoundsAffected -= Tab_BoundsAffected;
				tabsDatum.PropertyChanged -= Tab_PropertyChanged;
			}
		}
		if (m_toolTip != null)
		{
			m_toolTip.Dispose();
			m_toolTip = null;
		}
		RemoveTabRenderers();
	}

	protected ITabRenderer CreateNewRenderer(string tabStyle, ITabData tabData)
	{
		ITabRenderer tabRenderer = TabRendererFactory.CreateNewTabRenderer(tabStyle, parent, this);
		tabRenderer.ForceDrawImage = ForceDrawImage;
		if (tabRenderer != null)
		{
			tabRenderer.TabData = tabData;
		}
		return tabRenderer;
	}

	private void Tabs_CollectionChanged(object sender, EventArgs e)
	{
		OnTabsCollectionChanged();
	}

	protected virtual void RemoveTabRenderers()
	{
		for (int num = tabRenderers.Count - 1; num >= 0; num--)
		{
			ITabRenderer tabRenderer = (ITabRenderer)tabRenderers[num];
			if (tabRenderer != null)
			{
				if (TabPanelData.TabsData.IndexOf(tabRenderer.TabData) == -1)
				{
					tabRenderers.RemoveAt(num);
				}
				tabRenderer.Dispose();
			}
		}
	}

	protected virtual void OnTabsCollectionChanged()
	{
		ResetHotTracking();
		currentTooltipTab = -1;
		int num = 0;
		TabDataCollection tabsData = TabPanelData.TabsData;
		if (tabsData.Count < tabRenderers.Count)
		{
			RemoveTabRenderers();
		}
		foreach (ITabData item in tabsData)
		{
			bool flag = false;
			if (tabRenderers.Count > num)
			{
				ITabData tabData2 = ((ITabRenderer)tabRenderers[num]).TabData;
				if (tabData2 != item)
				{
					tabData2.BoundsAffected -= Tab_BoundsAffected;
					tabData2.PropertyChanged -= Tab_PropertyChanged;
					((ITabRenderer)tabRenderers[num]).TabData = item;
					((ITabRenderer)tabRenderers[num]).Visible = ShouldDrawVisible(item);
					flag = true;
				}
			}
			else
			{
				ITabRenderer tabRenderer = CreateNewRenderer(TabPanelData.TabStyle, item);
				if (tabRenderer != null)
				{
					tabRenderers.Insert(num, tabRenderer);
					TabRendererBase tabRendererBase = tabRenderer as TabRendererBase;
					TabControlAdv tabControlAdv = parent as TabControlAdv;
					if (tabRendererBase != null && tabControlAdv != null)
					{
						tabRendererBase.ShowCloseButton = tabControlAdv.ShouldDrawCloseButton(num);
					}
					tabRenderer.DrawItemCallback = DrawItemCallback;
				}
				flag = true;
			}
			if (flag)
			{
				item.BoundsAffected += Tab_BoundsAffected;
				item.PropertyChanged += Tab_PropertyChanged;
			}
			num++;
		}
		OnBoundsAffected();
	}

	public virtual float GetLargestHeight(Graphics g)
	{
		float num = 0f;
		if ((TabPanelData.Alignment == TabAlignment.Left || TabPanelData.Alignment == TabAlignment.Right) && TabPanelData.RotateTextWhenVertical)
		{
			float num2 = 0f;
			foreach (ITabRenderer tabRenderer3 in tabRenderers)
			{
				if (ShouldDrawVisible(tabRenderer3.TabData))
				{
					float height = tabRenderer3.GetPreferredSize(g).Height;
					if (num2 < height)
					{
						num2 = height;
					}
				}
			}
			num = num2;
		}
		else if (tabRenderers.Count > 0)
		{
			float num3 = 0f;
			foreach (ITabRenderer tabRenderer4 in tabRenderers)
			{
				if (num3 < tabRenderer4.GetPreferredSize(g).Height)
				{
					num3 = tabRenderer4.GetPreferredSize(g).Height;
				}
			}
			num += num3;
		}
		return num;
	}

	protected virtual void OnBoundsAffected()
	{
		SetNeedLayout(needLayout: true);
		parent.OnTabPanelBoundsAffected();
	}

	protected virtual void TabPanel_PropertyChanged(ITabPanelData sender, TabPanelPropertyChangedEventArgs e)
	{
		switch (e.PropertyName)
		{
		case "SelectedIndex":
			OnSelectionChanged((int)e.OldValue, (int)e.NewValue);
			break;
		case "InactiveTabColor":
		case "ActiveTabColor":
		case "TextAlignment":
		case "TextLineAlignment":
		case "BackColor":
		case "RotateText180WhenLeftAligned":
		case "DisableInactivePageImage":
		case "LevelTextAndImage":
		case "ImageOffset":
			if (parent.GetControl().IsHandleCreated && parent.GetControl().Visible)
			{
				parent.OnRepaint(Bounds);
			}
			break;
		case "FixedSingleBorderColor":
			if (parent.GetControl().IsHandleCreated && parent.GetControl().Visible)
			{
				parent.GetControl().Invalidate();
			}
			break;
		case "TabStyle":
			OnTabStyleChanged();
			break;
		case "ActiveTabFont":
		case "Font":
		case "ImageAlignmentR":
		case "AdjustTopGap":
		case "RotateTextWhenVertical":
		case "Padding":
		case "SizeMode":
		case "TabSize":
		case "TabGap":
		case "Alignment":
		case "VerticalAlignment":
		case "Multiline":
		case "ImageList":
		case "BorderStyle":
			OnBoundsAffected();
			break;
		}
	}

	protected internal virtual void OnTabStyleChanged()
	{
		RemoveTabRenderers();
		tabRenderers.Clear();
		OnTabsCollectionChanged();
		OnBoundsAffected();
	}

	protected virtual void OnSelectionChanged(int previousIndex, int currentIndex)
	{
		InvalidateTabs(currentIndex, previousIndex);
	}

	protected virtual void InvalidateTabs(int tab1, int tab2)
	{
		if (parent.GetControl().Visible && parent.GetControl().IsHandleCreated)
		{
			RectangleF rectangleF = RectangleF.Empty;
			RectangleF rectangleF2 = RectangleF.Empty;
			if (tab1 != -1 && tab1 < tabRenderers.Count)
			{
				rectangleF = ((ITabRenderer)tabRenderers[tab1]).GetRedrawBounds();
			}
			if (tab2 != -1 && tab2 < tabRenderers.Count)
			{
				rectangleF2 = ((ITabRenderer)tabRenderers[tab2]).GetRedrawBounds();
			}
			if (!(rectangleF == RectangleF.Empty) || !(rectangleF2 == RectangleF.Empty))
			{
				RectangleF rectangleF3 = ((rectangleF == RectangleF.Empty) ? rectangleF2 : ((!(rectangleF2 == RectangleF.Empty)) ? RectangleF.Union(rectangleF, rectangleF2) : rectangleF));
				RectangleF rect = new RectangleF((float)Math.Floor(rectangleF3.Left), (float)Math.Floor(rectangleF3.Top), (float)Math.Ceiling(rectangleF3.Right) - (float)Math.Floor(rectangleF3.Left) + 1f, (float)Math.Ceiling(rectangleF3.Bottom) - (float)Math.Floor(rectangleF3.Top) + 1f);
				parent.OnRepaint(ApplyDrawingTransform(rect, apply: false));
			}
		}
	}

	protected virtual void Tab_PropertyChanged(object sender, EventArgs e)
	{
		ITabData tabData = (ITabData)sender;
		int num = TabPanelData.TabsData.IndexOf(tabData);
		if (tabRenderers.Count > num)
		{
			((ITabRenderer)tabRenderers[num]).TabPropertyChanged();
			if (parent.GetControl().IsHandleCreated && parent.GetControl().Visible && ShouldDrawVisible(tabData))
			{
				SizeF overlapSize = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle).GetOverlapSize(TabPanelData.TabSize);
				overlapSize.Height += TabPanelData.AdjustTopGap;
				RectangleF bounds = ((ITabRenderer)tabRenderers[num]).Bounds;
				bounds.Inflate(new SizeF(overlapSize.Width, 0f));
				bounds.Offset(0f, 0f - overlapSize.Height);
				bounds.Height += overlapSize.Height;
				parent.OnRepaint(ApplyDrawingTransform(bounds, apply: false));
			}
		}
	}

	protected virtual void Tab_BoundsAffected(object sender, EventArgs e)
	{
		ITabData value = sender as ITabData;
		int num = parent.Renderer.TabPanelData.TabsData.IndexOf(value);
		if (num != -1 && tabRenderers.Count > num)
		{
			((ITabRenderer)tabRenderers[num]).TabPropertyChanged();
		}
		OnBoundsAffected();
	}

	[DocumentationExclude]
	public virtual bool IsBackgroundSolid()
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		return registeredExtender.IsBackgroundSolid();
	}

	public virtual void OnPaintPanelBackground(Graphics g, Color backColor, Rectangle rect)
	{
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		registeredExtender.OnPaintPanelBackground(parent, g, backColor, rect);
	}

	public virtual void OnPaint(Graphics g, Rectangle clipRect)
	{
		TabControlAdv tabControlAdv = parent as TabControlAdv;
		if (tabRenderers.Count == 0 && (tabControlAdv == null || !tabControlAdv.ReserveTabSpace))
		{
			return;
		}
		if (NeedLayout)
		{
			SetNeedLayout(needLayout: false);
			Layout(g, fromPaint: true);
		}
		Region clip = g.Clip;
		RectangleF bounds = Bounds;
		if (parent != null && parent.GetControl() is MDITabPanel mDITabPanel && !mDITabPanel.IsCloseButtonActive())
		{
			bounds.Width += 20f;
		}
		g.SetClip(new Region(bounds), CombineMode.Intersect);
		Color color = TabPanelData.BackColor;
		if (color == Color.Empty)
		{
			color = DefaultTabPanelBackgroundColor();
		}
		RectangleF value = bounds;
		bool isMirrored = IsMirrored;
		int num = 1;
		int num2 = 2;
		switch (TabPanelData.Alignment)
		{
		case TabAlignment.Left:
			value.Width -= (isMirrored ? num2 : num);
			break;
		case TabAlignment.Right:
			if (isMirrored)
			{
				value.X += 1f;
				value.Width -= 1f;
			}
			else
			{
				value.X += 2f;
				value.Width -= 2f;
			}
			break;
		case TabAlignment.Top:
			value.Height -= 1f;
			break;
		case TabAlignment.Bottom:
			value.Offset(0f, 2f);
			value.Height -= 2f;
			break;
		}
		ITabDefaultProperties registeredExtender = TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle);
		if (value.Width != 0f && value.Height != 0f)
		{
			registeredExtender.OnPaintPanelBackground(parent, g, color, Rectangle.Ceiling(value));
		}
		bool flag = true;
		if (!TabRendererFactory.GetRegisteredExtender(TabPanelData.TabStyle).DrawLeftToRight)
		{
			flag = false;
		}
		int selectedIndex = TabPanelData.SelectedIndex;
		bool flag2 = false;
		if (isMirrored && parent is TabControlAdv tabControlAdv2)
		{
			flag2 = !tabControlAdv2.RotateTabsWhenRTL;
		}
		if (flag || flag2)
		{
			int num3 = 0;
			foreach (ITabRenderer tabRenderer4 in tabRenderers)
			{
				if (num3 != selectedIndex && tabRenderer4.Visible)
				{
					tabRenderer4.OnPaint(g, clipRect);
				}
				num3++;
			}
		}
		else
		{
			for (int num4 = tabRenderers.Count - 1; num4 >= 0; num4--)
			{
				if (num4 != selectedIndex)
				{
					ITabRenderer tabRenderer2 = (ITabRenderer)tabRenderers[num4];
					if (tabRenderer2.Visible)
					{
						tabRenderer2.OnPaint(g, clipRect);
					}
				}
			}
		}
		if (selectedIndex != -1)
		{
			ITabRenderer tabRenderer3 = (ITabRenderer)tabRenderers[selectedIndex];
			if (tabRenderer3.Visible)
			{
				tabRenderer3.OnPaint(g, clipRect);
			}
		}
		g.SetClip(clip, CombineMode.Replace);
	}

	public virtual void OnMouseHover(EventArgs e)
	{
		if (m_bShouldShowToolTipFirstTime && (ShouldShowToolTips || ShouldShowSuperToolTips))
		{
			m_bShouldShowToolTipFirstTime = false;
			StartShowingToolTip(500);
		}
	}

	public virtual void OnMouseEnter(EventArgs e)
	{
	}

	public virtual void OnMouseMove(MouseEventArgs e)
	{
		if (tabRenderers.Count <= 0)
		{
			return;
		}
		Point point = new Point(e.X, e.Y);
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(point, new SizeF(0f, 0f)), apply: true);
		point = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		int x = point.X;
		float num = 0f;
		RectangleF rectangleF2 = tdbounds;
		switch (tabPanelData.Alignment)
		{
		case TabAlignment.Top:
		case TabAlignment.Bottom:
		{
			for (int i = 0; i < tabRenderers.Count; i++)
			{
				num += ((ITabRenderer)tabRenderers[i]).GetCurrentBounds().Width;
			}
			num -= 4f;
			if ((float)x > num + rectangleF2.X || (float)x > rectangleF2.Width + rectangleF2.X || (float)x < rectangleF2.X)
			{
				ShowToolTip(null);
				ShowSuperTooltip(null);
			}
			break;
		}
		case TabAlignment.Left:
		case TabAlignment.Right:
			if ((float)x > rectangleF2.Width + rectangleF2.X || (float)x < rectangleF2.X)
			{
				ShowToolTip(null);
				ShowSuperTooltip(null);
			}
			break;
		}
		if (e.Button != MouseButtons.Left)
		{
			Moving = false;
		}
		int num2 = -1;
		if (tdbounds.Contains(point))
		{
			num2 = ((TabPanelData.SelectedIndex == -1 || !((ITabRenderer)tabRenderers[TabPanelData.SelectedIndex]).HitTest(point)) ? HitTestTabs(point, inTransformedCoOrds: true) : TabPanelData.SelectedIndex);
		}
		if (Moving)
		{
			if (HasMouseMovedEnough())
			{
				ptScreenMouseDown = Point.Empty;
			}
			if (num2 != -1)
			{
				OnDragMoveTabs(e);
			}
		}
		if ((tabPanelData.TabStyle.Equals("VS2010Style") || TabPanelData.HotTrack) && num2 != currentHotTrackTab && !parent.IsDesignMode())
		{
			if (currentHotTrackTab != -1)
			{
				((ITabRenderer)tabRenderers[currentHotTrackTab]).HotTrack = false;
			}
			if (num2 != -1)
			{
				((ITabRenderer)tabRenderers[num2]).HotTrack = true;
			}
			int tab = currentHotTrackTab;
			currentHotTrackTab = num2;
			InvalidateTabs(tab, currentHotTrackTab);
		}
		if (num2 != currentTooltipTab)
		{
			if (num2 != -1 && !m_bShouldShowToolTipFirstTime && (ShouldShowToolTips || ShouldShowSuperToolTips))
			{
				ShowToolTip(null);
				ShowSuperTooltip(null);
				StartShowingToolTip(100);
			}
			currentTooltipTab = num2;
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
		if (parent == null)
		{
			return;
		}
		Control control = parent.GetControl();
		if (control != null)
		{
			if (m_toolTip == null)
			{
				m_toolTip = new ToolTipAdv(control);
				m_toolTip.BackColor = SystemColors.Info;
				m_toolTip.BorderStyle = BorderStyle.FixedSingle;
			}
			if (m_superToolTip == null)
			{
				m_superToolTip = new SuperToolTip(control);
			}
		}
	}

	private void OnToolTipTimerTick(object sender, EventArgs e)
	{
		InitToolTip();
		ShowToolTip(ToolTipText);
		ShowSuperTooltip(SuperToolTip);
		m_toolTipTimer.Stop();
	}

	private bool IsValidToolTipPosition(Point pos)
	{
		bool result = false;
		if (parent != null)
		{
			Control control = parent.GetControl();
			if (control != null && Renderers != null && currentTooltipTab >= 0 && currentTooltipTab < Renderers.Count)
			{
				pos = control.PointToClient(pos);
				pos = Point.Round(ApplyDrawingTransform(new RectangleF(pos, SizeF.Empty), apply: true).Location);
				ITabRenderer tabRenderer = Renderers[currentTooltipTab] as ITabRenderer;
				result = tabRenderer.HitTest(pos);
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
		if (text == null || text == string.Empty || !ShouldShowToolTips)
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

	protected void ShowSuperTooltip(ToolTipInfo info)
	{
		if (m_superToolTip == null)
		{
			return;
		}
		if (info == null || !ShouldShowSuperToolTips)
		{
			m_superToolTip.Hide();
			return;
		}
		Point mousePosition = Control.MousePosition;
		if (IsValidToolTipPosition(mousePosition))
		{
			mousePosition.Offset(DEF_TOOLTIP_OFFSET.X, DEF_TOOLTIP_OFFSET.Y);
			m_superToolTip.Show(info, mousePosition);
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
			ShowSuperTooltip(null);
			m_bShouldShowToolTipFirstTime = !m_bisTabSelecting;
			m_toolTipTimer.Interval = 500;
			m_toolTipTimer.Stop();
		}
	}

	public int HitTestTabs(PointF mousePosition, bool inTransformedCoOrds)
	{
		if (!inTransformedCoOrds)
		{
			RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(mousePosition, new SizeF(0f, 0f)), apply: true);
			mousePosition = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		}
		if (!tdbounds.Contains(mousePosition))
		{
			return -1;
		}
		int num = 0;
		int result = -1;
		foreach (ITabRenderer tabRenderer in tabRenderers)
		{
			if (tabRenderer.HitTest(mousePosition))
			{
				result = num;
			}
			num++;
		}
		return result;
	}

	public virtual void OnMouseLeave(EventArgs e)
	{
		Moving = false;
		ResetHotTracking();
		StopShowingToolTip();
	}

	public virtual void CancelTabDrag()
	{
		if (TabPanelData.SelectedIndex != selIndexOnDragStart)
		{
			MoveTabs(TabPanelData.SelectedIndex, 1, selIndexOnDragStart);
		}
		Moving = false;
	}

	public Point GetMousePosition()
	{
		Point p = (ptScreenMouseDown = Control.MousePosition);
		p = parent.GetControl().PointToClient(p);
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(p, new SizeF(0f, 0f)), apply: true);
		return new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
	}

	public virtual void OnMouseDown(MouseEventArgs e)
	{
		if (TabPanelData == null && tabRenderers.Count <= 0)
		{
			return;
		}
		Point mousePosition = GetMousePosition();
		bool flag = false;
		int num = -1;
		if (TabPanelData.SelectedIndex != -1 && ((ITabRenderer)tabRenderers[TabPanelData.SelectedIndex]).HitTest(mousePosition))
		{
			num = TabPanelData.SelectedIndex;
		}
		else
		{
			num = HitTestTabs(mousePosition, inTransformedCoOrds: true);
			if (num != -1 && TabPanelData.SelectedIndex != num)
			{
				if (TabPanelData.IsTabSelectable(num, visually: true))
				{
					TabControlAdv tabControlAdv = parent as TabControlAdv;
					tabControlAdv?.TabPages[num]?.SetSelectedAtDesignTime();
					if (tabControlAdv.ValidateStatus == ValidateStatus.Failed || (tabControlAdv.ValidateStatus == ValidateStatus.None && !parent.ValidateFocusedTab()))
					{
						return;
					}
					TabPanelData.SelectedIndex = num;
					flag = true;
					int num2 = HitTestTabs(mousePosition, inTransformedCoOrds: true);
					if (num != num2)
					{
						num = -1;
					}
				}
				else
				{
					num = -1;
				}
			}
		}
		if (TabPanelData != null && TabPanelData.UserMoveTabs && !parent.IsDesignMode() && Control.MouseButtons == MouseButtons.Left && num != -1 && !flag)
		{
			Moving = true;
		}
		if (num < 0 && TabPanelData != null)
		{
			num = TabPanelData.SelectedIndex;
		}
		if (num < 0 || !(tabRenderers[num] is TabRendererBase tabRendererBase))
		{
			return;
		}
		m_bisTabSelecting = true;
		StopShowingToolTip();
		if (tabRendererBase.TabData is MDIChildTabData { MdiChild: { } } mDIChildTabData)
		{
			Control.ControlCollection controls = mDIChildTabData.MdiChild.Controls;
			if (controls.Count > 0)
			{
				Control control = mDIChildTabData.MdiChild.Controls[0];
				control.Focus();
			}
		}
	}

	public virtual bool IsMovingTab()
	{
		return Moving;
	}

	protected virtual void OnDragMoveTabs(MouseEventArgs e)
	{
		if (!HasMouseMovedEnough())
		{
			return;
		}
		Point mousePosition = Control.MousePosition;
		mousePosition = parent.GetControl().PointToClient(mousePosition);
		RectangleF rectangleF = ApplyDrawingTransform(new RectangleF(mousePosition, new SizeF(0f, 0f)), apply: true);
		mousePosition = new Point((int)Math.Round(rectangleF.Left), (int)Math.Round(rectangleF.Top));
		if (dragIgnoreRectTransformed != RectangleF.Empty && dragIgnoreRectTransformed.Contains(mousePosition))
		{
			return;
		}
		int num = HitTestTabs(mousePosition, inTransformedCoOrds: true);
		if (num != -1 && num != TabPanelData.SelectedIndex)
		{
			if (num != selIndexOnDragStart)
			{
				dragIgnoreRectTransformed = ((ITabRenderer)tabRenderers[num]).Bounds;
			}
			else
			{
				dragIgnoreRectTransformed = Rectangle.Empty;
			}
			TabControlAdv tabControlAdv = parent as TabControlAdv;
			TabMovingEventArgs e2 = new TabMovingEventArgs(tabPanelData.SelectedIndex, num);
			tabControlAdv.OnTabMoving(e2);
			if (!e2.Cancel)
			{
				MoveTabs(e2.From, 1, e2.Target);
				tabControlAdv.OnTabsOrderChanged();
			}
		}
	}

	public virtual void OnMouseUp(MouseEventArgs e)
	{
		m_bisTabSelecting = false;
		if (tabRenderers.Count > 0)
		{
			if (Moving && TabPanelData.UserMoveTabs)
			{
				OnDragMoveTabs(e);
				Moving = false;
			}
			ptScreenMouseDown = Point.Empty;
		}
	}

	private bool HasMouseMovedEnough()
	{
		if (ptScreenMouseDown == Point.Empty)
		{
			return true;
		}
		Point mousePosition = Control.MousePosition;
		if (Math.Abs(mousePosition.X - ptScreenMouseDown.X) > 2 || Math.Abs(mousePosition.Y - ptScreenMouseDown.Y) > 2)
		{
			return true;
		}
		return false;
	}

	public virtual void OnGotFocus(EventArgs e)
	{
		InvalidateTabs(TabPanelData.SelectedIndex, -1);
	}

	public virtual void OnLostFocus(EventArgs e)
	{
		InvalidateTabs(TabPanelData.SelectedIndex, -1);
		m_bisTabSelecting = false;
	}

	protected virtual void MoveTabs(int nTabsToMoveFrom, int nCount, int nMoveToIndex)
	{
		TabPanelData.TabsData.Move(nTabsToMoveFrom, nMoveToIndex, nCount);
		SetNeedLayout(needLayout: true);
	}

	protected void ResetHotTracking()
	{
		if (currentHotTrackTab != -1)
		{
			((ITabRenderer)tabRenderers[currentHotTrackTab]).HotTrack = false;
			int tab = currentHotTrackTab;
			currentHotTrackTab = -1;
			InvalidateTabs(tab, -1);
		}
	}
}
