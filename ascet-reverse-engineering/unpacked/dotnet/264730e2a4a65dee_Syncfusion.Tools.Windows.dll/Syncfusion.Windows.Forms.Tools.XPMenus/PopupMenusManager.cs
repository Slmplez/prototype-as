using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using Syncfusion.Core.Licensing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Tools.XPMenus;

[ProvideProperty("XPContextMenu", typeof(Control))]
[ToolboxItemFilter("System.Windows.Forms")]
[Description("Manages the activation of Popup Menus in a control.")]
[ToolboxBitmap(typeof(CommandBar), "ToolboxIcons.PopupMenusManager.bmp")]
public class PopupMenusManager : Component, IExtenderProvider, IIgnoreWorkingArea
{
	private Hashtable contextMenus;

	private Hashtable cmPlaceHoldersByControl;

	private bool disposed;

	private bool m_bIgnoreWorkingArea;

	private Control parentForm;

	[Description("Specifies whether to ignore the working area.")]
	[DefaultValue(false)]
	public bool IgnoreWorkingArea
	{
		get
		{
			return m_bIgnoreWorkingArea;
		}
		set
		{
			if (m_bIgnoreWorkingArea == value)
			{
				return;
			}
			m_bIgnoreWorkingArea = value;
			if (contextMenus == null || contextMenus.Count <= 0)
			{
				return;
			}
			foreach (object key in contextMenus.Keys)
			{
				if (contextMenus[key] is PopupMenu popupMenu)
				{
					popupMenu.IgnoreWorkingArea = value;
				}
			}
		}
	}

	[Browsable(false)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public Control ParentForm
	{
		get
		{
			if (parentForm == null && base.DesignMode)
			{
				IDesignerHost designerHost = Site.Container as IDesignerHost;
				Form form = designerHost.RootComponent as Form;
				parentForm = form;
			}
			return parentForm;
		}
		set
		{
			UnWireParentForm(parentForm);
			parentForm = value;
			WireParentForm(parentForm);
		}
	}

	public PopupMenusManager()
	{
		try
		{
			AppDomain.CurrentDomain.AssemblyResolve += ToolsWindowsAssembly.AssemblyResolver;
			new LicensedComponent(typeof(PopupMenusManager));
		}
		finally
		{
			AppDomain.CurrentDomain.AssemblyResolve -= ToolsWindowsAssembly.AssemblyResolver;
		}
		contextMenus = new Hashtable();
		cmPlaceHoldersByControl = new Hashtable();
	}

	public PopupMenusManager(IContainer container)
		: this()
	{
		container?.Add(this);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			if (contextMenus != null)
			{
				ArrayList arrayList = new ArrayList();
				foreach (Control key in contextMenus.Keys)
				{
					arrayList.Add(key);
				}
				foreach (Control item in arrayList)
				{
					DetachContextMenu(item);
				}
			}
			contextMenus = null;
			disposed = true;
		}
		base.Dispose(disposing);
	}

	public void SetXPContextMenu(Control control, PopupMenu contextMenu)
	{
		if ((contextMenus[control] != null && contextMenus[control] != contextMenu) || contextMenu == null)
		{
			DetachContextMenu(control);
		}
		if (control != null && contextMenu != null)
		{
			AttachContextMenu(control, contextMenu);
		}
	}

	[Category("XP Menus")]
	[DefaultValue(null)]
	public PopupMenu GetXPContextMenu(Control control)
	{
		return contextMenus[control] as PopupMenu;
	}

	[DocumentationExclude]
	protected virtual void AttachContextMenu(Control control, PopupMenu contextMenu)
	{
		if (disposed)
		{
			return;
		}
		if (!contextMenus.Contains(control) && !base.DesignMode)
		{
			ContextMenuPlaceHolder contextMenuPlaceHolder = control.ContextMenu as ContextMenuPlaceHolder;
			if (contextMenuPlaceHolder == null)
			{
				Form form = control.FindForm();
				if (form != null)
				{
					contextMenuPlaceHolder = form.ContextMenu as ContextMenuPlaceHolder;
				}
			}
			if (contextMenuPlaceHolder == null)
			{
				contextMenuPlaceHolder = new ContextMenuPlaceHolder();
			}
			contextMenuPlaceHolder.InitContextMenuSettings(this, control);
			cmPlaceHoldersByControl[control] = contextMenuPlaceHolder;
		}
		contextMenu.IgnoreWorkingArea = IgnoreWorkingArea;
		contextMenus[control] = contextMenu;
	}

	[DocumentationExclude]
	protected virtual void DetachContextMenu(Control control)
	{
		if (!disposed)
		{
			contextMenus.Remove(control);
			if (cmPlaceHoldersByControl.Contains(control))
			{
				ContextMenuPlaceHolder contextMenuPlaceHolder = cmPlaceHoldersByControl[control] as ContextMenuPlaceHolder;
				contextMenuPlaceHolder.ReleaseContextMenuSettings();
				cmPlaceHoldersByControl.Remove(control);
			}
		}
	}

	protected void WireParentForm(Control parentForm)
	{
		if (parentForm != null)
		{
			parentForm.MouseUp += OnParentFormMouseUp;
		}
	}

	protected void UnWireParentForm(Control parentForm)
	{
		if (parentForm != null)
		{
			parentForm.MouseUp -= OnParentFormMouseUp;
		}
	}

	protected bool ShouldSerializeParentForm()
	{
		if (parentForm == null)
		{
			return false;
		}
		return true;
	}

	protected void ResetParentForm()
	{
		parentForm = null;
	}

	internal bool OnContextMenu(Control control, Point pt, PopupMenu popupMenu)
	{
		bool flag = true;
		if (disposed || popupMenu == null)
		{
			flag = false;
		}
		else
		{
			Form form = control.FindForm();
			if (form != null)
			{
				BarManager managerFromForm = BarManager.GetManagerFromForm(form);
				if (managerFromForm != null)
				{
					MainFrameBarManager mainFrameBarManager = managerFromForm.MainFrameBarManager;
					Control childAtPoint = control.GetChildAtPoint(pt);
					if (childAtPoint != null && mainFrameBarManager != null && childAtPoint.Visible && mainFrameBarManager.DetachedCommandBars != null && mainFrameBarManager.DetachedCommandBars.Contains(childAtPoint) && contextMenus[childAtPoint] != popupMenu)
					{
						flag = false;
					}
				}
			}
			if (flag)
			{
				popupMenu.Show(control, pt);
			}
		}
		return flag;
	}

	internal bool OnContextMenu(Control control, Point pt)
	{
		if (disposed)
		{
			return false;
		}
		if (contextMenus[control] is PopupMenu popupMenu)
		{
			return OnContextMenu(control, pt, popupMenu);
		}
		return false;
	}

	private void OnParentFormMouseUp(object sender, MouseEventArgs e)
	{
		if (e.Button == MouseButtons.Right)
		{
			OnContextMenu(ParentForm, new Point(e.X, e.Y));
		}
	}

	bool IExtenderProvider.CanExtend(object target)
	{
		if (target is Control)
		{
			return true;
		}
		return false;
	}
}
