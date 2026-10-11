using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Drawing;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Grid;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
[DocumentationExclude]
public class MenuGrid : MenuGridControlCustomizable, IPopupParent, IPopupControlContainer, IPopupChild, IPopupItem, INeedKeyboardMessages, INeedMouseMoveMessages, IMouseHookHLProcClient, IKeyboardProcHookClient, IIgnoreWorkingArea
{
	private class MenuCloseEventListener
	{
		private MenuGrid grid;

		private Control targetControl;

		private Form dropDownHost;

		internal bool ignoreDeactivate;

		public Control TargetControl
		{
			get
			{
				return targetControl;
			}
			set
			{
				if (targetControl != value)
				{
					if (targetControl != null)
					{
						Release();
					}
					targetControl = value;
					if (targetControl != null)
					{
						Attach();
					}
				}
			}
		}

		public Form DropDownHost
		{
			get
			{
				return dropDownHost;
			}
			set
			{
				if (dropDownHost != value)
				{
					if (dropDownHost != null)
					{
						dropDownHost.Deactivate -= FormDeactivate;
					}
					dropDownHost = value;
					if (dropDownHost != null)
					{
						dropDownHost.Deactivate += FormDeactivate;
					}
				}
			}
		}

		protected internal bool IsCustomizing
		{
			get
			{
				bool result = false;
				if (grid != null)
				{
					result = grid.IsCustomizing;
				}
				return result;
			}
		}

		public MenuCloseEventListener(MenuGrid grid)
		{
			this.grid = grid;
		}

		private void Attach()
		{
			if (targetControl == null)
			{
				return;
			}
			Form form = targetControl.FindForm();
			if (form != null && !(form is MenuGridHost))
			{
				if (!IsCustomizing)
				{
					form.Resize += MenuCloseEvent;
				}
				form.Move += MenuCloseEvent;
				form.Deactivate += FormDeactivate;
				if (form.ParentForm != null)
				{
					form.ParentForm.Move += MenuCloseEvent;
					form.ParentForm.Deactivate += FormDeactivate;
				}
			}
		}

		private void Release()
		{
			if (targetControl == null)
			{
				return;
			}
			Form form = targetControl.FindForm();
			if (form != null)
			{
				if (!IsCustomizing)
				{
					form.Resize -= MenuCloseEvent;
				}
				form.Move -= MenuCloseEvent;
				form.Deactivate -= FormDeactivate;
				if (form.ParentForm != null)
				{
					form.ParentForm.Move -= MenuCloseEvent;
					form.ParentForm.Deactivate -= FormDeactivate;
				}
			}
		}

		private void MenuCloseEvent(object sender, EventArgs e)
		{
			grid.HidePopup(PopupCloseType.Deactivated);
		}

		private void FormDeactivate(object sender, EventArgs e)
		{
			ValidateActiveState(sender);
		}

		private void ValidateActiveState(object sender)
		{
			if (grid.MenuBound && !ignoreDeactivate && (Form.ActiveForm == null || !grid.IsRelatedControl(Form.ActiveForm, askParent: true)))
			{
				grid.HidePopup(PopupCloseType.Deactivated);
			}
		}
	}

	private bool dontShowChild;

	private MenuCloseEventListener listener;

	private bool allowCurrentCellActivating;

	private static Timer timer;

	private static bool disablePartialMenusModeTemporarily;

	private MenuGridHost gridHost;

	private IPopupChild childMenuUI;

	private BarItem curDropDownItem;

	private IPopupParent parentMenuUI;

	private BarItem clickedItem;

	private Timer showTimer;

	private bool bInStopHideTimer;

	private bool bInStopShowTimer;

	private static bool bInStopPartialMenusTimer;

	private Timer hideTimer;

	internal int currentVisibleChildIndex = -1;

	private ParentBarItem currentVisibleChildItem;

	private Point currentLocation = Point.Empty;

	private AnimationHelper animationHelper;

	internal bool partialMenusOn;

	private MouseProcHookerUtil mouseHooker;

	private KeyboardProcHooker keyboardHooker;

	private bool aboutToShow;

	private bool m_bSuppressIsClickingChange;

	private BarItem m_biHighlighted;

	private bool m_bIsMouseMessage;

	private bool m_bIsMouseDownProcessing;

	private bool m_bIsClick;

	private bool m_bShouldPerformClick;

	internal Point m_clickedMousePos = Point.Empty;

	private bool m_bIsEscapeKeyPressed;

	private static bool DisablePartialMenusModeTemporarily
	{
		get
		{
			return disablePartialMenusModeTemporarily;
		}
		set
		{
			if (!value)
			{
				StartPartialMenusTimer();
				return;
			}
			StopPartialMenusTimer();
			disablePartialMenusModeTemporarily = true;
		}
	}

	internal MenuGridHost Host => gridHost;

	public PopupHost PopupHost
	{
		get
		{
			return null;
		}
		set
		{
		}
	}

	protected internal bool IsCustomizing
	{
		get
		{
			bool result = false;
			if (PopupParent is PopupMenu popupMenu)
			{
				if (popupMenu.PopupParent is CommandBar commandBar)
				{
					result = commandBar.IsCustomizing;
				}
			}
			else if (PopupParent is MenuGrid menuGrid)
			{
				result = menuGrid.IsCustomizing;
			}
			return result;
		}
	}

	public bool IgnoreWorkingArea
	{
		get
		{
			return gridHost.IgnoreWorkingArea;
		}
		set
		{
			gridHost.IgnoreWorkingArea = value;
		}
	}

	private MouseProcHookerUtil MouseHooker
	{
		get
		{
			if (mouseHooker == null)
			{
				mouseHooker = new MouseProcHookerUtil(base.Handle, this);
			}
			return mouseHooker;
		}
		set
		{
			mouseHooker = value;
		}
	}

	internal KeyboardProcHooker KeyboardHooker
	{
		get
		{
			if (keyboardHooker == null)
			{
				keyboardHooker = new KeyboardProcHooker(base.Handle, this);
			}
			return keyboardHooker;
		}
		set
		{
			keyboardHooker = value;
		}
	}

	internal Point[] OverlapBorderCue
	{
		get
		{
			if (parentMenuUI != null)
			{
				return parentMenuUI.GetBorderOverlapCue(gridHost.CurrentRAlign);
			}
			return null;
		}
	}

	bool IPopupParent.IsRightToLeft => IsRightToLeft();

	[DocumentationExclude]
	protected internal bool IsRTL => ((IPopupParent)this).IsRightToLeft;

