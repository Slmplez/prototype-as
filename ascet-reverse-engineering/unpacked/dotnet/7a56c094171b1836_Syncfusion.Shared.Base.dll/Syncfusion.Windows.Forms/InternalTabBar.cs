using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Security;
using System.Windows.Forms;
using Syncfusion.ComponentModel;
using Syncfusion.Diagnostics;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms;

public class InternalTabBar : Disposable
{
	private static object startstopSemaphor = true;

	private static object elapsedSemaphor = true;

	private InternalTabCollection tabs;

	private Control parent;

	private Rectangle bounds;

	private int currentTab = -1;

	private bool dirty = true;

	private bool flatLook;

	private Timer repeatClickEventTimer;

	private int logicalWidth;

	private int scrollPos;

	private InternalTabBarScrollBehavior tabScrollBehavior;

	private bool isDragTabMode;

	private int cachedTabFolderDelta;

	private DragHelper dragHelper = new DragHelper();

	public bool Capture => repeatClickEventTimer != null;

	public ArrowType EnableButtonFlags
	{
		get
		{
			ArrowType arrowType = ArrowType.None;
			if (parent.RightToLeft == RightToLeft.Yes)
			{
				if (ScrollPos > 0)
				{
					arrowType |= ArrowType.Next | ArrowType.Last;
				}
				if (ScrollPos < LogicalWidth - bounds.Width)
				{
					arrowType |= ArrowType.Previous | ArrowType.First;
				}
			}
			else
			{
				if (ScrollPos > 0)
				{
					arrowType |= ArrowType.Previous | ArrowType.First;
				}
				if (ScrollPos < LogicalWidth - bounds.Width)
				{
					arrowType |= ArrowType.Next | ArrowType.Last;
				}
			}
			return arrowType;
		}
	}

	public InternalTabCollection Tabs
	{
		get
		{
			return tabs;
		}
		set
		{
			CancelMode();
			tabs = value;
			dirty = true;
		}
	}

	public Rectangle Bounds
	{
		get
		{
			return bounds;
		}
		set
		{
			if (value.Width >= 0 && value.Height >= 0 && bounds != value)
			{
				bounds = value;
				dirty = true;
				if (parent.RightToLeft == RightToLeft.Yes)
				{
					ScrollPos = LogicalWidth - Bounds.Width;
					AdjustSize(measureTabs: true, initToolTip: true);
					RefreshCurrentTab(scroll: true);
				}
			}
		}
	}

	public bool FlatLook
	{
		get
		{
			return flatLook;
		}
		set
		{
			flatLook = value;
			dirty = true;
		}
	}

