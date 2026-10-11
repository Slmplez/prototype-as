using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Runtime.InteropServices;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ToolboxItem(false)]
internal class ContextMenuPlaceHolder : ContextMenu
{
	private PopupMenusManager manager;

	private Control control;

	private Form form;

	private ITabbedMDIManager tabbedMDIManager;

	private static bool IsNT4;

	private Point cachedMousePoisiton = Point.Empty;

	private ArrayList m_arrToolBars = new ArrayList();

	public Form MainMenuForm
	{
		get
		{
			return form;
		}
		set
		{
			if (form != value)
			{
				if (form != null && value != null)
				{
					throw new ArgumentException("Reusing ContextMenuPlaceHolder for different Forms. Improper usage, please contact vendor.");
				}
				form = value;
				if (form != null)
				{
					control = form;
					control.ContextMenu = this;
				}
				else if (IsFreeOfReferences())
				{
					Dispose();
				}
			}
		}
	}

	public ITabbedMDIManager TabbedMDIManager
	{
		get
		{
			return tabbedMDIManager;
		}
		set
		{
			if (tabbedMDIManager != value)
			{
				if (tabbedMDIManager != null && value != null)
				{
					throw new ArgumentException("Reusing ContextMenuPlaceHolder for different TabbedMDIManager. Improper usage, please contact vendor.");
				}
				tabbedMDIManager = value;
				if (tabbedMDIManager != null)
				{
					control = tabbedMDIManager.GetMDIParent();
					control.ContextMenu = this;
				}
				else if (IsFreeOfReferences())
				{
					Dispose();
				}
			}
		}
	}

	public void AddToolBar(XPToolBar toolBar)
	{
		if (toolBar == null)
		{
			throw new ArgumentNullException("toolBar");
		}
		if (!m_arrToolBars.Contains(toolBar))
		{
			m_arrToolBars.Add(toolBar);
		}
	}

	public void RemoveToolBar(XPToolBar toolBar)
	{
		if (toolBar == null)
		{
			throw new ArgumentNullException("toolBar");
		}
		if (m_arrToolBars.Contains(toolBar))
		{
			m_arrToolBars.Remove(toolBar);
		}
	}

