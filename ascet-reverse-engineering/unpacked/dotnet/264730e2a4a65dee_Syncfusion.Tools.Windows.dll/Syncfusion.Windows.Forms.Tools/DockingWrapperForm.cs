using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Documentation;
using Syncfusion.Runtime.InteropServices;
using Syncfusion.Windows.Forms.Tools.XPMenus;

namespace Syncfusion.Windows.Forms.Tools;

[DocumentationExclude]
public class DockingWrapperForm : Office2007Form, ITabbedMDIChildForm
{
	protected DockingManager dockingManager;

	public Control ctrlChildRef;

	public BarItem dockable;

	public BarItem floating;

	public BarItem hideItem;

	public BarItem autohideitem;

	public BarItem mdichilditem;

	protected TabbedMDIManager tabbedMDIManager;

	protected bool originalCloseItemVisibility = true;

	public bool bInCloseProc;

	protected bool bClosing;

	bool ITabbedMDIChildForm.AllowUserDrag => true;

	public DockingWrapperForm(DockingManager dockingmanager, Control dockcontrol)
	{
		dockingManager = dockingmanager;
		DisableOffice2007Style = !dockingManager.Office2007MdiChildForm;
		ctrlChildRef = dockcontrol;
		dockcontrol.GotFocus += dockcontrol_GotFocus;
		dockcontrol.LostFocus += dockcontrol_LostFocus;
		dockable = new BarItem(SR.GetString("DockableMenuItemText"));
		dockable.Tag = this;
		hideItem = new BarItem(SR.GetString("HideMenuItemText"));
		hideItem.Tag = this;
		if (!dockingManager.DisallowFloating && dockingManager.GetAllowFloating(dockcontrol))
		{
			floating = new BarItem(SR.GetString("FloatingMenuItemText"));
			floating.Tag = this;
		}
		mdichilditem = new BarItem(SR.GetString("MDIChildMenuItemText"));
		autohideitem = new BarItem(SR.GetString("AutoHideMenuItemText"));
		base.ClientSize = new Size(552, 301);
		if (dockcontrol.Name != string.Empty)
		{
			base.Name = "DockingWrapperForm_" + dockcontrol.Name;
		}
		if (dockcontrol is Form)
		{
			Form form = dockcontrol as Form;
			base.Menu = form.Menu;
			base.ControlBox = form.ControlBox;
		}
	}

	private void dockcontrol_LostFocus(object sender, EventArgs e)
	{
		if (dockingManager.ActiveControl == ctrlChildRef)
		{
			dockingManager.SetActiveControl(null);
		}
	}

	private void dockcontrol_GotFocus(object sender, EventArgs e)
	{
		SetDMActiveControl();
	}

	void ITabbedMDIChildForm.OnAttachTabbedMDI(TabbedMDIManager manager)
	{
		tabbedMDIManager = manager;
	}

	void ITabbedMDIChildForm.OnDetachTabbedMDI(TabbedMDIManager manager)
	{
		tabbedMDIManager = null;
	}

	void ITabbedMDIChildForm.OnTabContextMenuPopup(ParentBarItem contextMenuParentItem)
	{
		if (dockingManager == null || !dockingManager.EnableContextMenu)
		{
			return;
		}
		foreach (BarItem item in contextMenuParentItem.Items)
		{
			if (item == tabbedMDIManager.CloseItem)
			{
				originalCloseItemVisibility = item.Visible;
				item.Visible = false;
			}
		}
		if (floating != null && !dockingManager.DisallowFloating && dockingManager.GetAllowFloating(ctrlChildRef))
		{
			contextMenuParentItem.Items.Insert(0, floating);
		}
		contextMenuParentItem.Items.Insert(0, hideItem);
		contextMenuParentItem.Items.Insert(0, dockable);
		PopupMenu popupMenu = new PopupMenu();
		popupMenu.ParentBarItem = contextMenuParentItem;
		popupMenu.ParentBarItem.Style = dockingManager.VisualStyle;
		DockContextMenuEventArgs arg = new DockContextMenuEventArgs(ctrlChildRef, popupMenu);
		dockingManager.OnDockContextMenu(arg);
		popupMenu.ParentBarItem = null;
	}

	void ITabbedMDIChildForm.OnTabContextMenuClosed(ParentBarItem contextMenuParentItem)
	{
		if (dockingManager == null)
		{
			return;
		}
		foreach (BarItem item in contextMenuParentItem.Items)
		{
			if (item == tabbedMDIManager.CloseItem)
			{
				item.Visible = originalCloseItemVisibility;
			}
		}
		if (floating != null)
		{
			contextMenuParentItem.Items.Remove(floating);
		}
		contextMenuParentItem.Items.Remove(hideItem);
		contextMenuParentItem.Items.Remove(dockable);
	}

	void ITabbedMDIChildForm.OnMdiChildAddedToTabHost(TabHost tabHost, int tabIndex)
	{
	}

	string ITabbedMDIChildForm.GetCustomTabText(out bool validValueReturned)
	{
		validValueReturned = false;
		return null;
	}

