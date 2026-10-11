using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripPanelItemGlyph : ToolStripExItemGlyph
{
	private GlyphCollection m_owner;

	private GlyphCollection m_items;

	static ToolStripPanelItemGlyph()
	{
	}

	public ToolStripPanelItemGlyph(ComponentGlyph baseGlyph, GlyphCollection glyphs)
		: base(baseGlyph)
	{
		m_owner = glyphs;
		m_items = new GlyphCollection();
		if (baseGlyph == null || !(baseGlyph.RelatedComponent is ToolStripPanelItem { Items: var items }))
		{
			return;
		}
		int i = 0;
		for (int count = items.Count; i < count; i++)
		{
			ToolStripItem toolStripItem = items[i];
			if (toolStripItem.Placement == ToolStripItemPlacement.Main)
			{
				ComponentGlyph toolStripItemGlyph = DesignerUtils.GetToolStripItemGlyph(toolStripItem);
				if (toolStripItemGlyph != null)
				{
					m_items.Add(toolStripItemGlyph);
				}
			}
		}
	}

	public override void OnInsert()
	{
		base.OnInsert();
		int num = m_owner.IndexOf(this);
		if (num < 0)
		{
			return;
		}
		foreach (Glyph item in m_items)
		{
			m_owner.Insert(num, item);
		}
	}
}
