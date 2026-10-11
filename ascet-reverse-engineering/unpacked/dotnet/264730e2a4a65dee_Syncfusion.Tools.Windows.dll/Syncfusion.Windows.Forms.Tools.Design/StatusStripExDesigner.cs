using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class StatusStripExDesigner : ControlDesigner
{
	private class StatusStripExDesignerActionList : DesignerActionList
	{
		private StatusStripExDesigner m_designer;

		private DesignerActionItemCollection m_actionItems;

		private StatusStripEx m_control;

		public DockStyleEx Dock
		{
			get
			{
				return m_control.Dock;
			}
			set
			{
				TypeDescriptor.GetProperties(m_control)["Dock"]?.SetValue(m_control, value);
			}
		}

		public StatusStripExDesignerActionList(StatusStripEx control, StatusStripExDesigner designer)
			: base(control)
		{
			m_designer = designer;
			m_control = control;
			m_actionItems = new DesignerActionItemCollection();
			m_actionItems.Add(new DesignerActionHeaderItem("Properties", "Properties"));
			m_actionItems.Add(new DesignerActionPropertyItem("Dock", "Dock", "Properties", "Gets or sets which control borders are docked to its parent control and determines how a control is resized with its parent."));
			m_actionItems.Add(new DesignerActionHeaderItem("StatusControls items", "StatusControls items"));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusLabel", "Add StatusLabel", "StatusControls items", "Adds status label."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddProgressBar", "Add ProgressBar", "StatusControls items", "Adds progress bar."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddDropDownButton", "Add DropDownButton", "StatusControls items", "Adds dropdown button."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddSplitButton", "Add SplitButton", "StatusControls items", "Adds split button."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddPanelItem", "Add PanelItem", "StatusControls items", "Adds panel item."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddTrackBarItem", "Add TrackBarItem", "StatusControls items", "Adds track bar item."));
			m_actionItems.Add(new DesignerActionHeaderItem("Notifications items", "Notifications items"));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusStripButton", "Add StatusStripButton", "Notifications items", "Adds status strip button."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusStripLabel", "Add StatusStripLabel", "Notifications items", "Adds status strip label"));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusProgressBar", "Add StatusStrip ProgressBar", "Notifications items", "Adds status  strip progress bar."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusDropDownButton", "Add StatusStrip DropDownButton", "Notifications items", "Adds status strip dropdown button."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusSplitButton", "Add StatusStrip SplitButton", "Notifications items", "Adds status strip split button."));
			m_actionItems.Add(new DesignerActionMethodItem(this, "AddStatusPanelItem", "Add StatusStrip PanelItem", "Notifications items", "Adds status strip panel item."));
		}

		private void AddStatusLabel()
		{
			m_designer.AddItem(typeof(ToolStripStatusLabel));
		}

		private void AddDropDownButton()
		{
			m_designer.AddItem(typeof(ToolStripDropDownButton));
		}

		private void AddSplitButton()
		{
			m_designer.AddItem(typeof(ToolStripSplitButton));
		}

		private void AddPanelItem()
		{
			m_designer.AddItem(typeof(ToolStripPanelItem));
		}

		private void AddTrackBarItem()
		{
			m_designer.AddItem(typeof(TrackBarItem));
		}

		private void AddProgressBar()
		{
			m_designer.AddItem(typeof(ToolStripProgressBar));
		}

		private void AddStatusStripButton()
		{
			m_designer.AddItem(typeof(StatusStripButton));
		}

		private void AddStatusStripLabel()
		{
			m_designer.AddItem(typeof(StatusStripLabel));
		}

		private void AddStatusProgressBar()
		{
			m_designer.AddItem(typeof(StatusStripProgressBar));
		}

		private void AddStatusDropDownButton()
		{
			m_designer.AddItem(typeof(StatusStripDropDownButton));
		}

		private void AddStatusSplitButton()
		{
			m_designer.AddItem(typeof(StatusStripSplitButton));
		}

		private void AddStatusPanelItem()
		{
			m_designer.AddItem(typeof(StatusStripPanelItem));
		}

		public override DesignerActionItemCollection GetSortedActionItems()
		{
			return m_actionItems;
		}
	}

	private StatusStripEx m_control;

	private DesignerActionListCollection m_actionLists;

	private GlyphCollection m_statusStripGlyphs;

	private RibbonAdornerService m_ribbonAdornerSvc;

	private ToolStripExService m_toolStripSvc;

	public override DesignerActionListCollection ActionLists => m_actionLists;

	public StatusStripExDesigner()
	{
		m_statusStripGlyphs = new GlyphCollection();
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (StatusStripEx)component;
		if (m_control != null)
		{
			m_control.ItemAdded += OnItemAdded;
			m_actionLists = new DesignerActionListCollection();
			m_actionLists.Add(new StatusStripExDesignerActionList(m_control, this));
			m_ribbonAdornerSvc = RibbonAdornerService.Get(m_control.Site);
			m_toolStripSvc = ToolStripExService.Get(m_control.Site);
		}
		UpdateGlyphs();
	}

	private void OnItemAdded(object sender, ToolStripItemEventArgs e)
	{
		UpdateGlyphs();
	}

	private void UpdateGlyphs()
	{
		if (m_ribbonAdornerSvc == null)
		{
			return;
		}
		GlyphCollection glyphs = m_ribbonAdornerSvc.Adorner.Glyphs;
		foreach (Glyph statusStripGlyph in m_statusStripGlyphs)
		{
			glyphs.Remove(statusStripGlyph);
		}
		m_statusStripGlyphs.Clear();
		int i = 0;
		for (int count = m_control.Items.Count; i < count; i++)
		{
			ToolStripItem item = m_control.Items[i];
			ComponentGlyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(item);
			if (toolStripItemGlyph != null)
			{
				m_statusStripGlyphs.Insert(0, toolStripItemGlyph);
			}
		}
		glyphs.AddRange(m_statusStripGlyphs);
	}

	public override GlyphCollection GetGlyphs(GlyphSelectionType selectionType)
	{
		GlyphCollection glyphs = base.GetGlyphs(selectionType);
		foreach (ToolStripItem item in m_control.Items)
		{
			Glyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(item);
			if (toolStripItemGlyph != null)
			{
				glyphs.Add(toolStripItemGlyph);
			}
		}
		return glyphs;
	}

	internal void AddItem(Type itemType)
	{
		if (m_control.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			ToolStripItem toolStripItem = (ToolStripItem)designerHost.CreateComponent(itemType);
			if (toolStripItem != null)
			{
				toolStripItem.Text = toolStripItem.Name;
				m_control.Items.Add(toolStripItem);
			}
		}
	}
}
