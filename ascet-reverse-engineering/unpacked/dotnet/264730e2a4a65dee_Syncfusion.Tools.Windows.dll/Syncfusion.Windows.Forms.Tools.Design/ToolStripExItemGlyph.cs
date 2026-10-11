using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

internal class ToolStripExItemGlyph : ControlBodyGlyph
{
	protected bool m_bSelected;

	protected ComponentGlyph m_baseGlyph;

	protected BehaviorService m_behaviorSvc;

	protected ISelectionService m_selectionSvc;

	public ComponentGlyph BaseGlyph => m_baseGlyph;

	public ToolStripItem Item => base.RelatedComponent as ToolStripItem;

	public override Rectangle Bounds
	{
		get
		{
			Rectangle empty = Rectangle.Empty;
			if (m_behaviorSvc != null)
			{
				ToolStripItem item = Item;
				if (item != null && item.Visible)
				{
					ToolStrip currentParent = item.GetCurrentParent();
					if (currentParent != null && currentParent.IsHandleCreated)
					{
						empty = item.Bounds;
						empty.Location = m_behaviorSvc.MapAdornerWindowPoint(currentParent.Handle, empty.Location);
					}
				}
			}
			return empty;
		}
	}

	internal bool Selected
	{
		get
		{
			if (m_selectionSvc != null)
			{
				return m_selectionSvc.GetComponentSelected(base.RelatedComponent);
			}
			return false;
		}
	}

	public ToolStripExItemGlyph(ComponentGlyph baseGlyph)
		: this(baseGlyph, new ToolStripExItemBehavior())
	{
	}

	protected ToolStripExItemGlyph(ComponentGlyph baseGlyph, Behavior behavior)
		: base(Rectangle.Empty, Cursors.Default, baseGlyph.RelatedComponent, behavior)
	{
		m_behaviorSvc = DesignerUtils.GetBehaviorService(baseGlyph.RelatedComponent);
		m_selectionSvc = DesignerUtils.GetSelectionService(baseGlyph.RelatedComponent);
		m_baseGlyph = baseGlyph;
	}

	internal void UpdateBorder(bool bHighlight)
	{
		if (!Selected)
		{
			if (bHighlight)
			{
				PaintHighlightBorder();
			}
			else
			{
				InvalidateBorder();
			}
		}
	}

	public virtual void OnInsert()
	{
		if (m_bSelected = Selected)
		{
			InvalidateBorder();
		}
	}

	public virtual void OnRemove()
	{
		if (m_bSelected && !Selected)
		{
			InvalidateBorder();
		}
	}

	public override void Paint(PaintEventArgs pe)
	{
		Rectangle paintingBounds = GetPaintingBounds();
		if (!paintingBounds.IsEmpty && paintingBounds.IntersectsWith(pe.ClipRectangle))
		{
			if (Item is ToolStripComboBox && Item.IsOnDropDown)
			{
				Item.Invalidate();
			}
			if (Selected)
			{
				pe.Graphics.DrawRectangle(SystemPens.ControlText, paintingBounds);
			}
		}
	}

	public override Cursor GetHitTest(Point p)
	{
		if (Item != null && Item.Visible && Bounds.Contains(p))
		{
			return Cursors.Default;
		}
		return null;
	}

	protected Rectangle GetPaintingBounds()
	{
		Rectangle rc = Bounds;
		if (!rc.IsEmpty)
		{
			DesignerUtils.GetAdjustedBounds(Item, ref rc);
			rc.Inflate(1, 1);
			rc.Width--;
			rc.Height--;
		}
		return rc;
	}

	protected void InvalidateBorder()
	{
		if (m_behaviorSvc == null)
		{
			return;
		}
		Rectangle paintingBounds = GetPaintingBounds();
		if (!paintingBounds.IsEmpty)
		{
			paintingBounds.Width++;
			paintingBounds.Height++;
			using Region region = new Region(paintingBounds);
			paintingBounds.Inflate(-1, -1);
			region.Exclude(paintingBounds);
			m_behaviorSvc.Invalidate(region);
		}
	}

	protected void PaintHighlightBorder()
	{
		if (m_behaviorSvc == null)
		{
			return;
		}
		Rectangle paintingBounds = GetPaintingBounds();
		if (paintingBounds.IsEmpty)
		{
			return;
		}
		Graphics adornerWindowGraphics = m_behaviorSvc.AdornerWindowGraphics;
		if (adornerWindowGraphics != null)
		{
			using (Pen pen = new Pen(new SolidBrush(Color.Black)))
			{
				pen.DashStyle = DashStyle.Dot;
				adornerWindowGraphics.DrawRectangle(pen, paintingBounds);
			}
			adornerWindowGraphics.Dispose();
		}
	}
}