	public bool Dirty
	{
		get
		{
			if (dirty)
			{
				return true;
			}
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null && tab.Dirty)
					{
						return true;
					}
				}
			}
			return false;
		}
		set
		{
			dirty = value;
			if (tabs == null)
			{
				return;
			}
			foreach (InternalButton tab in tabs)
			{
				if (tab != null)
				{
					tab.Dirty = value;
				}
			}
		}
	}

	public bool Enabled
	{
		get
		{
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null && tab.Enabled)
					{
						return true;
					}
				}
			}
			return false;
		}
		set
		{
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null)
					{
						tab.Enabled = value;
					}
				}
			}
			if (Dirty)
			{
				CancelMode();
			}
		}
	}

	public bool Hovered
	{
		get
		{
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null && tab.Hovered)
					{
						return true;
					}
				}
			}
			return false;
		}
	}

	public bool Pushed
	{
		get
		{
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null && tab.Pushed)
					{
						return true;
					}
				}
			}
			return false;
		}
	}

	public bool Checked
	{
		get
		{
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					if (tab != null && tab.Checked)
					{
						return true;
					}
				}
			}
			return false;
		}
	}

	public int DragTarget
	{
		get
		{
			if (tabs != null)
			{
				for (int i = 0; i < tabs.Count; i++)
				{
					if (tabs[i] != null && tabs[i].DragTarget)
					{
						return i;
					}
				}
			}
			return -1;
		}
		set
		{
			if (tabs == null || value == DragTarget)
			{
				return;
			}
			for (int i = 0; i < tabs.Count; i++)
			{
				if (tabs[i] != null)
				{
					tabs[i].DragTarget = i == value;
				}
			}
			InvalidateIfDirty();
		}
	}

	public InternalTabBarScrollBehavior ScrollBehavior
	{
		get
		{
			return tabScrollBehavior;
		}
		set
		{
			tabScrollBehavior = value;
			AlignFirstTab();
		}
	}

	public int CurrentTab
	{
		get
		{
			return currentTab;
		}
		set
		{
			if (currentTab != value)
			{
				currentTab = value;
				RefreshCurrentTab(scroll: true);
			}
		}
	}

	public int LogicalWidth
	{
		get
		{
			return logicalWidth;
		}
		set
		{
			logicalWidth = value;
			dirty = true;
		}
	}

	public int ScrollPos
	{
		get
		{
			return scrollPos;
		}
		set
		{
			scrollPos = value;
			dirty = true;
		}
	}

	public bool IsDragTabMode
	{
		get
		{
			return isDragTabMode;
		}
		set
		{
			if (isDragTabMode == value)
			{
				return;
			}
			isDragTabMode = value;
			if (parent is IInternalTabBarParent internalTabBarParent)
			{
				if (isDragTabMode)
				{
					internalTabBarParent.OverrideCursor = Cursors.Hand;
				}
				else
				{
					internalTabBarParent.OverrideCursor = null;
				}
			}
		}
	}

	public event TabMovedEventHandler TabMoved;

	public event TabMovedEventHandler TabMoving;

	public InternalTabBar(Control parent)
	{
		if (parent == null)
		{
			throw new ArgumentNullException("parent", "Must pass valid window control.");
		}
		this.parent = parent;
		tabs = new InternalTabCollection(parent as TabBar);
		WireParent();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			CancelMode();
			if (tabs != null)
			{
				foreach (InternalButton tab in tabs)
				{
					tab?.Dispose();
				}
				tabs.Clear();
				tabs = null;
			}
			UnwireParent();
			if (repeatClickEventTimer != null)
			{
				repeatClickEventTimer.Dispose();
			}
			repeatClickEventTimer = null;
			if (dragHelper != null)
			{
				dragHelper.Dispose();
				dragHelper = null;
			}
		}
		base.Dispose(disposing);
	}

	private void WireParent()
	{
		if (parent != null)
		{
			parent.MouseDown += OnMouseDownEvent;
			parent.MouseMove += OnMouseMoveEvent;
			parent.MouseUp += OnMouseUpEvent;
			parent.MouseLeave += OnMouseLeaveEvent;
			if (parent is ButtonBar buttonBar)
			{
				buttonBar.CancelMode += OnCancelModeEvent;
			}
		}
	}

	private void UnwireParent()
	{
		if (parent != null)
		{
			parent.MouseDown -= OnMouseDownEvent;
			parent.MouseMove -= OnMouseMoveEvent;
			parent.MouseUp -= OnMouseUpEvent;
			parent.MouseLeave -= OnMouseLeaveEvent;
			if (parent is ButtonBar buttonBar)
			{
				buttonBar.CancelMode -= OnCancelModeEvent;
			}
			parent = null;
		}
	}

	public void Paint(Graphics g, int delta)
	{
		if (g == null)
		{
			throw new ArgumentNullException("g", "Must pass valid graphics.");
		}
		try
		{
			if (bounds.IsEmpty || !g.ClipBounds.IntersectsWith(bounds))
			{
				return;
			}
			if (LogicalWidth <= 0)
			{
				AdjustSize(measureTabs: true, initToolTip: false);
			}
			TabBarSplitterStyle tabBarSplitterStyle = TabBarSplitterStyle.Default;
			if (parent is TabBar)
			{
				tabBarSplitterStyle = (parent as TabBar).Style;
			}
			if (tabBarSplitterStyle == TabBarSplitterStyle.Office2007)
			{
				TabBar tabBar = parent as TabBar;
				Color tabBarSplitterTabBarStartColor = tabBar.Office2007ColorTable.TabBarSplitterTabBarStartColor;
				Color tabBarSplitterTabBarEndColor = tabBar.Office2007ColorTable.TabBarSplitterTabBarEndColor;
				using LinearGradientBrush linearGradientBrush = new LinearGradientBrush(bounds, tabBarSplitterTabBarStartColor, tabBarSplitterTabBarEndColor, LinearGradientMode.Vertical);
				Blend blend = new Blend();
				blend.Positions = new float[6] { 0f, 0.12f, 0.12f, 0.25f, 0.2f, 1f };
				blend.Factors = new float[6] { 1f, 0.7f, 0.5f, 0.2f, 0f, 0.5f };
				linearGradientBrush.Blend = blend;
				g.FillRectangle(linearGradientBrush, bounds);
			}
			if (parent.RightToLeft == RightToLeft.Yes)
			{
				for (int num = tabs.Count - 1; num >= 0; num--)
				{
					if (num != CurrentTab && tabs[num].Bounds.IntersectsWith(bounds))
					{
						Rectangle rectangle = tabs[num].Bounds;
						tabs[num].Paint(g, rectangle, flatLook, bounds);
						if (CurrentTab != -1 && CurrentTab < tabs.Count && tabs[num].Bounds.IntersectsWith(tabs[CurrentTab].Bounds))
						{
							tabs[CurrentTab].Dirty = true;
						}
					}
				}
			}
			else
			{
				for (int num2 = tabs.Count - 1; num2 >= 0; num2--)
				{
					if (num2 != CurrentTab && tabs[num2].Bounds.IntersectsWith(bounds))
					{
						Rectangle rectangle2 = tabs[num2].Bounds;
						tabs[num2].Paint(g, rectangle2, flatLook, bounds);
						if (CurrentTab != -1 && CurrentTab < tabs.Count && tabs[num2].Bounds.IntersectsWith(tabs[CurrentTab].Bounds))
						{
							tabs[CurrentTab].Dirty = true;
						}
					}
				}
			}
			if (CurrentTab != -1 && CurrentTab < tabs.Count && (dirty || tabs[CurrentTab].Dirty))
			{
				tabs[CurrentTab].Paint(g, tabs[CurrentTab].Bounds, flatLook, bounds);
			}
		}
		finally
		{
			dirty = false;
		}
	}

	protected virtual void OnClickedButton(InternalButton button)
	{
		try
		{
			if (parent is IInternalButtonParent internalButtonParent)
			{
				internalButtonParent.OnClickedButton(button);
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected virtual void DragTabMouseMove(int tab, int destTab)
	{
		try
		{
			if (!(parent is IInternalTabBarParent internalTabBarParent) || internalTabBarParent.OnDraggingTab(tab, destTab))
			{
				InternalTab internalTab = Tabs[tab];
				if (dragHelper.IsDragging)
				{
					dragHelper.DoDrag(Control.MousePosition, DragDropEffects.Copy);
				}
				else
				{
					dragHelper.StartDrag(internalTab.CreateBitmap(internalTab.Bounds.Size, FlatLook), Control.MousePosition, DragDropEffects.Copy);
				}
				DragTarget = destTab;
			}
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected internal virtual void DragTabMouseUp(int tab, int destTab)
	{
		try
		{
			StopTimer();
			IInternalTabBarParent internalTabBarParent = parent as IInternalTabBarParent;
			ISupportUpdating supportUpdating = parent as ISupportUpdating;
			supportUpdating?.BeginUpdate();
			parent.SuspendLayout();
			dragHelper.EndDrag();
			ResetDragTarget();
			internalTabBarParent?.OnDraggedTab(tab, destTab);
			parent.ResumeLayout(performLayout: false);
			supportUpdating?.EndUpdate();
			if (OnTabMoving(tab, destTab))
			{
				supportUpdating?.BeginUpdate();
				parent.SuspendLayout();
				MoveTab(tab, destTab);
				OnTabMoved(tab, destTab);
				RefreshCurrentTab(scroll: true);
			}
			parent.ResumeLayout(performLayout: false);
			supportUpdating?.EndUpdate();
			parent.PerformLayout();
		}
		catch (Exception ex)
		{
			TraceUtil.TraceExceptionCatched(ex);
			if (!ExceptionManager.RaiseExceptionCatched(null, ex))
			{
				throw;
			}
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected virtual bool OnTabMoving(int tab, int destTab)
	{
		if (this.TabMoving != null)
		{
			TabMovedEventArgs e = new TabMovedEventArgs(tab, destTab);
			this.TabMoving(this, e);
			return !e.Cancel;
		}
		return true;
	}

	[DocumentationExclude]
	public void MoveTab(int tab, int destTab)
	{
		InternalTab value = tabs[tab];
		if (destTab == -1)
		{
			tabs.RemoveAt(tab);
			tabs.Add(value);
			currentTab = tabs.Count - 1;
			AdjustSize(measureTabs: false, initToolTip: false);
		}
		else if (destTab < tab)
		{
			tabs.RemoveAt(tab);
			tabs.Insert(destTab, value);
			currentTab = destTab;
			AdjustSize(measureTabs: false, initToolTip: false);
		}
		else if (destTab > tab + 1)
		{
			tabs.Insert(destTab, value);
			tabs.RemoveAt(tab);
			currentTab = destTab - 1;
			AdjustSize(measureTabs: false, initToolTip: false);
		}
	}

	private void OnTabMoved(int tab, int destTab)
	{
		if (this.TabMoved != null)
		{
			this.TabMoved(this, new TabMovedEventArgs(tab, destTab));
		}
	}

	public int HitTest(int x, int y)
	{
		if (bounds.Contains(x, y))
		{
			if (currentTab != -1 && tabs[currentTab] != null)
			{
				InternalTab internalTab = tabs[currentTab];
				internalTab.Renderer.Bounds = internalTab.Bounds;
				if (internalTab.Style == TabBarSplitterStyle.Office2007 && internalTab.GetTabRegion.IsVisible(x, y))
				{
					return currentTab;
				}
			}
			for (int i = 0; i < tabs.Count; i++)
			{
				InternalTab internalTab2 = tabs[i];
				internalTab2.Renderer.Bounds = internalTab2.Bounds;
				if (internalTab2 != null && ((internalTab2.Style == TabBarSplitterStyle.Office2007 && internalTab2.GetTabRegion.IsVisible(x, y)) || (internalTab2.Style == TabBarSplitterStyle.Default && internalTab2.Bounds.Contains(x, y))))
				{
					return i;
				}
			}
		}
		return -1;
	}

	[DocumentationExclude]
	public void AdjustSize(bool measureTabs, bool initToolTip)
	{
		int num = 0;
		if (!(parent is IInternalTabParent internalTabParent))
		{
			return;
		}
		internalTabParent.GetMeasureTools(out var g, out var font, out cachedTabFolderDelta);
		try
		{
			Rectangle a = new Rectangle(bounds.Left - scrollPos, bounds.Top, 0, bounds.Height);
			if (parent.RightToLeft == RightToLeft.Yes)
			{
				for (int num2 = tabs.Count - 1; num2 >= 0; num2--)
				{
					InternalTab internalTab = Tabs[num2];
					if (measureTabs)
					{
						internalTab.AdjustSize(g, font, cachedTabFolderDelta);
					}
					a.Width = internalTab.Size.Width;
					tabs[num2].Bounds = a;
					if (initToolTip)
					{
						internalTab.InitToolTip(Rectangle.Intersect(a, bounds));
					}
					a.Offset(a.Width - cachedTabFolderDelta, 0);
					num += Tabs[num2].Size.Width - cachedTabFolderDelta;
				}
			}
			else
			{
				for (int i = 0; i < tabs.Count; i++)
				{
					InternalTab internalTab2 = Tabs[i];
					if (measureTabs)
					{
						internalTab2.AdjustSize(g, font, cachedTabFolderDelta);
					}
					a.Width = internalTab2.Size.Width;
					tabs[i].Bounds = a;
					if (initToolTip)
					{
						internalTab2.InitToolTip(Rectangle.Intersect(a, bounds));
					}
					a.Offset(a.Width - cachedTabFolderDelta, 0);
					num += Tabs[i].Size.Width - cachedTabFolderDelta;
				}
			}
			if (num > 0)
			{
				num += cachedTabFolderDelta + 2;
			}
			LogicalWidth = num;
		}
		finally
		{
			internalTabParent.DisposeMeasureTools();
		}
	}

	public void InvalidateIfDirty()
	{
		if (Dirty)
		{
			parent.Invalidate(bounds);
		}
	}

	public int FindButton(InternalButton button)
	{
		for (int i = 0; i < tabs.Count; i++)
		{
			if (tabs[i] == button)
			{
				return i;
			}
		}
		return -1;
	}

	public int FindTab(object cookie)
	{
		for (int i = 0; i < tabs.Count; i++)
		{
			if (tabs[i].Cookie == cookie)
			{
				return i;
			}
		}
		return -1;
	}

	public void CancelMode()
	{
		StopTimer();
		if (dragHelper != null)
		{
			dragHelper.CancelDrag();
		}
		ResetDragTarget();
		IsDragTabMode = false;
		if (parent != null)
		{
			parent.Capture = false;
		}
		InvalidateIfDirty();
	}

	[DocumentationExclude]
	protected void OnCancelModeEvent(object sender, EventArgs e)
	{
		CancelMode();
	}

	[DocumentationExclude]
	protected void OnMouseDownEvent(object sender, MouseEventArgs e)
	{
		if (Capture)
		{
			CancelMode();
			return;
		}
		int num = HitTest(e.X, e.Y);
		bool flag = (Control.ModifierKeys & Keys.Control) > Keys.None;
		if (num == -1)
		{
			return;
		}
		InternalButton internalButton = tabs[num];
		if (!internalButton.Enabled)
		{
			return;
		}
		_ = CurrentTab;
		if (flag)
		{
			if (CurrentTab != -1 && num != CurrentTab && CurrentTab < tabs.Count)
			{
				tabs[CurrentTab].Checked = true;
			}
			tabs[num].Checked = !tabs[num].Checked;
			CancelMode();
			return;
		}
		ResetChecked();
		parent.Capture = true;
		OnClickedButton(internalButton);
		InvalidateIfDirty();
		if (CurrentTab != -1 && parent.Capture && e.Button == MouseButtons.Left)
		{
			StartTimer();
		}
		else
		{
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected void OnMouseUpEvent(object sender, MouseEventArgs e)
	{
		lock (elapsedSemaphor)
		{
			if (bounds.Contains(e.X, e.Y))
			{
				int num = HitTest(e.X, e.Y);
				if (Capture && currentTab != -1 && num != CurrentTab)
				{
					DragTabMouseUp(CurrentTab, num);
				}
				InvalidateIfDirty();
			}
			CancelMode();
		}
	}

	[DocumentationExclude]
	protected void OnMouseMoveEvent(object sender, MouseEventArgs e)
	{
		int num = HitTest(e.X, e.Y);
		if (Capture && currentTab != -1)
		{
			if (num != CurrentTab)
			{
				DragTabMouseMove(CurrentTab, num);
			}
		}
		else if (!parent.Capture)
		{
			for (int i = 0; i < tabs.Count; i++)
			{
				if (i != currentTab)
				{
					tabs[i].Hovered = i == num;
				}
			}
		}
		InvalidateIfDirty();
	}

	[DocumentationExclude]
	protected void OnMouseLeaveEvent(object sender, EventArgs e)
	{
		ResetHovered();
		InvalidateIfDirty();
	}

	private void StartTimer()
	{
		lock (startstopSemaphor)
		{
			repeatClickEventTimer = new Timer();
			repeatClickEventTimer.Tick += OnTimerElapsed;
			repeatClickEventTimer.Interval = 500;
			repeatClickEventTimer.Enabled = true;
		}
	}

	private void StopTimer()
	{
		lock (startstopSemaphor)
		{
			if (repeatClickEventTimer != null)
			{
				repeatClickEventTimer.Tick -= OnTimerElapsed;
				repeatClickEventTimer.Dispose();
				repeatClickEventTimer = null;
			}
		}
	}

	private void OnTimerElapsed(object source, EventArgs e)
	{
		if (repeatClickEventTimer == null)
		{
			return;
		}
		if (parent == null)
		{
			CancelMode();
			return;
		}
		if (repeatClickEventTimer.Interval > 200)
		{
			repeatClickEventTimer.Interval -= 200;
		}
		else if (repeatClickEventTimer.Interval > 25)
		{
			repeatClickEventTimer.Interval -= 5;
		}
		if (currentTab == -1)
		{
			StopTimer();
			return;
		}
		Point point = parent.PointToClient(Control.MousePosition);
		int num = HitTest(point.X, point.Y);
		if (num != -1)
		{
			DragTabMouseMove(currentTab, num);
		}
		if (point.Y > bounds.Top - 15 && point.Y < bounds.Bottom + 15)
		{
			if (point.X > bounds.Right - 15 && point.X < bounds.Right + 15)
			{
				Scroll(ArrowType.Next, 10);
			}
			else if (point.X > bounds.Left - 15 && point.X < bounds.Left + 15)
			{
				Scroll(ArrowType.Previous, 10);
			}
		}
	}

	public void ScrollInView(InternalTab tab)
	{
		int num = FindButton(tab);
		if (num != -1)
		{
			ScrollInView(num);
		}
	}

	public void ScrollInView(int tab)
	{
		Rectangle rectangle = Bounds;
		Rectangle rectangle2 = tabs[tab].Bounds;
		rectangle2.Width = Math.Min(rectangle2.Width, Bounds.Width);
		rectangle.Intersect(rectangle2);
		if (!(rectangle != rectangle2))
		{
			return;
		}
		int num = rectangle2.Right - Bounds.Right + cachedTabFolderDelta;
		if (num > 0)
		{
			if (parent.RightToLeft == RightToLeft.Yes)
			{
				Scroll(ArrowType.Previous, num + cachedTabFolderDelta);
			}
			else
			{
				Scroll(ArrowType.Next, num + cachedTabFolderDelta);
			}
			if (ScrollBehavior == InternalTabBarScrollBehavior.ScrollTabs)
			{
				AlignNextTab();
			}
			return;
		}
		num = Bounds.Left - rectangle2.Left;
		if (num > 0)
		{
			if (parent.RightToLeft == RightToLeft.Yes)
			{
				Scroll(ArrowType.Next, num);
			}
			else
			{
				Scroll(ArrowType.Previous, num);
			}
		}
	}

	[DocumentationExclude]
	public void AlignFirstTab()
	{
		int num = HitTest(Bounds.Left + cachedTabFolderDelta, Bounds.Top + 1);
		if (num != -1)
		{
			int num2 = Bounds.Left - Tabs[num].Bounds.Left;
			if (num2 > 0)
			{
				Scroll(ArrowType.Previous, num2, ignoreLast: true);
			}
		}
	}

	[DocumentationExclude]
	public void AlignNextTab()
	{
		int num = HitTest(Bounds.Left + cachedTabFolderDelta, Bounds.Top + 1);
		if (num != -1 && num < Tabs.Count)
		{
			int num2 = Tabs[num + 1].Bounds.Left - Bounds.Left;
			if (num2 > 0)
			{
				Scroll(ArrowType.Next, num2, ignoreLast: true);
			}
		}
	}

	public void ScrollTab(ArrowType arrowKind)
	{
		if (parent.RightToLeft == RightToLeft.Yes)
		{
			switch (arrowKind)
			{
			case ArrowType.First:
				arrowKind = ArrowType.Last;
				break;
			case ArrowType.Last:
				arrowKind = ArrowType.First;
				break;
			case ArrowType.Next:
				arrowKind = ArrowType.Previous;
				break;
			case ArrowType.Previous:
				arrowKind = ArrowType.Next;
				break;
			}
		}
		switch (arrowKind)
		{
		case ArrowType.First:
			if (ScrollPos != 0)
			{
				Scroll(ArrowType.Previous, ScrollPos);
			}
			break;
		case ArrowType.Last:
		{
			int num3 = LogicalWidth - Bounds.Width;
			if (num3 > ScrollPos)
			{
				Scroll(ArrowType.Next, num3 - ScrollPos, ignoreLast: true);
			}
			AlignNextTab();
			break;
		}
		case ArrowType.Next:
			AlignFirstTab();
			if (ScrollPos < LogicalWidth - Bounds.Width)
			{
				int num2 = HitTest(Bounds.Left + cachedTabFolderDelta, Bounds.Top + 1);
				if (num2 != -1 && num2 < Tabs.Count)
				{
					Scroll(ArrowType.Next, Tabs[num2].Bounds.Width - cachedTabFolderDelta, ignoreLast: true);
				}
			}
			break;
		case ArrowType.Previous:
			AlignFirstTab();
			if (ScrollPos > 0)
			{
				int num = HitTest(Bounds.Left + cachedTabFolderDelta, Bounds.Top + 1);
				if (num != -1 && num > 0)
				{
					Scroll(ArrowType.Previous, Tabs[num - 1].Bounds.Width - cachedTabFolderDelta);
				}
			}
			break;
		}
		InvalidateIfDirty();
	}

	public void Scroll(ArrowType arrowKind, int pixels)
	{
		Scroll(arrowKind, pixels, ignoreLast: false);
	}

	public void Scroll(ArrowType arrowKind, int pixels, bool ignoreLast)
	{
		if (parent.RightToLeft == RightToLeft.Yes)
		{
			switch (arrowKind)
			{
			case ArrowType.First:
				arrowKind = ArrowType.Last;
				break;
			case ArrowType.Last:
				arrowKind = ArrowType.First;
				break;
			case ArrowType.Next:
				arrowKind = ArrowType.Previous;
				break;
			case ArrowType.Previous:
				arrowKind = ArrowType.Next;
				break;
			}
		}
		int num = ScrollPos;
		switch (arrowKind)
		{
		case ArrowType.First:
			num = 0;
			break;
		case ArrowType.Last:
		{
			int num2 = LogicalWidth - Bounds.Width;
			if (ScrollPos < num2)
			{
				num = num2;
			}
			break;
		}
		case ArrowType.Next:
		{
			int num3 = ((!ignoreLast) ? Bounds.Width : 0);
			if (ScrollPos < LogicalWidth - num3)
			{
				num = Math.Min(ScrollPos + pixels, LogicalWidth - num3);
			}
			break;
		}
		case ArrowType.Previous:
			if (ScrollPos > 0)
			{
				num = Math.Max(0, ScrollPos - pixels);
			}
			break;
		}
		if (ScrollPos == num)
		{
			return;
		}
		int nXAmount = ScrollPos - num;
		IInternalTabBarParent internalTabBarParent = parent as IInternalTabBarParent;
		if (internalTabBarParent == null || internalTabBarParent.OnScroll(arrowKind, pixels))
		{
			try
			{
				Rectangle rect = bounds;
				NativeMethods.RECT rectScrollRegion = new NativeMethods.RECT(rect);
				NativeMethods.RECT rectClip = new NativeMethods.RECT(rect);
				parent.Update();
				dirty = false;
				ScrollPos = num;
				NativeMethods.ScrollWindow(parent.Handle, nXAmount, 0, ref rectScrollRegion, ref rectClip);
			}
			catch (SecurityException)
			{
				ScrollPos = num;
				parent.Invalidate(bounds);
			}
			dirty = true;
			parent.Update();
			internalTabBarParent?.OnScrolled();
			ResetToolTips();
			InitToolTips();
		}
	}

	public void InitToolTips()
	{
		AdjustSize(measureTabs: false, initToolTip: true);
	}

	public void ResetToolTips()
	{
		if (tabs == null)
		{
			return;
		}
		foreach (InternalButton tab in tabs)
		{
			tab?.ResetToolTip();
		}
	}

	public void ResetHovered()
	{
		if (tabs == null)
		{
			return;
		}
		foreach (InternalButton tab in tabs)
		{
			if (tab != null)
			{
				tab.Hovered = false;
			}
		}
	}

	public void ResetPushed()
	{
		if (tabs == null)
		{
			return;
		}
		foreach (InternalButton tab in tabs)
		{
			if (tab != null)
			{
				tab.Pushed = false;
			}
		}
	}

	public void ResetChecked()
	{
		if (tabs == null)
		{
			return;
		}
		foreach (InternalButton tab in tabs)
		{
			if (tab != null)
			{
				tab.Checked = false;
			}
		}
	}

	public void ResetDragTarget()
	{
		if (tabs == null)
		{
			return;
		}
		foreach (InternalButton tab in tabs)
		{
			if (tab != null)
			{
				tab.DragTarget = false;
			}
		}
	}

	public void RefreshCurrentTab(bool scroll)
	{
		ResetPushed();
		if (currentTab >= 0 && currentTab < tabs.Count)
		{
			tabs[currentTab].Pushed = true;
			if (scroll)
			{
				ScrollInView(tabs[currentTab]);
			}
		}
	}
}
