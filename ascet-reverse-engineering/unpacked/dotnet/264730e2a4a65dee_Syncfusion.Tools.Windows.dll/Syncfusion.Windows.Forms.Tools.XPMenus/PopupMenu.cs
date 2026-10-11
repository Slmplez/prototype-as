using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Grid;
using Syncfusion.Windows.Forms.Tools.Design;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[Designer(typeof(PopupMenuDesigner), typeof(IDesigner))]
[ToolboxItemFilter("System.Windows.Forms")]
[Description("Represents a PopupMenu which lets you create XP like context menus.")]
[ToolboxBitmap(typeof(CommandBar), "ToolboxIcons.PopupMenu.bmp")]
public class PopupMenu : Component, IPopupParent, IPopupItem, IMessageFilter, IIgnoreWorkingArea
{
	protected IPopupChild childMenuUI;

	internal Form designTimeForm;

	private ParentBarItem parentBarItem;

	private Control menuParentControl;

	private Point curPopupLoc = Point.Empty;

	private Rectangle curPopupParentRect = Rectangle.Empty;

	private IPopupParent popupParent;

	private bool returnFromShowAfterMenuClose = true;

	private Form cachedParentForm;

	private bool m_bIgnoreWorkingArea;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public Control SourceControl
	{
		get
		{
			return menuParentControl;
		}
		set
		{
			if (IsShowing())
			{
			}
			menuParentControl = value;
		}
	}

