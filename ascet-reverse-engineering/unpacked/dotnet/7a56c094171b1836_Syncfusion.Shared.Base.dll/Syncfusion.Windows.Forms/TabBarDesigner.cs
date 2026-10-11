using System;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms;

[DocumentationExclude]
public class TabBarDesigner : ControlDesigner
{
	private int persistedSelectedIndex;

	private bool propChanged;

	private bool tabComponentSelected;

	public int PersistedSelectedIndex
	{
		get
		{
			return persistedSelectedIndex;
		}
		set
		{
			persistedSelectedIndex = value;
		}
	}

	protected override bool GetHitTest(Point point)
	{
		return tabComponentSelected;
	}

	protected override void WndProc(ref Message m)
	{
		if (m.Msg == 132)
		{
			base.WndProc(ref m);
			if ((int)m.Result == -1)
			{
				m.Result = (IntPtr)1;
			}
		}
		else
		{
			base.WndProc(ref m);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
			if (selectionService != null)
			{
				selectionService.SelectionChanged -= OnSelectionChanged;
			}
		}
		base.Dispose(disposing);
	}

	public override void Initialize(IComponent component)
	{
		if (!(component is TabBar tabBar))
		{
			throw new Exception("Error initializing TabBarDesigner. Assembly is not correctly referenced.\r\nUse \"/r\" option when starting devenv or \"-i\" for WinDes.");
		}
		base.Initialize(component);
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		if (selectionService != null)
		{
			selectionService.SelectionChanged += OnSelectionChanged;
		}
		if (tabBar != null)
		{
			tabBar.SelectedIndexChanged += OnTabSelectedIndexChanged;
			tabBar.RelativeWidthChanged += OnTabRelativeWidthChanged;
		}
		Control.PerformLayout();
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		TabBar tabBar = base.Component as TabBar;
		ISelectionService selectionService = (ISelectionService)GetService(typeof(ISelectionService));
		tabComponentSelected = false;
		if (selectionService == null)
		{
			return;
		}
		ICollection selectedComponents = selectionService.GetSelectedComponents();
		foreach (object item in selectedComponents)
		{
			if (!(item is Control) || item == tabBar)
			{
				tabComponentSelected = true;
			}
		}
		selectionService.SetSelectedComponents(selectedComponents);
		propChanged = false;
	}

	private void OnTabRelativeWidthChanged(object sender, EventArgs e)
	{
		propChanged = true;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["RelativeWidth"];
		RaiseComponentChanged(member, null, null);
	}

	private void OnTabSelectedIndexChanged(object sender, SelectedIndexEventArgs e)
	{
		if (propChanged)
		{
			propChanged = false;
			return;
		}
		((ISelectionService)GetService(typeof(ISelectionService)))?.SetSelectedComponents(new object[1] { base.Component });
		int num = PersistedSelectedIndex;
		TabBar tabBar = base.Component as TabBar;
		PersistedSelectedIndex = tabBar.SelectedIndex;
		MemberDescriptor member = TypeDescriptor.GetProperties(base.Component)["SelectedIndex"];
		RaiseComponentChanged(member, num, PersistedSelectedIndex);
	}
}