	protected override bool MenuBound
	{
		get
		{
			return base.MenuBound;
		}
		set
		{
			if (base.MenuBound != value)
			{
				ParentBarItem parentBarItem = parentItem;
				base.MenuBound = value;
				if (!value && parentBarItem != null)
				{
					if (parentBarItem.Manager != null)
					{
						parentBarItem.Manager.CustomizationDone -= CustomizationDone;
					}
					PopupManager.SetCurrentPopupClient(this, active: false, callKillFocusOnFocused: false);
				}
				clickedItem = null;
				m_biHighlighted = null;
				StopShowTimer();
				StopHideTimer();
				if (base.MenuBound)
				{
					ShowingMenu(showing: true);
					if (parentItem.Manager != null)
					{
						parentItem.Manager.CustomizationDone += CustomizationDone;
					}
					PopupManager.SetCurrentPopupClient(this, active: true, callKillFocusOnFocused: false);
					StartListeningForDeactivation();
				}
				else
				{
					ShowingMenu(showing: false);
					currentVisibleChildIndex = -1;
					currentVisibleChildItem = null;
					childMenuUI = null;
					curDropDownItem = null;
					StopListeningForDeactivation();
				}
			}
			else
			{
				base.MenuBound = value;
			}
		}
	}

	private bool SuppressIsClickingChange
	{
		get
		{
			return m_bSuppressIsClickingChange;
		}
		set
		{
			m_bSuppressIsClickingChange = value;
		}
	}

	internal bool IsMouseDownProcessing => m_bIsMouseDownProcessing;

	internal bool IsMouseMessage
	{
		get
		{
			return m_bIsMouseMessage;
		}
		set
		{
			if (value != m_bIsMouseMessage)
			{
				m_bIsMouseMessage = value;
			}
		}
	}

	internal bool IsClicking
	{
		get
		{
			return m_bIsClick;
		}
		set
		{
			BarRenderer barRenderer = parentMenuUI as BarRenderer;
			if (!SuppressIsClickingChange && (barRenderer == null || !barRenderer.SuppressIsMenuClickingChange))
			{
				if (value)
				{
					m_clickedMousePos = Control.MousePosition;
				}
				else
				{
					m_bShouldPerformClick = false;
					m_clickedMousePos = Point.Empty;
				}
				m_bIsClick = value;
			}
		}
	}

	public int PreferredHeight => base.Model.RowHeights.GetTotal(0, DisplayedItemsCount);

	public int DisplayedItemsCount => Math.Min(MaximumItemsToDisplay, base.Model.RowCount);

	public int MaximumItemsToDisplay
	{
		get
		{
			if (parentItem != null)
			{
				return parentItem.MaximumItemsToDisplay;
			}
			return int.MaxValue;
		}
	}

	public bool ShowScrollBars => MaximumItemsToDisplay < base.Model.RowCount;

	internal bool IsEscapeKeyPressed => m_bIsEscapeKeyPressed;

	internal bool ShowShadow
	{
		get
		{
			if (PopupParent is BarRenderer { Bar: not null } barRenderer && barRenderer.Bar.Manager != null)
			{
				return barRenderer.Bar.Manager.ShowShadow;
			}
			if (PopupParent is MenuGrid menuGrid)
			{
				return menuGrid.ShowShadow;
			}
			if (PopupParent is PopupMenu popupMenu && popupMenu != null && popupMenu.PopupParent is CommandBarExt { Bar: not null } commandBarExt && commandBarExt.Bar.Manager != null)
			{
				return commandBarExt.Bar.Manager.ShowShadow;
			}
			if (PopupParent is ToolbarListPopupMenu toolbarListPopupMenu && toolbarListPopupMenu.ParentBarItem.barManager != null)
			{
				return toolbarListPopupMenu.ShowShadow;
			}
			return false;
		}
	}

	public IPopupParent PopupParent => parentMenuUI;

	private static void ShowingMenu(bool showing)
	{
		if (!showing)
		{
			DisablePartialMenusModeTemporarily = false;
		}
		else
		{
			StopPartialMenusTimer();
		}
	}

	static MenuGrid()
	{
		disablePartialMenusModeTemporarily = false;
		bInStopPartialMenusTimer = false;
	}

	private static void TimerTick(object sender, EventArgs e)
	{
		disablePartialMenusModeTemporarily = false;
		StopPartialMenusTimer();
	}

	private static void StartPartialMenusTimer()
	{
		if (timer == null && !bInStopPartialMenusTimer)
		{
			timer = new Timer();
			timer.Interval = BarManager.PartialMenusExpandedStateResetDelay;
			timer.Enabled = true;
			timer.Tick += TimerTick;
		}
	}

	private static void StopPartialMenusTimer()
	{
		if (timer != null && !bInStopPartialMenusTimer)
		{
			bInStopPartialMenusTimer = true;
			timer.Stop();
			timer.Tick -= TimerTick;
			timer.Dispose();
			timer = null;
			bInStopPartialMenusTimer = false;
		}
	}

	public MenuGrid()
		: base(allowDropOnSelf: true)
	{
		base.TopRowChanged += Grid_TopRowChanged;
		gridHost = new MenuGridHost();
		base.Parent = gridHost;
		animationHelper = new AnimationHelper();
		animationHelper.AnimationPositionChanged += AnimationListener;
		animationHelper.AnimationDone += AnimationDone_Event;
		listener = new MenuCloseEventListener(this);
		_ = base.Handle;
	}

	protected internal override void JitCode()
	{
		base.JitCode();
		EnsurePaintCodeJitted(ignoreVisible: true);
	}

	private void StartShowTimer()
	{
		if (showTimer == null && !bInStopShowTimer)
		{
			showTimer = new Timer();
			showTimer.Interval = 500;
			showTimer.Enabled = true;
			showTimer.Tick += ShowTimerListener;
		}
	}

	private void StopShowTimer()
	{
		if (showTimer != null && !bInStopShowTimer)
		{
			bInStopShowTimer = true;
			Timer timer = showTimer;
			showTimer = null;
			timer.Stop();
			timer.Tick -= ShowTimerListener;
			timer.Dispose();
			timer = null;
			bInStopShowTimer = false;
		}
	}

	private void StartHideTimer()
	{
		if (hideTimer == null && !bInStopHideTimer)
		{
			hideTimer = new Timer();
			hideTimer.Interval = 500;
			hideTimer.Enabled = true;
			hideTimer.Tick += HideTimerListener;
		}
	}

	private void StopHideTimer()
	{
		if (hideTimer != null && !bInStopHideTimer)
		{
			bInStopHideTimer = true;
			hideTimer.Stop();
			hideTimer.Tick -= HideTimerListener;
			hideTimer.Dispose();
			hideTimer = null;
			bInStopHideTimer = false;
		}
	}

	protected override void OnCurrentCellControlLostFocus(ControlEventArgs e)
	{
		base.OnCurrentCellControlLostFocus(e);
		if (!base.Focused)
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}

	protected override void OnCurrentCellActivating(GridCurrentCellActivatingEventArgs e)
	{
		if (allowCurrentCellActivating)
		{
			base.OnCurrentCellActivating(e);
		}
		else
		{
			e.Cancel = true;
		}
	}