	static ContextMenuPlaceHolder()
	{
		IsNT4 = Environment.OSVersion.Platform == PlatformID.Win32NT && Environment.OSVersion.Version.Major <= 4;
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (control != null && control.ContextMenu == this)
			{
				control.ContextMenu = null;
			}
			control = null;
		}
		base.Dispose(disposing);
	}

	public void InitContextMenuSettings(PopupMenusManager manager, Control control)
	{
		this.manager = manager;
		this.control = control;
		this.control.ContextMenu = this;
	}

	public void ReleaseContextMenuSettings()
	{
		manager = null;
		if (IsFreeOfReferences())
		{
			Dispose();
		}
	}

	protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
	{
		bool flag = false;
		if (manager != null)
		{
			PopupMenu xPContextMenu = manager.GetXPContextMenu(control);
			if (xPContextMenu != null)
			{
				if ((keyData & Keys.F10) == Keys.F10 && (Control.ModifierKeys & Keys.Shift) == Keys.Shift && (keyData & ~Keys.F10) == (Keys.ShiftKey | Keys.Shift) && !xPContextMenu.IsShowing())
				{
					bool synchronousPopup = xPContextMenu.SynchronousPopup;
					xPContextMenu.SynchronousPopup = false;
					ShowPopupMenu();
					xPContextMenu.SynchronousPopup = synchronousPopup;
					flag = true;
				}
				else if (control.Visible)
				{
					flag = xPContextMenu.ProcessShortcut(keyData, control);
				}
			}
		}
		if (!flag && MainMenuForm != null)
		{
			BarManager managerFromForm = BarManager.GetManagerFromForm(MainMenuForm);
			if (managerFromForm != null)
			{
				flag = managerFromForm.ProcessCmdKey(ref msg, keyData);
			}
		}
		if (!flag && TabbedMDIManager != null)
		{
			flag = TabbedMDIManager.ProcessCmdKey(ref msg, keyData);
		}
		if (!flag && m_arrToolBars.Count > 0)
		{
			foreach (XPToolBar arrToolBar in m_arrToolBars)
			{
				arrToolBar.ProcessShortcut(keyData);
			}
		}
		if (!flag)
		{
			flag = base.ProcessCmdKey(ref msg, keyData);
		}
		return flag;
	}

	protected override void OnPopup(EventArgs e)
	{
		if (manager != null)
		{
			PopupMenu xPContextMenu = manager.GetXPContextMenu(control);
			if (xPContextMenu != null)
			{
				bool synchronousPopup = xPContextMenu.SynchronousPopup;
				xPContextMenu.SynchronousPopup = false;
				ShowPopupMenu();
				xPContextMenu.SynchronousPopup = synchronousPopup;
			}
		}
		else if (MainMenuForm != null && MainMenuForm.ContextMenuStrip != null)
		{
			MainMenuForm.ContextMenuStrip.Show(Cursor.Position);
		}
	}

	private bool IsFreeOfReferences()
	{
		if (form == null && manager == null && tabbedMDIManager == null)
		{
			return m_arrToolBars.Count == 0;
		}
		return false;
	}

	private void ShowPopupMenu()
	{
		if (manager == null)
		{
			return;
		}
		if (base.SourceControl == null)
		{
			manager.OnContextMenu(control, GetLocation(control));
			return;
		}
		if (control == base.SourceControl)
		{
			manager.OnContextMenu(base.SourceControl, GetLocation(base.SourceControl));
			return;
		}
		PopupMenu popupMenu = null;
		bool flag = IsChildControl(base.SourceControl, control);
		if (flag)
		{
			popupMenu = manager.GetXPContextMenu(control);
		}
		else
		{
			popupMenu = manager.GetXPContextMenu(base.SourceControl);
			flag = null != popupMenu;
		}
		if (flag)
		{
			manager.OnContextMenu(base.SourceControl, GetLocation(base.SourceControl), popupMenu);
		}
	}

	private bool IsChildControl(Control childControl, Control parentControl)
	{
		if (childControl == null)
		{
			throw new ArgumentNullException("childControl");
		}
		if (parentControl == null)
		{
			throw new ArgumentNullException("parentControl");
		}
		bool result = false;
		for (Control parent = childControl.Parent; parent != null; parent = parent.Parent)
		{
			if (parent == parentControl)
			{
				result = true;
				break;
			}
		}
		return result;
	}

	private Point GetLocation(Control control)
	{
		bool flag = Syncfusion.Runtime.InteropServices.NativeMethods.GetKeyState(16) < 0;
		if (flag & (Syncfusion.Runtime.InteropServices.NativeMethods.GetKeyState(121) < 0))
		{
			if (control is IProvideCustomContextMenuPositionalInformation)
			{
				IProvideCustomContextMenuPositionalInformation provideCustomContextMenuPositionalInformation = control as IProvideCustomContextMenuPositionalInformation;
				return provideCustomContextMenuPositionalInformation.GetMenuPositionForKeyboardInvoke();
			}
			if (control is TreeView)
			{
				TreeView treeView = control as TreeView;
				if (treeView.SelectedNode != null)
				{
					Point result = new Point(treeView.SelectedNode.Bounds.X, treeView.SelectedNode.Bounds.Y + treeView.SelectedNode.Bounds.Height / 2);
					return result;
				}
			}
		}
		Point point = control.PointToClient(Control.MousePosition);
		if (!control.ClientRectangle.Contains(point))
		{
			point = new Point(control.ClientRectangle.Width / 2, control.ClientRectangle.Height / 2);
		}
		return point;
	}
}
