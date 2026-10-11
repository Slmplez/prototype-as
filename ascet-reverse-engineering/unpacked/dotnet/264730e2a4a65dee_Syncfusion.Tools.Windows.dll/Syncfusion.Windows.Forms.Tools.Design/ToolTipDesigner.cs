using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class ToolTipDesigner : DocumentDesigner
{
	public class ToolTipItemBehavior : Behavior
	{
		private static ToolTipItemBehavior m_instance = new ToolTipItemBehavior();

		public static ToolTipItemBehavior Instance => m_instance;

		public override bool OnMouseDown(Glyph g, MouseButtons button, Point mouseLoc)
		{
			bool result = false;
			if (g is ToolTipItemGlyph toolTipItemGlyph)
			{
				toolTipItemGlyph.Select();
				result = true;
			}
			return result;
		}
	}

	public class ToolTipItemGlyph : Glyph
	{
		private ToolTipInfo.ToolTipItem m_item;

		private ISite m_controlSite;

		public override Rectangle Bounds
		{
			get
			{
				Rectangle result = Rectangle.Empty;
				if (m_item != null)
				{
					result = m_item.Bounds;
					if (m_controlSite != null && m_controlSite.Component is Control control && m_controlSite.GetService(typeof(BehaviorService)) is BehaviorService behaviorService)
					{
						result.Location = behaviorService.MapAdornerWindowPoint(control.Handle, result.Location);
					}
				}
				return result;
			}
		}

		public bool Selected
		{
			get
			{
				bool result = false;
				if (m_controlSite != null && m_controlSite.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
				{
					result = selectionService.GetComponentSelected(m_item);
				}
				return result;
			}
		}

		public ToolTipItemGlyph(ToolTipInfo.ToolTipItem item, ISite controlSite)
			: base(ToolTipItemBehavior.Instance)
		{
			m_item = item;
			m_controlSite = controlSite;
		}

		internal void Select()
		{
			if (m_controlSite != null && m_controlSite.GetService(typeof(ISelectionService)) is ISelectionService selectionService)
			{
				selectionService.SetSelectedComponents(new object[1] { m_item });
				if (m_controlSite.GetService(typeof(BehaviorService)) is BehaviorService behaviorService)
				{
					behaviorService.Invalidate();
				}
			}
		}

		public override void Paint(PaintEventArgs pe)
		{
			Color color = (Selected ? SystemColors.ControlText : Color.FromArgb(64, SystemColors.ControlText));
			using Pen pen = new Pen(color);
			if (!Selected)
			{
				pen.DashStyle = DashStyle.Dot;
			}
			pe.Graphics.DrawRectangle(pen, Rectangle.Inflate(Bounds, -1, -1));
		}

		public override Cursor GetHitTest(Point p)
		{
			if (Bounds.Contains(p))
			{
				return Cursors.Default;
			}
			return null;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		SubscribeToComponentEvents();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			UnsubscribeFromComponentEvents();
		}
		base.Dispose(disposing);
	}

	public override GlyphCollection GetGlyphs(GlyphSelectionType selectionType)
	{
		GlyphCollection glyphs = base.GetGlyphs(selectionType);
		if (base.Component is ToolTipControl { Info: var info } toolTipControl)
		{
			if (!info.Header.Hidden)
			{
				glyphs.Add(new ToolTipItemGlyph(info.Header, toolTipControl.Site));
			}
			if (!info.Body.Hidden)
			{
				glyphs.Add(new ToolTipItemGlyph(info.Body, toolTipControl.Site));
			}
			if (!info.Footer.Hidden)
			{
				glyphs.Add(new ToolTipItemGlyph(info.Footer, toolTipControl.Site));
			}
		}
		return glyphs;
	}

	public void SubscribeToComponentEvents()
	{
		if (base.Component is ToolTipControl toolTipControl)
		{
			toolTipControl.SizeChanged += OnSizeChanged;
			toolTipControl.PropertyChanged += OnToolTipPropertyChanged;
		}
	}

	public void UnsubscribeFromComponentEvents()
	{
		if (base.Component is ToolTipControl toolTipControl)
		{
			toolTipControl.SizeChanged -= OnSizeChanged;
			toolTipControl.PropertyChanged -= OnToolTipPropertyChanged;
		}
	}

	public void OnComponentChanged()
	{
		ISite site = base.Component.Site;
		if (site != null && site.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.OnComponentChanging(base.Component, null);
			componentChangeService.OnComponentChanged(base.Component, null, null, null);
		}
	}

	public void OnSizeChanged(object sender, EventArgs e)
	{
		OnComponentChanged();
	}

	public void OnToolTipPropertyChanged(object sender, ToolTipPropertyID id)
	{
		if (id != ToolTipPropertyID.ItemHidden || !(sender is ToolTipInfo.ToolTipItem))
		{
			return;
		}
		ToolTipInfo.ToolTipItem toolTipItem = (ToolTipInfo.ToolTipItem)sender;
		if (toolTipItem.Hidden)
		{
			ISite site = base.Component.Site;
			if (site != null && site.GetService(typeof(ISelectionService)) is ISelectionService selectionService && selectionService.GetComponentSelected(toolTipItem))
			{
				if (selectionService.SelectionCount > 1)
				{
					selectionService.SetSelectedComponents(new object[1] { toolTipItem }, SelectionTypes.Remove);
				}
				else
				{
					selectionService.SetSelectedComponents(new object[1] { base.Component }, SelectionTypes.Replace);
				}
			}
		}
		OnComponentChanged();
	}
}