	protected override void Dispose(bool disposing)
	{
		base.Dispose(disposing);
		if (disposing)
		{
			if (gridHost != null)
			{
				gridHost.Dispose();
				gridHost = null;
			}
			base.TopRowChanged -= Grid_TopRowChanged;
			StopShowTimer();
			StopHideTimer();
			animationHelper.AnimationPositionChanged -= AnimationListener;
			animationHelper.AnimationDone -= AnimationDone_Event;
		}
		if (mouseHooker != null)
		{
			mouseHooker.Dispose();
			mouseHooker = null;
		}
		if (keyboardHooker != null)
		{
			keyboardHooker.Dispose();
			keyboardHooker = null;
		}
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 33)
		{
			m.Result = (IntPtr)3;
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	private bool ProcessMouseMessage(Control destination, int msg)
	{
		if (msg == 512 || msg == 675 || msg == 673 || msg == 160 || msg == 674 || msg == 672 || msg == 522)
		{
			if (Control.MouseButtons == MouseButtons.None)
			{
				if ((destination != null && IsRelatedControl(destination, askParent: true)) || IsCurrentCellRelatedControl(destination))
				{
					return false;
				}
				return true;
			}
		}
		else
		{
			VeryifyMouseBasedDeactivation(msg, destination);
		}
		return false;
	}

	public virtual bool MouseMessage(ref Message m)
	{
		Control destination = Control.FromHandle(m.HWnd);
		int msg = m.Msg;
		return ProcessMouseMessage(destination, msg);
	}

	protected virtual bool IsCurrentCellRelatedControl(Control control)
	{
		if (!CurrentCell.HasControlFocus)
		{
			return false;
		}
		GridCellRendererBase renderer = CurrentCell.Renderer;
		if (renderer is IFocusableRenderer)
		{
			return ((IFocusableRenderer)renderer).IsRelatedControl(control);
		}
		return false;
	}

	private bool PostProcessKeyDown(int lParam, Keys key)
	{
		if ((key == Keys.Menu || key == Keys.F10) && (lParam & 0x40000000) == 0)
		{
			if (parentItem.Manager != null && parentItem.Manager.MainFrameBarManager != null)
			{
				parentItem.Manager.MainFrameBarManager.ignoreNextAltKeyUp = true;
			}
			HidePopup(PopupCloseType.Deactivated);
			return true;
		}
		return false;
	}

	public virtual bool KeyboardMessage(ref Message m)
	{
		bool flag = false;
		if (CurrentCell.HasControlFocus)
		{
			return false;
		}
		if (m.Msg == 256 || m.Msg == 258 || m.Msg == 260)
		{
			Keys keyCode = (Keys)m.WParam.ToInt32();
			flag = ProcessKeyDown(keyCode);
		}
		if (!flag && !base.Customizing && m.Msg == 256 && (parentItem == null || !parentItem.DesignMode) && base.DesignMode)
		{
			Keys key = (Keys)m.WParam.ToInt32();
			flag = PostProcessKeyDown(m.LParam.ToInt32(), key);
		}
		if (!flag && PopupParent is INeedKeyboardMessages)
		{
			((INeedKeyboardMessages)PopupParent).KeyboardMessage(ref m);
		}
		if (base.Customizing)
		{
			return false;
		}
		return flag;
	}

	protected virtual void VeryifyMouseBasedDeactivation(int msg, Control destinationControl)
	{
		switch (msg)
		{
		case 33:
		case 161:
		case 164:
		case 167:
		case 513:
		case 516:
		case 519:
			if (!IsRelatedControl(destinationControl, askParent: false))
			{
				HidePopup(PopupCloseType.Deactivated);
			}
			break;
		}
	}

	bool IKeyboardProcHookClient.KeyboardHookProc(int wParam, int lParam)
	{
		bool flag = false;
		if (CurrentCell.HasControlFocus)
		{
			return false;
		}
		if ((lParam & 0x80000000u) == 0)
		{
			flag = ProcessKeyDown((Keys)wParam);
		}
		if (parentItem != null && !parentItem.DesignMode)
		{
			if (!flag && !base.Customizing && (lParam & 0x80000000u) == 0)
			{
				flag = PostProcessKeyDown(lParam, (Keys)wParam);
			}
			if (!flag && PopupParent is IKeyboardProcHookClient)
			{
				((IKeyboardProcHookClient)PopupParent).KeyboardHookProc(wParam, lParam);
			}
			if (base.Customizing)
			{
				return false;
			}
			return true;
		}
		return flag;
	}

	bool IMouseHookHLProcClient.MouseHookProc(int msg, Point point, IntPtr hwnd, int wHitTestCode, int dwExtraInfo)
	{
		Control control = Control.FromHandle(hwnd);
		if (control != null || IntPtr.Zero != hwnd)
		{
			return ProcessMouseMessage(control, msg);
		}
		return false;
	}

	protected override void UpdateStyleBasedOnItem(GridStyleInfo style, IRequiresControl barItem)
	{
		base.UpdateStyleBasedOnItem(style, barItem);
		if (barItem is ComboBoxBarItem comboBoxBarItem)
		{
			style.CellType = (comboBoxBarItem.Editable ? "ComboBox" : "ComboBox_ListboxMode");
		}
	}

	private void AnimationDone_Event(object sender, EventArgs e)
	{
		if (MenuBound)
		{
			RefreshMenuGrid(bNoShow: true);
		}
	}

	private void AnimationListener(object sender, EventArgs e)
	{
		if (!MenuBound)
		{
			animationHelper.StopAnimation();
		}
		else if (animationHelper.AnimationPosition != animationHelper.MaxAnimationPosition)
		{
			BeginUpdate(BeginUpdateOptions.Invalidate);
			try
			{
				base.HighlightRange = GridRangeInfo.Empty;
				RefreshMenuGrid(bNoShow: false);
			}
			finally
			{
				EndUpdate();
			}
		}
	}

	protected virtual void ShowDropDown(bool selectDefaultItem)
	{
		StopShowTimer();
		StopHideTimer();
		GridRangeInfo highlightRange = base.HighlightRange;
		if (currentVisibleChildIndex == highlightRange.Top - 1)
		{
			return;
		}
		if (currentVisibleChildIndex != -1)
		{
			HideTimerListener(null, EventArgs.Empty);
		}
		if (highlightRange == GridRangeInfo.Empty)
		{
			HideTimerListener(null, EventArgs.Empty);
			return;
		}
		BarItem barItem = parentItem.Items[highlightRange.Top - 1];
		if (!base.Customizing && !barItem.Enabled)
		{
			return;
		}
		if (barItem is ParentBarItem)
		{
			if (!(barItem is ToolbarListBarItem) || !base.Customizing)
			{
				StopListeningForDeactivation();
				ShowChildrenUI(barItem as ParentBarItem, this, selectDefaultItem, null);
			}
		}
		else if (barItem is DropDownBarItem && !base.Customizing)
		{
			DropDownBarItem dropDownBarItem = barItem as DropDownBarItem;
			PopupControlContainer popupControlContainer = dropDownBarItem.PopupControlContainer;
			if (popupControlContainer != null && !popupControlContainer.DesignMode)
			{
				childMenuUI = popupControlContainer;
				curDropDownItem = barItem;
				StopListeningForDeactivation();
				popupControlContainer.PopupParent = this;
				popupControlContainer.RightToLeft = RightToLeft;
				popupControlContainer.ShowPopup(Point.Empty);
			}
		}
		if (childMenuUI != null)
		{
			currentVisibleChildIndex = highlightRange.Top - 1;
			mouseDownPoint = PointToClient(Control.MousePosition);
		}
		else
		{
			StartListeningForDeactivation();
		}
	}

	private void ShowTimerListener(object sender, EventArgs e)
	{
		bool suppressIsClickingChange = SuppressIsClickingChange;
		SuppressIsClickingChange = true;
		ShowDropDown(selectDefaultItem: false);
		SuppressIsClickingChange = suppressIsClickingChange;
	}

	public virtual void ShowChildrenUI(ParentBarItem parent, IPopupParent parentUI, bool selectDefaultItem, Queue pbiQueue)
	{
		if (currentVisibleChildItem != parent || childMenuUI == null || !childMenuUI.IsShowing())
		{
			currentVisibleChildItem = parent;
			MenuGrid menuGrid = (MenuGrid)(childMenuUI = XPMenuGridFactory.GetMenuGridToDeploy());
			curDropDownItem = parent;
			parent.Style = parentItem.Style;
			menuGrid.IsClicking = IsClicking;
			menuGrid.SuppressIsClickingChange = SuppressIsClickingChange;
			menuGrid.Show(parent, Point.Empty, parentUI, selectDefaultItem, pbiQueue);
			if (!menuGrid.IsShowing())
			{
				ChildClosing(menuGrid, PopupCloseType.Canceled);
			}
		}
	}

	private void HideTimerListener(object sender, EventArgs e)
	{
		StopHideTimer();
		if (childMenuUI != null)
		{
			if (!(childMenuUI is PopupControlContainer { IgnoreMouseMessages: not false }) || !m_bIsMouseMessage)
			{
				childMenuUI.HidePopup(PopupCloseType.Canceled);
			}
			if (base.SelectedItem is ParentBarItem parentBarItem && currentVisibleChildItem != parentBarItem)
			{
				ShowDropDown(selectDefaultItem: false);
			}
		}
		currentVisibleChildIndex = -1;
	}

	protected virtual void StartListeningForDeactivation()
	{
		if (parentMenuUI != null)
		{
			listener.TargetControl = parentMenuUI.GetPopupParentControl();
		}
	}

	protected virtual void StopListeningForDeactivation()
	{
		listener.TargetControl = null;
	}

	protected virtual void CustomizationDone(object sender, EventArgs e)
	{
		if (parentItem != null && sender == parentItem.Manager && sender != null)
		{
			HidePopup(PopupCloseType.Deactivated);
		}
	}

	protected override void OnStartDragging()
	{
		CloseDropDowns();
	}

	protected override bool ShouldRemoveItemOnMove()
	{
		return true;
	}

	protected override void ResetDragging()
	{
		if (!MenuBound)
		{
			dndHelper.ParentItem = null;
			ReleaseGrid();
		}
		base.ResetDragging();
	}

	protected void CloseDropDowns()
	{
		if (childMenuUI != null)
		{
			HideTimerListener(null, EventArgs.Empty);
		}
	}

	protected override void OnMouseEnter(EventArgs e)
	{
		base.OnMouseEnter(e);
		if (parentMenuUI is BarRenderer barRenderer)
		{
			barRenderer.CancelHidingDropDown();
		}
	}

	protected override void OnPaintBackground(PaintEventArgs pevent)
	{
		bool flag = false;
		if (base.ParentItem != null)
		{
			Rectangle clientRectangle = base.ClientRectangle;
			if (!IsRTL)
			{
				clientRectangle.Offset(IconColumnWidth, 0);
			}
			clientRectangle.Width -= IconColumnWidth;
			flag = base.ParentItem.OnDrawBackground(new SubMenuPaintEventArgs(pevent, base.Bounds, clientRectangle));
		}
		if (!flag)
		{
			base.OnPaintBackground(pevent);
		}
	}

	public bool CanScroll(bool down)
	{
		if (down)
		{
			return base.ViewLayout.HasPartialVisibleRows;
		}
		int topRowIndex = base.TopRowIndex;
		topRowIndex--;
		while (topRowIndex > 0 && (!base.Model[topRowIndex, GetCol(1)].Enabled || !IsSelectable(topRowIndex)))
		{
			topRowIndex--;
		}
		if (topRowIndex <= 0 || !IsSelectable(topRowIndex))
		{
			return false;
		}
		return true;
	}

	public void Scroll(bool down)
	{
		bool flag = false;
		if (down)
		{
			int lastVisibleRow = base.ViewLayout.LastVisibleRow;
			if (base.ViewLayout.HasPartialVisibleRows)
			{
				ScrollCellInView(lastVisibleRow, GetCol(1));
				flag = true;
			}
			else
			{
				for (lastVisibleRow++; lastVisibleRow <= base.Model.RowCount && !IsSelectable(lastVisibleRow); lastVisibleRow++)
				{
				}
				if (lastVisibleRow <= base.Model.RowCount && IsSelectable(lastVisibleRow))
				{
					ScrollCellInView(lastVisibleRow, GetCol(1));
					flag = true;
				}
			}
		}
		else
		{
			int topRowIndex = base.TopRowIndex;
			topRowIndex--;
			while (topRowIndex > 0 && !IsSelectable(topRowIndex))
			{
				topRowIndex--;
			}
			if (topRowIndex > 0 && IsSelectable(topRowIndex))
			{
				ScrollCellInView(topRowIndex, GetCol(1));
				flag = true;
			}
		}
		if (flag)
		{
			gridHost.UpdateScrollStates(heightChanged: false);
		}
	}

	protected bool IsCurrentCellActivatable()
	{
		if (!CurrentCell.HasCurrentCell)
		{
			return false;
		}
		int rowIndex = CurrentCell.RowIndex;
		if (parentItem != null && rowIndex > 0 && rowIndex <= parentItem.Items.Count && parentItem.Items[rowIndex - 1] is IRequiresControl)
		{
			return true;
		}
		return false;
	}

	protected override void OnMouseUp(MouseEventArgs e)
	{
		m_bIsMouseMessage = true;
		if (!base.IsHandleCreated || animationHelper.AnimationOn)
		{
			return;
		}
		base.OnMouseUp(e);
		if (e.Button != MouseButtons.Left || IsCurrentCellActivatable())
		{
			return;
		}
		if (base.SelectedIndex != -1)
		{
			FreeObjectCache();
			RefreshRange(base.HighlightRange);
		}
		if (!base.Customizing && base.HighlightRange != GridRangeInfo.Empty && m_bShouldPerformClick)
		{
			BarItem barItem = parentItem.Items[base.HighlightRange.Top - 1];
			bool flag = IsItemDropDownStyle(barItem);
			if ((barItem is ParentBarItem && !flag) || !IsSelectedItemClickableAt(new Point(e.X, e.Y)))
			{
				if (barItem is DropDownBarItem)
				{
					ShowDropDown(selectDefaultItem: false);
				}
				return;
			}
			ProcessItemClick(barItem);
		}
		m_bIsMouseMessage = false;
		IsClicking = false;
	}

	protected virtual void OnRightMouseDown(MouseEventArgs e)
	{
		if (!base.Customizing)
		{
			return;
		}
		MouseEventArgs e2 = new MouseEventArgs(MouseButtons.Left, e.Clicks, e.X, e.Y, e.Delta);
		OnMouseDown(e2);
		mouseDownPoint = PointToClient(Control.MousePosition);
		if (childMenuUI != null)
		{
			HideTimerListener(null, EventArgs.Empty);
		}
		if (base.SelectedIndex != -1)
		{
			while (PopupManager.ActivePopupClient != this && PopupManager.ActivePopupClient != null)
			{
				PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Canceled);
			}
			PopupManager.SetCurrentPopupClient(this, active: false, callKillFocusOnFocused: false);
			ValidateDndHelper();
			base.CustomizationPopup.Show(this, new Point(e.X, e.Y), base.SelectedItem, parentItem, dndHelper);
		}
	}

