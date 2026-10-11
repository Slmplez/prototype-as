using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Windows.Forms.Tools.Win32API;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class MenuDropDownDesigner : ControlDesigner
{
	private class MenuDropDownGlyph : ControlBodyGlyph
	{
		private MenuDropDownDesigner m_designer;

		public override Rectangle Bounds
		{
			get
			{
				if (base.RelatedComponent is Control { Visible: not false } control)
				{
					return control.Bounds;
				}
				return Rectangle.Empty;
			}
		}

		public MenuDropDownGlyph(MenuDropDownDesigner designer)
			: base(Rectangle.Empty, Cursors.Default, designer.Component, designer)
		{
			m_designer = designer;
		}

		public override Cursor GetHitTest(Point p)
		{
			if (Bounds.Contains(p))
			{
				return Cursors.Default;
			}
			return null;
		}

		public override void Paint(PaintEventArgs pe)
		{
			if (m_designer.GetService(typeof(ISelectionService)) is ISelectionService selectionService && selectionService.GetComponentSelected(base.RelatedComponent))
			{
				Rectangle rectangle = Bounds;
				if (rectangle.Width > 0 && rectangle.Height > 0)
				{
					pe.Graphics.DrawRectangle(Pens.Black, rectangle.X - 1, rectangle.Y - 1, rectangle.Width + 1, rectangle.Height + 1);
				}
			}
		}
	}

	private class MenuDropDownOpeningHandler : IDisposable
	{
		private MenuDropDown m_dropDown;

		public MenuDropDownOpeningHandler(IComponent component)
		{
			m_dropDown = component as MenuDropDown;
			if (m_dropDown != null)
			{
				m_dropDown.Opening += OnDropDownOpening;
			}
		}

		public void Dispose()
		{
			if (m_dropDown != null)
			{
				m_dropDown.Opening -= OnDropDownOpening;
			}
		}

		private void OnDropDownOpening(object sender, CancelEventArgs e)
		{
			e.Cancel = true;
		}
	}

	private MenuDropDown m_dropDown;

	private ControlBodyGlyph m_bodyGlyph;

	private DesignerActionListCollection m_actionLists;

	private RibbonAdornerService m_ribbonAdornerSvc;

	private GlyphCollection m_dropDownGlyphs;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (m_actionLists == null)
			{
				m_actionLists = new DesignerActionListCollection();
			}
			return m_actionLists;
		}
	}

	public override SelectionRules SelectionRules => SelectionRules.None;

	internal ControlBodyGlyph BodyGlyph
	{
		get
		{
			if (m_bodyGlyph == null)
			{
				m_bodyGlyph = new MenuDropDownGlyph(this);
			}
			return m_bodyGlyph;
		}
	}

	private ISelectionService SelectionService => GetService(typeof(ISelectionService)) as ISelectionService;

	private GlyphSelectionType SelectionType
	{
		get
		{
			if (SelectionService.GetComponentSelected(m_dropDown))
			{
				return GlyphSelectionType.Selected;
			}
			return GlyphSelectionType.NotSelected;
		}
	}

	public MenuDropDownDesigner()
	{
		m_dropDownGlyphs = new GlyphCollection();
	}

	public override void Initialize(IComponent component)
	{
		using (new MenuDropDownOpeningHandler(component))
		{
			base.Initialize(component);
		}
		m_dropDown = component as MenuDropDown;
		if (m_dropDown != null)
		{
			m_ribbonAdornerSvc = RibbonAdornerService.Get(m_dropDown.Site);
			m_dropDown.VisibleChanged += OnVisibleChanged;
			m_dropDown.SizeChanged += OnDropDownSizeChanged;
			UpdatePanel(m_dropDown.MainPanel);
			UpdatePanel(m_dropDown.AuxPanel);
			UpdatePanel(m_dropDown.SystemPanel);
			DesignerUtils.UpdateDropDownParent(m_dropDown);
		}
		SelectionService.SelectionChanged += OnSelectionChanged;
	}

	protected override void Dispose(bool disposing)
	{
		if (m_dropDown != null)
		{
			m_dropDown.VisibleChanged -= OnVisibleChanged;
			m_dropDown.SizeChanged -= OnDropDownSizeChanged;
		}
		ISelectionService selectionService = SelectionService;
		if (selectionService != null)
		{
			selectionService.SelectionChanged -= OnSelectionChanged;
		}
		base.Dispose(disposing);
	}

	protected override bool GetHitTest(Point point)
	{
		Point pt = m_dropDown.PointToClient(point);
		return m_dropDown.MainPanel.UpScrollBounds.Contains(pt) || m_dropDown.MainPanel.DownScrollBounds.Contains(pt) || m_dropDown.AuxPanel.UpScrollBounds.Contains(pt) || m_dropDown.AuxPanel.DownScrollBounds.Contains(pt);
	}

	protected override void WndProc(ref Message m)
	{
		switch ((Msg)m.Msg)
		{
		case Msg.WM_SETCURSOR:
			WindowsAPI.SetCursor(Cursors.Default.Handle);
			m.Result = (IntPtr)1;
			return;
		case Msg.WM_LBUTTONDOWN:
		case Msg.WM_LBUTTONUP:
		case Msg.WM_RBUTTONDOWN:
		case Msg.WM_RBUTTONUP:
			if (Control is ToolStrip toolStrip)
			{
				Point pointFromLPARAM = WindowsAPI.GetPointFromLPARAM((int)m.LParam);
				if (toolStrip.GetItemAt(pointFromLPARAM) != null)
				{
					m.Result = IntPtr.Zero;
					return;
				}
			}
			break;
		}
		base.WndProc(ref m);
	}

	private void OnSelectionChanged(object sender, EventArgs e)
	{
		if (m_dropDown.Visible)
		{
			UpdateGlyphs();
		}
	}

	private void OnVisibleChanged(object sender, EventArgs e)
	{
		UpdateGlyphs();
		if (m_dropDown.Visible)
		{
			m_dropDown.ItemAdded += OnDropDownItemAdded;
			m_dropDown.ItemRemoved += OnDropDownItemRemoved;
			m_dropDown.LayoutCompleted += OnLayoutCompleted;
			Control rootControl = DesignerUtils.GetRootControl(m_dropDown);
			if (rootControl != null)
			{
				IntPtr window = WindowsAPI.GetWindow(rootControl.Handle, GetWindowCmd.GW_HWNDPREV);
				if (window != IntPtr.Zero && window != m_dropDown.Handle)
				{
					WindowsAPI.SetWindowPos(m_dropDown.Handle, window, 0, 0, 0, 0, SetWindowPosFlags.SWP_NOSIZE | SetWindowPosFlags.SWP_NOMOVE | SetWindowPosFlags.SWP_NOACTIVATE);
				}
			}
			SelectMenuDropDownItem(null);
		}
		else
		{
			m_dropDown.ItemAdded -= OnDropDownItemAdded;
			m_dropDown.ItemRemoved -= OnDropDownItemRemoved;
			m_dropDown.LayoutCompleted -= OnLayoutCompleted;
		}
		base.BehaviorService.Invalidate();
	}

	private void OnDropDownSizeChanged(object sender, EventArgs e)
	{
		if (GetService(typeof(BehaviorService)) is BehaviorService behaviorService)
		{
			behaviorService.Invalidate();
		}
	}

	private void OnDropDownItemAdded(object sender, ToolStripItemEventArgs e)
	{
		SelectMenuDropDownItem(e.Item);
	}

	private void OnDropDownItemRemoved(object sender, ToolStripItemEventArgs e)
	{
		SelectMenuDropDownItem(m_dropDown.GetNextItem(null, ArrowDirection.Down));
	}

	private void OnLayoutCompleted(object sender, EventArgs e)
	{
		UpdateGlyphs();
	}

	private void UpdatePanel(MenuDropDown.Panel panel)
	{
		if (panel.ToolStrip is ToolStripDropDown toolStripDropDown)
		{
			ToolStripDropDownButton toolStripDropDownButton = new ToolStripDropDownButton();
			toolStripDropDownButton.Available = false;
			toolStripDropDownButton.Owner = m_dropDown.ParentToolStrip;
			toolStripDropDown.OwnerItem = toolStripDropDownButton;
		}
	}

	private void UpdateGlyphs()
	{
		if (m_ribbonAdornerSvc == null)
		{
			return;
		}
		GlyphCollection glyphs = m_ribbonAdornerSvc.Adorner.Glyphs;
		foreach (Glyph dropDownGlyph in m_dropDownGlyphs)
		{
			glyphs.Remove(dropDownGlyph);
		}
		m_dropDownGlyphs.Clear();
		if (m_dropDown != null && m_dropDown.Visible)
		{
			GlyphSelectionType selectionType = SelectionType;
			m_dropDownGlyphs.Add(GetControlGlyph(selectionType));
			m_dropDownGlyphs.AddRange(GetGlyphs(selectionType));
			UpdateGlyphs(m_dropDownGlyphs, m_dropDown.MainItems, m_dropDown.MainItemsBounds);
			UpdateGlyphs(m_dropDownGlyphs, m_dropDown.AuxItems, m_dropDown.AuxItemsBounds);
			UpdateGlyphs(m_dropDownGlyphs, m_dropDown.SystemItems, m_dropDown.SystemItemsBounds);
		}
		foreach (Glyph dropDownGlyph2 in m_dropDownGlyphs)
		{
			glyphs.Insert(0, dropDownGlyph2);
		}
	}

	private void UpdateGlyphs(GlyphCollection glyphs, ToolStripItemCollection items, Rectangle bounds)
	{
		foreach (ToolStripItem item in items)
		{
			if (bounds.Contains(item.Bounds))
			{
				Glyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(item);
				if (toolStripItemGlyph != null)
				{
					glyphs.Add(toolStripItemGlyph);
				}
			}
		}
	}

	private void SelectMenuDropDownItem(Component component)
	{
		GetService(typeof(ISelectionService));
		if (component != null)
		{
			SelectionService.SetSelectedComponents(new IComponent[1] { component }, SelectionTypes.Replace);
		}
		else
		{
			SelectionService.SetSelectedComponents(new IComponent[1] { m_dropDown }, SelectionTypes.Replace);
		}
	}

	private ToolStripItem GetItemAt(int x, int y)
	{
		Point point = m_dropDown.PointToClient(new Point(x, y));
		return m_dropDown.GetItemAt(point);
	}
}