	protected override void OnClosing(CancelEventArgs e)
	{
		if (base.Controls != null && base.Controls.Count > 0 && base.Controls[0] != null && dockingManager != null)
		{
			DockVisibilityChangingEventArgs e2 = new DockVisibilityChangingEventArgs(base.Controls[0]);
			dockingManager.FireDockVisibilityChangingEvent(e2);
			dockingManager.bFiredVisibilityChangingEvent = !dockingManager.HoldEvents;
			if (e2.Cancel)
			{
				dockingManager.bCancelVisibilityChangingEvent = true;
				dockingManager.bFiredVisibilityChangingEvent = false;
				if (!dockingManager.bHostFormClosing)
				{
					e.Cancel = true;
				}
			}
			else
			{
				dockingManager.bCancelVisibilityChangingEvent = false;
			}
			if (bClosing)
			{
				if (!dockingManager.bHostFormClosing)
				{
					e.Cancel = e2.Cancel;
				}
				dockingManager.bCancelVisibilityChangingEvent |= e.Cancel;
				bClosing = false;
			}
		}
		base.OnClosing(e);
	}

	protected override void OnClosed(EventArgs e)
	{
		if (!dockingManager.bCancelVisibilityChangingEvent)
		{
			dockingManager.SaveMdiZOrder();
			if (ctrlChildRef != null)
			{
				dockingManager.bMdiFormClosing = true;
				bInCloseProc = true;
				DockHostController dockHostController = dockingManager.GetDockHostController(ctrlChildRef);
				if (dockHostController != null)
				{
					dockHostController.Closing = true;
				}
				dockingManager.SetDockVisibility(ctrlChildRef, bvisible: false);
				if (dockHostController != null)
				{
					dockHostController.Closing = false;
				}
				dockingManager.bMdiFormClosing = false;
			}
		}
		base.OnClosed(e);
	}

	protected override void OnGotFocus(EventArgs e)
	{
		if (base.Controls.Count > 0)
		{
			dockingManager.SetActiveControl(base.Controls[0]);
		}
		base.OnGotFocus(e);
	}

	protected override void WndProc(ref Message msg)
	{
		switch (msg.Msg)
		{
		case 33:
			if (base.Controls.Count > 0 && dockingManager.ActiveControl != base.Controls[0] && base.Controls[0] != null)
			{
				SetDMActiveControl();
				base.Controls[0].Focus();
			}
			break;
		case 165:
			if ((int)msg.WParam == 2 && dockingManager != null && dockingManager.EnableContextMenu)
			{
				InitializeMenu(msg);
			}
			break;
		case 274:
			if (msg.WParam.ToInt32() == 61472)
			{
				Form[] ownedForms = base.OwnedForms;
				for (int i = 0; i < ownedForms.Length; i++)
				{
					FloatingForm floatingForm = (FloatingForm)ownedForms[i];
					if (floatingForm.Visible)
					{
						floatingForm.Visible = false;
					}
				}
			}
			if (msg.WParam.ToInt32() == 61728)
			{
				Form[] ownedForms2 = base.OwnedForms;
				for (int j = 0; j < ownedForms2.Length; j++)
				{
					FloatingForm floatingForm2 = (FloatingForm)ownedForms2[j];
					if (!floatingForm2.Visible)
					{
						floatingForm2.Visible = true;
					}
				}
			}
			if (msg.WParam.ToInt32() == 61536)
			{
				bClosing = true;
			}
			break;
		}
		base.WndProc(ref msg);
	}

	protected void InitializeMenu(Message msg)
	{
		int n = (int)msg.LParam;
		InitializeMenu(PointToClient(new Point(Syncfusion.Runtime.InteropServices.NativeMethods.LOWORD(n), Syncfusion.Runtime.InteropServices.NativeMethods.HIWORD(n))));
	}

	protected internal void InitializeMenu()
	{
		InitializeMenu(Point.Empty);
	}

	protected internal void InitializeMenu(Point ptclient)
	{
		PopupMenu popupMenu = new PopupMenu();
		popupMenu.ParentBarItem = new ParentBarItem();
		popupMenu.ParentBarItem.Style = dockingManager.VisualStyle;
		popupMenu.ParentBarItem.Items.Add(dockable);
		if (dockingManager.EnableContextMenu)
		{
			popupMenu.ParentBarItem.Items.Add(hideItem);
			if (floating != null && dockingManager.GetAllowFloating(base.Controls[0]))
			{
				if (dockingManager.MenuStyle == DockMenuStyle.VS2003)
				{
					popupMenu.ParentBarItem.Items.Add(floating);
				}
				else
				{
					popupMenu.ParentBarItem.Items.Insert(0, floating);
				}
			}
		}
		if (dockingManager.MenuStyle == DockMenuStyle.VS2005)
		{
			popupMenu.ParentBarItem.Items.Insert(popupMenu.ParentBarItem.Items.Count, mdichilditem);
			popupMenu.ParentBarItem.Items.Insert(popupMenu.ParentBarItem.Items.Count, autohideitem);
			mdichilditem.Checked = true;
			autohideitem.Enabled = false;
		}
		DockContextMenuEventArgs arg = new DockContextMenuEventArgs(ctrlChildRef, popupMenu);
		dockingManager.OnDockContextMenu(arg);
		popupMenu.Show(this, ptclient);
	}

	private void SetDMActiveControl()
	{
		dockingManager.DHCInFocus = null;
		if (base.Controls.Count > 0)
		{
			dockingManager.mouseActivatedControl = null;
			dockingManager.SetActiveControl(base.Controls[0]);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (ctrlChildRef != null)
			{
				ctrlChildRef.GotFocus -= dockcontrol_GotFocus;
				ctrlChildRef.LostFocus -= dockcontrol_LostFocus;
			}
			ctrlChildRef = null;
			dockingManager = null;
		}
		base.Dispose(disposing);
	}
}