	protected override void OnMouseDown(MouseEventArgs e)
	{
		m_bShouldPerformClick = true;
		m_bIsMouseMessage = true;
		m_bIsMouseDownProcessing = true;
		if (animationHelper.AnimationOn)
		{
			return;
		}
		bool customizing = base.Customizing;
		if (CurrentCell.HasCurrentCell)
		{
			GridRangeInfo gridRangeInfo = PointToRangeInfo(new Point(e.X, e.Y), -1);
			if (CurrentCell.RowIndex != gridRangeInfo.Top)
			{
				allowCurrentCellActivating = true;
				CurrentCell.MoveTo(GridRangeInfo.Empty);
				allowCurrentCellActivating = false;
			}
		}
		GridRangeInfo highlightRange = base.HighlightRange;
		if (e.Button == MouseButtons.Right)
		{
			OnRightMouseDown(e);
			base.WantKeys = false;
			base.OnMouseDown(e);
			base.WantKeys = true;
			return;
		}
		BeginUpdate(BeginUpdateOptions.Invalidate);
		try
		{
			base.WantKeys = false;
			base.OnMouseDown(e);
			base.WantKeys = true;
			if (e.Button == MouseButtons.Left && highlightRange == base.HighlightRange)
			{
				BarItem selectedItem = base.SelectedItem;
				bool flag = IsItemDropDownStyle(selectedItem);
				bool flag2 = false;
				if (childMenuUI != null && (customizing || (!customizing && curDropDownItem != selectedItem) || (flag && IsSelectedItemClickableAt(new Point(e.X, e.Y)))))
				{
					if (curDropDownItem == selectedItem)
					{
						flag2 = true;
					}
					mouseDownPoint = new Point(e.X, e.Y);
					HideTimerListener(null, EventArgs.Empty);
				}
				if (!flag2 && childMenuUI == null)
				{
					if (customizing || (base.SelectedItem is ParentBarItem && !flag) || (flag && !IsSelectedItemClickableAt(new Point(e.X, e.Y))))
					{
						mouseDownPoint = new Point(e.X, e.Y);
						ShowDropDown(selectDefaultItem: false);
					}
					else
					{
						StopShowTimer();
						IsClicking = true;
					}
				}
				if (!customizing && base.SelectedItem is IRequiresControl)
				{
					int colIndex = ((selectedItem.Text.Length > 0) ? 3 : 2);
					listener.ignoreDeactivate = true;
					gridHost.Activate();
					Focus();
					allowCurrentCellActivating = true;
					CurrentCell.MoveTo(base.HighlightRange.Top, colIndex, GridSetCurrentCellOptions.SetFocus);
					allowCurrentCellActivating = false;
					listener.ignoreDeactivate = false;
				}
			}
			if (!CurrentCell.HasCurrentCell)
			{
				FreeObjectCache();
				InvalidateRange(base.HighlightRange);
			}
		}
		finally
		{
			EndUpdate();
		}
		m_bIsMouseMessage = false;
		m_bIsMouseDownProcessing = false;
	}

