using System;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripExItemBehavior : Behavior
{
	private static Type m_tToolStripItemDataObject;

	static ToolStripExItemBehavior()
	{
		m_tToolStripItemDataObject = Type.GetType("System.Windows.Forms.Design.ToolStripItemDataObject, System.Design");
	}

	public override bool OnMouseEnter(Glyph g)
	{
		if (g is ToolStripExItemGlyph toolStripExItemGlyph)
		{
			toolStripExItemGlyph.UpdateBorder(bHighlight: true);
		}
		return false;
	}

	public override bool OnMouseLeave(Glyph g)
	{
		if (g is ToolStripExItemGlyph toolStripExItemGlyph)
		{
			toolStripExItemGlyph.UpdateBorder(bHighlight: false);
		}
		return false;
	}

	public override bool OnMouseMove(Glyph g, MouseButtons button, Point mouseLoc)
	{
		bool result = false;
		if (g is ToolStripExItemGlyph toolStripExItemGlyph)
		{
			toolStripExItemGlyph.UpdateBorder(bHighlight: true);
			if (IsSelected(toolStripExItemGlyph.Item))
			{
				ComponentGlyph baseGlyph = toolStripExItemGlyph.BaseGlyph;
				if (baseGlyph != null && baseGlyph.Behavior != null)
				{
					result = baseGlyph.Behavior.OnMouseMove(baseGlyph, button, mouseLoc);
				}
			}
		}
		return result;
	}

	public override bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
	{
		if (g is ToolStripExItemGlyph { BaseGlyph: { Behavior: not null } baseGlyph })
		{
			baseGlyph.Behavior.OnMouseDown(baseGlyph, button, mouseLoc);
		}
		return false;
	}

	public override bool OnMouseUp(Glyph g, MouseButtons button)
	{
		if (g is ToolStripExItemGlyph { BaseGlyph: { Behavior: not null } baseGlyph })
		{
			baseGlyph.Behavior.OnMouseUp(baseGlyph, button);
		}
		return false;
	}

	public override void OnDragEnter(Glyph g, DragEventArgs e)
	{
		e.Effect = DragDropEffects.None;
		if (m_tToolStripItemDataObject != null && m_tToolStripItemDataObject.IsInstanceOfType(e.Data) && g is ToolStripExItemGlyph { Item: not null, RelatedComponent: ToolStripItem relatedComponent } toolStripExItemGlyph)
		{
			ToolStripDesignerProxy.DragItem = relatedComponent;
			toolStripExItemGlyph.UpdateBorder(bHighlight: true);
			e.Effect = ((Control.ModifierKeys == Keys.Control) ? DragDropEffects.Copy : DragDropEffects.Move);
		}
	}

	public override void OnDragLeave(Glyph g, EventArgs e)
	{
		if (g is ToolStripExItemGlyph toolStripExItemGlyph)
		{
			toolStripExItemGlyph.UpdateBorder(bHighlight: false);
		}
	}

	public override void OnDragOver(Glyph g, DragEventArgs e)
	{
		e.Effect = DragDropEffects.None;
		if (m_tToolStripItemDataObject != null && m_tToolStripItemDataObject.IsInstanceOfType(e.Data) && g is ToolStripExItemGlyph toolStripExItemGlyph)
		{
			toolStripExItemGlyph.UpdateBorder(bHighlight: true);
			e.Effect = ((Control.ModifierKeys == Keys.Control) ? DragDropEffects.Copy : DragDropEffects.Move);
		}
	}

	public override void OnDragDrop(Glyph g, DragEventArgs e)
	{
		if (g is ToolStripExItemGlyph { BaseGlyph: { Behavior: not null } baseGlyph })
		{
			baseGlyph.Behavior.OnDragDrop(baseGlyph, e);
		}
	}

	private bool IsSelected(ToolStripItem item)
	{
		return DesignerUtils.GetSelectionService(item)?.GetComponentSelected(item) ?? false;
	}
}