	[Description("Gets or sets ignore working area when menu begin popup.")]
	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			if (m_bIgnoreWorkingArea != value)
			{
				m_bIgnoreWorkingArea = value;
			}
		}
	}

	[ReadOnly(true)]
	[Description("Indicates whether the PopupMenu should be displayed within the WM_CONTEXTMENU message processing stack or if the PopupMenu should be shown after a short delay (using a timer).")]
	[Browsable(true)]
	public bool SynchronousPopup
	{
		get
		{
			return returnFromShowAfterMenuClose;
		}
		set
		{
			returnFromShowAfterMenuClose = value;
		}
	}

	[DefaultValue(null)]
	[Description("Indicates the ParentBarItem that specifies the items in the dropdown menu.")]
	public ParentBarItem ParentBarItem
	{
		get
		{
			return parentBarItem;
		}
		set
		{
			if (parentBarItem != value)
			{
				if (parentBarItem != null)
				{
					Hide();
				}
				parentBarItem = value;
				if (this.ParentBarItemChanged != null)
				{
					this.ParentBarItemChanged(this, EventArgs.Empty);
				}
			}
		}
	}

	[DocumentationExclude]
	public Form DesignTimeForm
	{
		set
		{
			designTimeForm = value;
		}
	}

	internal IPopupParent PopupParent => popupParent;

	protected virtual MenuGrid MenuGrid => XPMenuGridFactory.GetMenuGridToDeploy();

	bool IPopupParent.IsRightToLeft
	{
		get
		{
			bool result = false;
			if (popupParent != null)
			{
				result = popupParent.IsRightToLeft;
			}
			else if (SourceControl != null)
			{
				result = RightToLeft.Yes == SourceControl.RightToLeft;
			}
			return result;
		}
	}

	[Description("Occurs when the ParentBarItem property changes.")]
	public event EventHandler ParentBarItemChanged;

	[Description("Occurs before the popupmenu gets displayed.")]
	public event CancelMouseEventHandler BeforePopup;

	[Description("Occurs when menu is popped up.")]
	public event EventHandler Popup;

	[Description("Occurs when menu is collapsed.")]
	public event EventHandler Collapse;

	static PopupMenu()
	{
		XPMenuGridFactory.InitMenus();
	}

	public PopupMenu()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(PopupMenu));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
	}

	public PopupMenu(IContainer container)
		: this()
	{
		container?.Add(this);
		MessageFilterEntryHelper.AddMessageFilter(this, ontop: false);
	}

	protected override void Dispose(bool disposing)
	{
		MessageFilterEntryHelper.RemoveMessageFilter(this);
		SourceControl = null;
		ParentBarItem = null;
		base.Dispose(disposing);
	}

	[DocumentationExclude]
	public virtual bool IsRelatedControl(Control control, bool askParent)
	{
		if (popupParent != null)
		{
			return popupParent.IsRelatedControl(control, askParent);
		}
		if (designTimeForm != null && (control == designTimeForm || designTimeForm.Contains(control)))
		{
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	public bool IsShowing()
	{
		if (childMenuUI != null)
		{
			return childMenuUI.IsShowing();
		}
		return false;
	}

	public void Show(Control control, Rectangle besideRect)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control", "Control cannot be null");
		}
		if (!control.IsHandleCreated || !control.Visible)
		{
			throw new Exception("Invalid Control specified as ContextMenu Parent");
		}
		if (IsShowing())
		{
			return;
		}
		curPopupParentRect = control.RectangleToScreen(besideRect);
		menuParentControl = control;
		Form form = control.FindForm();
		if (form is PopupHost)
		{
			PopupControlContainer popupControlContainer = null;
			foreach (Control control2 in control.FindForm().Controls)
			{
				if (control2 is PopupControlContainer)
				{
					popupControlContainer = control2 as PopupControlContainer;
					break;
				}
			}
			if (popupControlContainer != null && popupControlContainer.IsShowing())
			{
				ShowPopupMenuWithPCCAsParent(Point.Empty, popupControlContainer);
				return;
			}
		}
		ShowChildrenUI(Point.Empty, this);
	}

	public void Show(Control control, Point pos)
	{
		if (control == null)
		{
			throw new ArgumentNullException("control", "Control cannot be null");
		}
		if (!control.IsHandleCreated)
		{
			throw new Exception("Invalid Control specified as ContextMenu Parent");
		}
		if (IsShowing() || !control.Visible)
		{
			return;
		}
		pos = control.PointToScreen(pos);
		curPopupLoc = pos;
		menuParentControl = control;
		Form form = control.FindForm();
		if (form is PopupHost)
		{
			PopupControlContainer popupControlContainer = null;
			foreach (Control control2 in control.FindForm().Controls)
			{
				if (control2 is PopupControlContainer)
				{
					popupControlContainer = control2 as PopupControlContainer;
					break;
				}
			}
			if (popupControlContainer != null && popupControlContainer.IsShowing())
			{
				ShowPopupMenuWithPCCAsParent(pos, popupControlContainer);
				return;
			}
		}
		ShowChildrenUI(pos, this);
	}

	public void Hide()
	{
		if (childMenuUI != null)
		{
			childMenuUI.HidePopup(PopupCloseType.Canceled);
		}
	}

	[DocumentationExclude]
	public virtual IPopupChild ShowChildrenUI(Point pos, IPopupParent parentUI)
	{
		cachedParentForm = null;
		if (parentBarItem == null)
		{
			return null;
		}
		CancelMouseEventArgs e = new CancelMouseEventArgs(new MouseEventArgs(Control.MouseButtons, 1, pos.X, pos.Y, 1));
		OnBeforePopup(e);
		if (e.Cancel)
		{
			return null;
		}
		if (parentUI != this)
		{
			popupParent = parentUI;
		}
		MenuGrid menuGrid = MenuGrid;
		menuGrid.IgnoreWorkingArea = m_bIgnoreWorkingArea;
		childMenuUI = menuGrid;
		if (PopupManager.ActivePopupClient != null)
		{
			PopupManager.ActivePopupClient.HidePopup(PopupCloseType.Deactivated);
		}
		bool flag = false;
		foreach (BarItem item in ParentBarItem.Items)
		{
			if (item.Visible)
			{
				flag = true;
				break;
			}
		}
		if (flag)
		{
			menuGrid.Show(parentBarItem, pos, this, setDefaultSelection: false);
		}
		if (this.Popup != null)
		{
			this.Popup(this, EventArgs.Empty);
		}
		if (!menuGrid.IsShowing())
		{
			ChildClosing(menuGrid, PopupCloseType.Canceled);
			return null;
		}
		if (menuParentControl != null)
		{
			cachedParentForm = SourceControl.FindForm();
			BarManager.OnStartingMenuNavigation(cachedParentForm, menuParentControl);
		}
		if (returnFromShowAfterMenuClose && (parentBarItem.Manager == null || !parentBarItem.Manager.Customizing))
		{
			Application.DoEvents();
			Syncfusion.Runtime.InteropServices.NativeMethods.MSG msg = default(Syncfusion.Runtime.InteropServices.NativeMethods.MSG);
			while (childMenuUI != null)
			{
				Syncfusion.Runtime.InteropServices.NativeMethods.MsgWaitForMultipleObjects(0, new IntPtr[0], bWaitAll: false, uint.MaxValue, 1279);
				bool flag2 = Syncfusion.Runtime.InteropServices.NativeMethods.PeekMessage(ref msg, IntPtr.Zero, 516, 516, 0);
				if (!flag2)
				{
					flag2 = Syncfusion.Runtime.InteropServices.NativeMethods.PeekMessage(ref msg, IntPtr.Zero, 513, 513, 0);
				}
				if (!flag2)
				{
					flag2 = Syncfusion.Runtime.InteropServices.NativeMethods.PeekMessage(ref msg, IntPtr.Zero, 161, 161, 0);
				}
				if (!flag2)
				{
					flag2 = Syncfusion.Runtime.InteropServices.NativeMethods.PeekMessage(ref msg, IntPtr.Zero, 164, 164, 0);
				}
				if (flag2)
				{
					Control control = Control.FromHandle(msg.hwnd);
					if (PopupManager.ActivePopupClient == null || !PopupManager.ActivePopupClient.IsRelatedControl(control, askPopupParent: true))
					{
						Hide();
						break;
					}
				}
				Application.DoEvents();
			}
		}
		return menuGrid;
	}

	[DocumentationExclude]
	public virtual Control GetPopupParentControl()
	{
		if (popupParent != null)
		{
			return popupParent.GetPopupParentControl();
		}
		return menuParentControl;
	}

	public bool ProcessShortcut(Keys key)
	{
		return ProcessShortcut(key, null);
	}

	public bool ProcessShortcut(Keys key, Control control)
	{
		if (parentBarItem != null)
		{
			BarItem barItem = parentBarItem.FindProcessableItemWithShortcut(key);
			if (barItem != null)
			{
				if (!IsShowing())
				{
					SourceControl = control;
				}
				barItem.PerformClick();
				return true;
			}
			return false;
		}
		return false;
	}

	[DocumentationExclude]
	public virtual void ChildClosing(IPopupChild childUI, PopupCloseType popupCloseType)
	{
		if (popupParent != null)
		{
			popupParent.ChildClosing(childUI, popupCloseType);
		}
		if (cachedParentForm != null)
		{
			BarManager.OnStoppingMenuNavigation(cachedParentForm, menuParentControl);
		}
		if (this.Collapse != null)
		{
			this.Collapse(this, EventArgs.Empty);
		}
		cachedParentForm = null;
		childMenuUI = null;
		curPopupParentRect = Rectangle.Empty;
		curPopupLoc = Point.Empty;
		popupParent = null;
	}

	[DocumentationExclude]
	public Point[] GetBorderOverlapCue(PopupRelativeAlignment rAlignment)
	{
		if (popupParent != null)
		{
			return popupParent.GetBorderOverlapCue(rAlignment);
		}
		if (curPopupParentRect == Rectangle.Empty)
		{
			return null;
		}
		return PopupUtils.ComputeDefaultBorderOverlapCue(rAlignment, curPopupParentRect);
	}

	[DocumentationExclude]
	public Point GetLocationForPopupAlignment(PopupRelativeAlignment prevAlign, out PopupRelativeAlignment newAlign)
	{
		Point empty = Point.Empty;
		if (popupParent != null)
		{
			return popupParent.GetLocationForPopupAlignment(prevAlign, out newAlign);
		}
		bool isRightToLeft = ((IPopupParent)this).IsRightToLeft;
		if (curPopupParentRect.IsEmpty)
		{
			newAlign = (isRightToLeft ? PopupRelativeAlignment.BottomRight : PopupRelativeAlignment.Default);
			return curPopupLoc;
		}
		return PopupUtils.ComputeDefaultTopBottomAlignment(prevAlign, out newAlign, curPopupParentRect, isRightToLeft);
	}

	private bool ProcessMouseMessage(IntPtr hWnd, IntPtr wParam, IntPtr lParam)
	{
		Control control = Control.FromHandle(hWnd);
		if ((PopupManager.ActivePopupClient == null || !PopupManager.ActivePopupClient.IsRelatedControl(control, askPopupParent: true)) && IsShowing())
		{
			MenuGrid menuGrid = childMenuUI as MenuGrid;
			if (menuGrid != null)
			{
				menuGrid.IsMouseMessage = true;
			}
			Hide();
			if (menuGrid != null)
			{
				menuGrid.IsMouseMessage = false;
			}
			return true;
		}
		return false;
	}

	[DocumentationExclude]
	protected virtual Control GetParentControl()
	{
		return menuParentControl;
	}

	protected virtual void OnBeforePopup(CancelMouseEventArgs e)
	{
		if (this.BeforePopup != null)
		{
			this.BeforePopup(this, e);
		}
	}

	internal bool ShouldHidePopupOnDeactivate()
	{
		bool result = true;
		if (childMenuUI != null && childMenuUI is MenuGrid menuGrid && menuGrid.HighlightRange != GridRangeInfo.Empty)
		{
			BarItem barItem = menuGrid.ParentItem.Items[menuGrid.HighlightRange.Top - 1];
			if (menuGrid.IsItemDropDownStyle(barItem) || barItem is DropDownBarItem)
			{
				result = false;
			}
		}
		return result;
	}

	internal IPopupChild ShowPopupMenuWithPCCAsParent(Point pos, PopupControlContainer pcc)
	{
		if (parentBarItem == null)
		{
			return null;
		}
		MenuGrid menuGrid = (MenuGrid)(pcc.CurrentPopupChild = XPMenuGridFactory.GetMenuGridToDeploy());
		menuGrid.Show(parentBarItem, pos, pcc, setDefaultSelection: false);
		if (!menuGrid.IsShowing())
		{
			ChildClosing(menuGrid, PopupCloseType.Canceled);
			return null;
		}
		return menuGrid;
	}

	[DocumentationExclude]
	public bool PreFilterMessage(ref Message m)
	{
		if (m.Msg == 513 || m.Msg == 516)
		{
			return ProcessMouseMessage(m.HWnd, m.WParam, m.LParam);
		}
		return false;
	}
}