	private Form GetCustomizationDialog()
	{
		if (!MenuBound)
		{
			return null;
		}
		if (base.Customizing)
		{
			return parentItem.Manager.CustomizationDialog;
		}
		return null;
	}

	public virtual bool IsRelatedControl(Control control, bool askParent)
	{
		if (!MenuBound)
		{
			return false;
		}
		if (control == this || Contains(control) || control == gridHost || gridHost.Contains(control) || (base.IsCustomizationPopupAvailable && base.CustomizationPopup.IsPopupUI(control)) || control == parentMenuUI)
		{
			return true;
		}
		if (control is BarControlInternal barControlInternal)
		{
			BarRenderer barRenderer = parentMenuUI as BarRenderer;
			if (barControlInternal.barRenderer == barRenderer && barRenderer.CurrentHotTrackItem == parentItem)
			{
				return true;
			}
		}
		Form customizationDialog = GetCustomizationDialog();
		if (customizationDialog != null && (customizationDialog == control || customizationDialog.Contains(control)))
		{
			return true;
		}
		if (control is MenuGrid { parentItem: { } parentBarItem } && parentBarItem.HasChild(parentItem))
		{
			askParent = parentBarItem.CloseOnClick;
		}
		if (askParent)
		{
			return parentMenuUI.IsRelatedControl(control, askParent);
		}
		return false;
	}

	protected internal virtual void ProcessItemClick(BarItem item)
	{
		clickedItem = item;
		PopupMenu popupMenu = PopupParent as PopupMenu;
		bool flag = false;
		if (popupMenu != null && popupMenu.PopupParent is CommandBar && !(item is ButtonVisibilityToggleBarItem))
		{
			flag = true;
		}
		if (item == null || (parentItem != null && (parentItem.CloseOnClick || flag)))
		{
			clickedItem = item;
			HidePopup(PopupCloseType.Done);
		}
		else if (item != null)
		{
			mouseDownPoint = PointToClient(Control.MousePosition);
			clickedItem = null;
			m_biHighlighted = null;
			NotifyItem(item);
		}
	}

	private bool IsSelectedItemClickableAt(Point ptClick)
	{
		if (base.HighlightRange != GridRangeInfo.Empty)
		{
			BarItem barItem = parentItem.Items[base.HighlightRange.Top - 1];
			if (barItem.Enabled && !(barItem is IRequiresControl) && !(barItem is ParentBarItem) && !(barItem is DropDownBarItem))
			{
				return true;
			}
			if (IsItemDropDownStyle(barItem))
			{
				GridRangeInfo gridRangeInfo = PointToRangeInfo(ptClick, -1);
				int left = gridRangeInfo.Left;
				if (left != 4)
				{
					return true;
				}
			}
			if (barItem is IRequiresControl)
			{
				return false;
			}
		}
		return false;
	}

