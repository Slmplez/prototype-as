using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class MiniToolBarDesigner : ComponentDesigner
{
	public class MiniToolBarOwnerItem : ToolStripDropDownItem
	{
		private IDesignerHost m_designerHost;

		protected override Point DropDownLocation
		{
			get
			{
				if (m_designerHost != null && m_designerHost.RootComponent is Control { DisplayRectangle: { Location: var location } } control)
				{
					foreach (Control control2 in control.Controls)
					{
						if (!control2.Visible)
						{
							continue;
						}
						switch (control2.Dock)
						{
						case DockStyle.Top:
							if (location.Y < control2.Bottom)
							{
								location.Y = control2.Bottom;
							}
							break;
						case DockStyle.Left:
							if (location.X < control2.Right)
							{
								location.X = control2.Right;
							}
							break;
						}
					}
					return control.PointToScreen(location);
				}
				return Point.Empty;
			}
		}

		public MiniToolBarOwnerItem(IDesignerHost designerHost)
		{
			m_designerHost = designerHost;
		}
	}

	private MiniToolBar m_toolBar;

	private RibbonAdornerService m_ribbonAdornerSvc;

	private ToolStripExService m_toolStripSvc;

	private GlyphCollection m_glyphs;

	private BehaviorService BehaviorService => GetService(typeof(BehaviorService)) as BehaviorService;

	public MiniToolBarDesigner()
	{
		m_glyphs = new GlyphCollection();
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_toolBar = component as MiniToolBar;
		if (m_toolBar != null)
		{
			UpdateOwnerItem();
			m_toolStripSvc = ToolStripExService.Get(m_toolBar.Site);
			m_ribbonAdornerSvc = RibbonAdornerService.Get(m_toolBar.Site);
			ISelectionService selectionService = DesignerUtils.GetSelectionService(component);
			if (selectionService != null)
			{
				selectionService.SelectionChanged += OnSelectionChanged;
			}
			m_toolBar.Opening += OnOpening;
			m_toolBar.Opened += OnOpened;
			m_toolBar.VisibleChanged += OnVisibleChanged;
			m_toolBar.LayoutCompleted += OnLayoutCompleted;
		}
	}

	protected override void Dispose(bool disposing)
	{
		ISelectionService selectionService = DesignerUtils.GetSelectionService(base.Component);
		if (selectionService != null)
		{
			selectionService.SelectionChanged -= OnSelectionChanged;
		}
		if (m_toolBar != null)
		{
			m_toolBar.Opening -= OnOpening;
			m_toolBar.Opened -= OnOpened;
			m_toolBar.VisibleChanged -= OnVisibleChanged;
			m_toolBar.LayoutCompleted -= OnLayoutCompleted;
		}
		base.Dispose(disposing);
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		if (!(base.Component is MiniToolBar miniToolBar))
		{
			return;
		}
		if (m_toolStripSvc != null)
		{
			bool isSelected = GetIsSelected(m_toolStripSvc.PrimarySelection);
			if (miniToolBar.Visible != isSelected)
			{
				if (isSelected)
				{
					Control rootControl = DesignerUtils.GetRootControl(miniToolBar);
					if (rootControl != null)
					{
						DesignerUtils.UpdateDropDownParent(miniToolBar);
						miniToolBar.Show();
					}
				}
				else
				{
					miniToolBar.Hide();
				}
			}
		}
		BehaviorService.Invalidate();
	}

	private void OnOpening(object sender, CancelEventArgs e)
	{
		e.Cancel = false;
	}

	private void OnOpened(object sender, EventArgs e)
	{
		Control rootControl = DesignerUtils.GetRootControl(m_toolBar);
		if (rootControl != null)
		{
			IntPtr window = WindowsAPI.GetWindow(rootControl.Handle, GetWindowCmd.GW_HWNDPREV);
			if (window != IntPtr.Zero && window != m_toolBar.Handle)
			{
				WindowsAPI.SetWindowPos(m_toolBar.Handle, window, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOACTIVATE);
			}
		}
	}

	private void OnVisibleChanged(object sender, EventArgs e)
	{
		if (e is HandledEventArgs e2)
		{
			e2.Handled = true;
		}
	}

	private void OnLayoutCompleted(object sender, EventArgs e)
	{
		UpdateGlyphs();
	}

	private void UpdateOwnerItem()
	{
		if (GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			ToolStripItem toolStripItem = new MiniToolBarOwnerItem(designerHost);
			if (designerHost.RootComponent is Control control)
			{
				ToolStrip toolStrip = new ToolStrip();
				toolStrip.Visible = false;
				toolStrip.Items.Add(toolStripItem);
				control.Controls.Add(toolStrip);
			}
			m_toolBar.OwnerItem = toolStripItem;
		}
	}

	private void UpdateGlyphs()
	{
		if (m_ribbonAdornerSvc == null)
		{
			return;
		}
		GlyphCollection glyphs = m_ribbonAdornerSvc.Adorner.Glyphs;
		foreach (Glyph glyph in m_glyphs)
		{
			glyphs.Remove(glyph);
		}
		m_glyphs.Clear();
		UpdateGlyphs(m_glyphs, m_toolBar.Items);
		foreach (Glyph glyph2 in m_glyphs)
		{
			glyphs.Insert(0, glyph2);
		}
	}

	private void UpdateGlyphs(GlyphCollection glyphs, ToolStripItemCollection items)
	{
		foreach (ToolStripItem item in items)
		{
			Glyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(item);
			if (toolStripItemGlyph != null)
			{
				glyphs.Add(toolStripItemGlyph);
			}
			if (item is ToolStripPanelItem toolStripPanelItem)
			{
				UpdateGlyphs(glyphs, toolStripPanelItem.Items);
			}
		}
	}

	private bool GetIsSelected(object obj)
	{
		if (!m_toolBar.Equals(obj))
		{
			return DesignerUtils.IsDropDownItem(m_toolBar, obj as ToolStripItem);
		}
		return true;
	}
}