	protected virtual void NotifyItem(BarItem item)
	{
		if (item != null && item.Enabled)
		{
			base.Capture = true;
			base.Capture = false;
			item.PerformClick();
		}
	}

	public bool NeedDelayedExpansion()
	{
		if (parentItem == null)
		{
			return false;
		}
		if (parentItem.Manager != null)
		{
			return parentItem.Manager.ExpandPartialMenusAfterDelay;
		}
		return true;
	}

	public void ExpandPartialMenus(bool forceOpen)
	{
		if (partialMenusOn && !CurrentCell.HasControlFocus && !CurrentCell.IsDroppedDown && (forceOpen || childMenuUI == null))
		{
			partialMenusOn = false;
			DisablePartialMenusModeTemporarily = true;
			animationHelper.StartAnimation(3, directionExpand: true, 10);
		}
	}

	internal override void Show(ParentBarItem parentItem, Point location, IPopupParent parentUI, bool setDefaultSelection, Queue pbiQueue)
	{
		CancelEventArgs e = new CancelEventArgs(cancel: false);
		parentItem.OnBeforePopup(e);
		if (e.Cancel)
		{
			return;
		}
		aboutToShow = true;
		parentItem.OnPopup(EventArgs.Empty);
		if (!(parentItem is ToolbarListBarItem) && parentUI is BarRenderer { Customizing: false } && (parentItem.Items.Count == 0 || (parentItem.Items.Count == 1 && parentItem.Items[0] is StandAloneBarItem)))
		{
			aboutToShow = false;
			return;
		}
		parentMenuUI = parentUI;
		IsClicking = false;
		base.ScrollOnMouseMove = parentItem.ScrollOnMouseMove;
		Point point = Control.MousePosition;
		IntPtr hWnd = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(point.X, point.Y);
		Syncfusion.Runtime.InteropServices.NativeMethods.SendMessage(hWnd, 675, IntPtr.Zero, IntPtr.Zero);
		aboutToShow = false;
		currentLocation = location;
		base.Capture = true;
		base.Capture = false;
		if (parentItem.Manager == null || !parentItem.Manager.Customizing)
		{
			partialMenusOn = parentItem.UsePartialMenus && !DisablePartialMenusModeTemporarily && NeedPartialMenus(parentItem);
		}
		else
		{
			partialMenusOn = false;
		}
		RightToLeft = (parentUI.IsRightToLeft ? RightToLeft.Yes : RightToLeft.No);
		base.Show(parentItem, Point.Empty, parentUI, setDefaultSelection, null);
		if (setDefaultSelection)
		{
			MoveSelection(MoveHint.moveFirst);
		}
		if (pbiQueue != null && pbiQueue.Count > 0)
		{
			ParentBarItem value = pbiQueue.Dequeue() as ParentBarItem;
			SetSelectionAtRow(parentItem.Items.IndexOf(value) + 1);
			base.parentItem = parentItem;
			ShowChildrenUI(value, this, setDefaultSelection, pbiQueue);
		}
	}

	private bool NeedPartialMenus(ParentBarItem parentItem)
	{
		if (parentItem.Manager != null && !parentItem.Manager.UsePartialMenus)
		{
			return false;
		}
		if (parentItem.Manager != null && parentItem.Manager.MainFrameBarManager != null && !parentItem.Manager.MainFrameBarManager.UsePartialMenus)
		{
			return false;
		}
		foreach (BarItem item in parentItem.Items)
		{
			if (!item.IsRecentlyUsedItem && MenuGridControlBase.ShouldDrawVisible(base.parentItem, item, base.Customizing))
			{
				return true;
			}
		}
		return false;
	}

	public Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		if (childMenuUI == null)
		{
			newAlign = PopupRelativeAlignment.Default;
			return Point.Empty;
		}
		Rectangle parentBounds = RangeInfoToRectangle(base.HighlightRange, GridRangeOptions.None);
		parentBounds.X = 0;
		parentBounds.Width = base.Width;
		if (IsRTL)
		{
			prevAlign = PopupRelativeAlignment.RightBottom;
		}
		Point p = PopupUtils.ComputeDefaultLeftRightAlignment(prevAlign, out newAlign, parentBounds, isRTL: false);
		return PointToScreen(p);
	}

	public Point GetPreferredLocation(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		if (parentMenuUI != null)
		{
			Point empty = Point.Empty;
			if (parentMenuUI is BarControlBarRenderer barControlBarRenderer)
			{
				bool flag = RightToLeft == RightToLeft.Yes;
				empty = barControlBarRenderer.GetLocationForPopupAlignment(prevAlign, out newAlign, flag);
				empty.X = (flag ? (empty.X - gridHost.Width) : empty.X);
			}
			else
			{
				empty = parentMenuUI.GetLocationForPopupAlignment(prevAlign, out newAlign);
			}
			if (newAlign != PopupRelativeAlignment.Default || !(empty == Point.Empty))
			{
				return empty;
			}
		}
		newAlign = PopupRelativeAlignment.Default;
		if (!currentLocation.IsEmpty)
		{
			return currentLocation;
		}
		return new Point(1, 1);
	}

	protected override void RefreshMenuGrid(bool bNoShow)
	{
		FreeObjectCache();
		base.Model.BeginUpdate(BeginUpdateOptions.None);
		base.HighlightRange = GridRangeInfo.Empty;
		ResizeRowHeights();
		if (!animationHelper.AnimationOn)
		{
			ResizeColumns();
		}
		int total = base.Model.ColWidths.GetTotal(0, base.Model.ColCount);
		int total2 = base.Model.RowHeights.GetTotal(0, DisplayedItemsCount);
		Size prefSize = new Size(total, total2);
		gridHost.RightToLeft = RightToLeft;
		if (bNoShow)
		{
			gridHost.RefreshLayout(this, prefSize, partialMenusOn);
		}
		else
		{
			gridHost.ShowMenu(this, prefSize, partialMenusOn);
		}
		base.Model.EndUpdate(update: false);
		Refresh();
	}

	protected override void ModelQueryRowHeight(object sender, GridRowColSizeEventArgs e)
	{
		base.ModelQueryRowHeight(sender, e);
		int index = e.Index;
		int size = e.Size;
		if (index - 1 < 0 || !MenuBound || index > parentItem.Items.Count)
		{
			return;
		}
		BarItem barItem = parentItem.Items[index - 1];
		if (!barItem.IsRecentlyUsedItem && !base.Customizing)
		{
			if (partialMenusOn)
			{
				e.Handled = true;
				e.Size = 0;
			}
			else if (animationHelper.AnimationOn)
			{
				int num = size / 2;
				size -= num;
				num += (int)Math.Ceiling((float)size * ((float)animationHelper.AnimationPosition / (float)animationHelper.MaxAnimationPosition));
				e.Size = num;
				e.Handled = true;
			}
		}
	}

	protected override void OnPaint(PaintEventArgs pevent)
	{
		base.OnPaint(pevent);
		if (!MenuBound)
		{
			return;
		}
		Graphics graphics = pevent.Graphics;
		if (base.Customizing && parentItem.Manager != null)
		{
			int num = -1;
			num = ((cachedSelectedItem == null) ? parentItem.Items.IndexOf(parentItem.Manager.CustomizingItem) : parentItem.Items.IndexOf(cachedSelectedItem));
			if (num != -1)
			{
				Rectangle rect = RangeInfoToRectangle(GridRangeInfo.Row(num + 1), GridRangeOptions.None);
				rect.Offset(1, 1);
				rect.Width -= 2;
				rect.Height -= 2;
				Pen pen = new Pen(SystemColors.ControlText, 2f);
				graphics.DrawRectangle(pen, rect);
				pen.Dispose();
			}
		}
	}

	protected override void OnMouseMove(MouseEventArgs e)
	{
		m_bIsMouseMessage = true;
		if (m_bIsClick && Math.Abs(Control.MousePosition.X - m_clickedMousePos.X) >= SystemInformation.DragSize.Width && Math.Abs(Control.MousePosition.Y - m_clickedMousePos.Y) >= SystemInformation.DragSize.Height)
		{
			m_bShouldPerformClick = true;
		}
		if (animationHelper.AnimationOn || CurrentCell.HasCurrentCell || (mouseDownPoint != Point.Empty && mouseDownPoint == new Point(e.X, e.Y)))
		{
			return;
		}
		base.OnMouseMove(e);
		BarItem barItem = null;
		if (!base.Customizing)
		{
			barItem = SetSelectionAt(new Point(e.X, e.Y));
			if (barItem != null && m_biHighlighted != barItem)
			{
				SuperToolTip.SetToolTips(this, barItem);
			}
		}
		m_biHighlighted = barItem;
		m_bIsMouseMessage = false;
	}

	protected override void OnMouseLeave(EventArgs e)
	{
		m_bIsMouseMessage = true;
		if (animationHelper.AnimationOn)
		{
			return;
		}
		base.OnMouseLeave(e);
		if (!base.Customizing && !CurrentCell.HasCurrentCell)
		{
			if (childMenuUI != null)
			{
				UpdateHighlight();
			}
			else
			{
				base.HighlightRange = GridRangeInfo.Empty;
			}
		}
		m_bIsMouseMessage = false;
	}

	protected virtual void UpdateHighlight()
	{
		if (currentVisibleChildIndex == -1)
		{
			return;
		}
		IntPtr intPtr = Syncfusion.Runtime.InteropServices.NativeMethods.WindowFromPoint(Control.MousePosition.X, Control.MousePosition.Y);
		if (!(intPtr != IntPtr.Zero))
		{
			return;
		}
		Control control = Control.FromHandle(intPtr);
		if (control is IPopupChild)
		{
			IPopupChild popupChild = control as IPopupChild;
			if (popupChild.IsRelatedControl(this, askPopupParent: true))
			{
				base.HighlightRange = GridRangeInfo.Row(currentVisibleChildIndex + 1);
			}
		}
	}

	protected override bool ProcessMnemonic(char charCode)
	{
		if (base.Customizing || (Control.ModifierKeys != Keys.None && Control.ModifierKeys != Keys.Alt))
		{
			return false;
		}
		if (MenuBound && childMenuUI == null && !base.Customizing)
		{
			BarItem itemFromHotKey = parentItem.Items.GetItemFromHotKey(char.ToLower(charCode));
			if (itemFromHotKey != null && MenuGridControlBase.ShouldDrawVisible(parentItem, itemFromHotKey, base.Customizing))
			{
				base.HighlightRange = GridRangeInfo.Row(parentItem.Items.IndexOf(itemFromHotKey) + 1);
				ShowDropDown(selectDefaultItem: true);
				if (!(itemFromHotKey is DropDownBarItem) && !(itemFromHotKey is ParentBarItem))
				{
					ProcessItemClick(itemFromHotKey);
				}
				return true;
			}
			bool flag = false;
			if (parentMenuUI is MenuGrid menuGrid)
			{
				flag = menuGrid.ProcessMnemonic(charCode);
			}
			if (!flag && parentMenuUI is BarRenderer barRenderer)
			{
				flag = barRenderer.ProcessShortcut(charCode);
			}
			return flag;
		}
		return base.ProcessMnemonic(charCode);
	}

	private bool ShowChildDropDown()
	{
		IPopupChild popupChild = childMenuUI;
		ShowDropDown(selectDefaultItem: true);
		if (childMenuUI != null)
		{
			return popupChild != childMenuUI;
		}
		return false;
	}

	private bool ClosePopup()
	{
		bool flag = parentMenuUI != null && parentMenuUI is MenuGrid;
		if (flag)
		{
			HidePopup(PopupCloseType.Canceled);
		}
		return flag;
	}

	protected override bool ProcessKeyDown(Keys keyCode)
	{
		if (base.Customizing || animationHelper.AnimationOn)
		{
			return false;
		}
		bool flag = base.ProcessKeyDown(keyCode);
		if (CurrentCell.HasControlFocus)
		{
			flag = flag || keyCode != Keys.Escape;
		}
		if (!flag)
		{
			switch (keyCode)
			{
			case Keys.Right:
				if (IsRTL)
				{
					if (ClosePopup())
					{
						flag = true;
					}
				}
				else
				{
					flag = ShowChildDropDown();
				}
				break;
			case Keys.Left:
				if (IsRTL)
				{
					flag = ShowChildDropDown();
				}
				else if (ClosePopup())
				{
					flag = true;
				}
				break;
			case Keys.Escape:
				m_bIsEscapeKeyPressed = true;
				HidePopup(PopupCloseType.Canceled);
				m_bIsEscapeKeyPressed = false;
				flag = true;
				break;
			case Keys.Return:
				flag = ShowChildDropDown();
				if (!flag && childMenuUI == null)
				{
					if (base.HighlightRange != GridRangeInfo.Empty)
					{
						clickedItem = parentItem.Items[base.HighlightRange.Top - 1];
					}
					flag = clickedItem != null && IsShowing();
					ProcessItemClick(clickedItem);
				}
				break;
			}
		}
		bool flag2 = IsShowing();
		if (!flag && parentItem != null && flag2)
		{
			Keys keys = keyCode;
			bool flag3 = Syncfusion.Runtime.InteropServices.NativeMethods.GetAsyncKeyState(Keys.ControlKey) > 0;
			bool flag4 = Syncfusion.Runtime.InteropServices.NativeMethods.GetAsyncKeyState(Keys.ShiftKey) > 0;
			bool flag5 = Syncfusion.Runtime.InteropServices.NativeMethods.GetAsyncKeyState(Keys.Menu) > 0;
			keys = (flag3 ? (keys | Keys.Control) : keys);
			keys = (flag4 ? (keys | Keys.Shift) : keys);
			keys = (flag5 ? (keys | Keys.Alt) : keys);
			flag = parentItem.ProcessShortcut(keys);
			if (flag)
			{
				HidePopup(PopupCloseType.Done);
			}
		}
		if (!flag)
		{
			if (keyCode >= Keys.D0 && keyCode <= Keys.Z)
			{
				ProcessMnemonic((char)keyCode);
				flag = flag2;
			}
			else if (keyCode >= Keys.NumPad0 && keyCode <= Keys.NumPad9)
			{
				ProcessMnemonic((char)(48 + (keyCode - 96)));
				flag = flag2;
			}
		}
		if (!flag && flag2)
		{
			if ((keyCode & Keys.Oem8) != Keys.None && keyCode != Keys.Down && keyCode != Keys.Up && keyCode != Keys.Left && keyCode != Keys.Right && keyCode < Keys.F1 && keyCode > Keys.F24)
			{
				flag = true;
			}
			else if (keyCode == Keys.Space)
			{
				flag = true;
			}
		}
		return flag;
	}

	protected override void HideHighlight(GridRangeInfo range)
	{
		base.HideHighlight(range);
		if (currentVisibleChildIndex != -1 || (childMenuUI != null && childMenuUI.IsShowing()))
		{
			if (base.Customizing)
			{
				HideTimerListener(null, EventArgs.Empty);
			}
			else
			{
				StartHideTimer();
			}
		}
	}

	protected override void ShowHighlight(GridRangeInfo range)
	{
		base.ShowHighlight(range);
		StopShowTimer();
		if (currentVisibleChildIndex == range.Top - 1)
		{
			StopHideTimer();
		}
		else if (base.Customizing)
		{
			ShowDropDown(selectDefaultItem: false);
		}
		else if (!dontShowChild)
		{
			StartShowTimer();
		}
	}

	private void Grid_TopRowChanged(object sender, GridRowColIndexChangedEventArgs e)
	{
		gridHost.UpdateScrollStates(heightChanged: false);
	}

	protected override void OnDrawCell(GridDrawCellEventArgs e)
	{
	}

	protected override bool MoveSelection(MoveHint hint)
	{
		dontShowChild = true;
		bool flag = false;
		if (hint == MoveHint.moveNext)
		{
			if (base.HighlightRange == GridRangeInfo.Empty)
			{
				flag = MoveSelection(MoveHint.moveFirst);
			}
			else
			{
				int i;
				for (i = base.HighlightRange.Top + 1; i <= base.Model.RowCount && (!IsSelectable(i) || parentItem.Items[i - 1] is StaticBarItem); i++)
				{
				}
				if (i <= base.Model.RowCount)
				{
					base.HighlightRange = GridRangeInfo.Row(i);
					flag = true;
				}
				else
				{
					if (partialMenusOn)
					{
						ExpandPartialMenus(forceOpen: false);
					}
					flag = MoveSelection(MoveHint.moveFirst);
				}
			}
		}
		else
		{
			flag = base.MoveSelection(hint);
		}
		dontShowChild = false;
		return flag;
	}

	public virtual Control GetPopupParentControl()
	{
		if (parentMenuUI != null)
		{
			return parentMenuUI.GetPopupParentControl();
		}
		return null;
	}

	public Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlign)
	{
		return null;
	}

	public void OnChildClosed(PopupCloseType popupCloseType, bool fromChildControl)
	{
		childMenuUI = null;
		curDropDownItem = null;
		currentVisibleChildIndex = -1;
		if (parentItem != null)
		{
			PopupManager.SetCurrentPopupClient(this, active: true, callKillFocusOnFocused: false);
		}
		if (childMenuUI == null)
		{
			StartListeningForDeactivation();
		}
		if (popupCloseType != PopupCloseType.Canceled)
		{
			HidePopup(popupCloseType);
		}
	}

	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (MenuBound && childMenuUI == childUI)
		{
			OnChildClosed(popupCloseType, fromChildControl: false);
		}
	}

	public Form GetOwnerForm()
	{
		return gridHost;
	}

	public bool IsShowing()
	{
		if (aboutToShow)
		{
			return aboutToShow;
		}
		if (gridHost != null)
		{
			return gridHost.IsShowing();
		}
		return false;
	}

	private MainFrameBarManager GetMainManager()
	{
		if (parentMenuUI == null)
		{
			return null;
		}
		if (!(parentMenuUI is PopupMenu popupMenu))
		{
			return null;
		}
		if (popupMenu.ParentBarItem == null)
		{
			return null;
		}
		MainFrameBarManager mainFrameBarManager = popupMenu.ParentBarItem.Manager as MainFrameBarManager;
		if (mainFrameBarManager != null)
		{
			return mainFrameBarManager;
		}
		if (popupMenu.ParentBarItem.Manager is ChildFrameBarManager childFrameBarManager)
		{
			mainFrameBarManager = childFrameBarManager.MainFrameBarManager;
		}
		return mainFrameBarManager;
	}

	public override void HidePopup(PopupCloseType popupCloseType)
	{
		if (!MenuBound)
		{
			return;
		}
		CancelEventArgs e = new CancelEventArgs();
		if (parentItem != null)
		{
			parentItem.OnPopupClosing(e);
			if (e.Cancel)
			{
				return;
			}
		}
		IsClicking = false;
		CurrentCell.Deactivate(discardChanges: true);
		ParentBarItem parentBarItem = parentItem;
		BarItem barItem = clickedItem;
		IPopupParent popupParent = parentMenuUI;
		IPopupChild popupChild = childMenuUI;
		MainFrameBarManager mainManager = GetMainManager();
		if (mainManager != null)
		{
			mainManager.ShouldHidePopup = false;
		}
		MenuBound = false;
		if (gridHost != null && gridHost.IsShowing())
		{
			gridHost.HidePopup();
			base.Visible = false;
		}
		if (popupChild != null && (!(popupChild is PopupControlContainer { IgnoreMouseMessages: not false }) || !m_bIsMouseMessage))
		{
			popupChild.HidePopup(popupCloseType);
		}
		popupParent?.ChildClosing(this, popupCloseType);
		parentBarItem?.OnPopupClosed(EventArgs.Empty);
		if (barItem != null)
		{
			NotifyItem(barItem);
		}
		if (!dndHelper.Dragging)
		{
			ReleaseGrid();
		}
		parentMenuUI = null;
	}

	protected virtual void ReleaseGrid()
	{
		FreeObjectCache();
		XPMenuGridFactory.ReleaseMenuGrid(this);
	}

	protected override void OnChildCollectionChanged(object sender, CollectionChangeEventArgs e)
	{
		base.OnChildCollectionChanged(sender, e);
		if (sender is BarItems { Count: >0 })
		{
			RefreshMenuGrid(bNoShow: false);
		}
	}
}
