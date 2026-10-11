using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;
using System.Windows.Forms.Design.Behavior;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonHeaderControlDesigner : ParentControlDesigner, IHeaderDesigner
{
	private RibbonHeaderControl m_control;

	private DesignerVerbCollection m_verbs = new DesignerVerbCollection();

	private HeaderControlGlyph m_headerGlyph;

	private HeaderControlBehavior m_headerBehavior;

	private DesignerActionListCollection m_actionList = new DesignerActionListCollection();

	private static Pen _adornmentsBorderPen;

	public override DesignerVerbCollection Verbs => m_verbs;

	public override DesignerActionListCollection ActionLists => m_actionList;

	static RibbonHeaderControlDesigner()
	{
		_adornmentsBorderPen = new Pen(Color.Gray);
		_adornmentsBorderPen.DashStyle = DashStyle.Dash;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonHeaderControl)base.Component;
		m_control.TabChanged += M_control_TabChanged;
		m_headerBehavior = new HeaderControlBehavior(m_control, base.BehaviorService);
		m_headerGlyph = new HeaderControlGlyph(m_control, base.BehaviorService, m_headerBehavior);
	}

	protected override void Dispose(bool disposing)
	{
		m_control.TabChanged -= M_control_TabChanged;
		base.Dispose(disposing);
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		base.OnPaintAdornments(pe);
		pe.Graphics.DrawRectangle(_adornmentsBorderPen, 0, 0, m_control.Width - 1, m_control.Height - 1);
	}

	public override GlyphCollection GetGlyphs(GlyphSelectionType selectiontype)
	{
		GlyphCollection glyphs = base.GetGlyphs(selectiontype);
		glyphs.Add(m_headerGlyph);
		return glyphs;
	}

	public void M_control_TabChanged(object sender, RibbonTabItemChangedEventArgs args)
	{
		ISite site = m_control.Site;
		if (site != null)
		{
			IComponentChangeService componentChangeService = site.GetService(typeof(IComponentChangeService)) as IComponentChangeService;
			componentChangeService.OnComponentChanged(args.NewItem, null, null, null);
		}
	}

	public RibbonHeaderControlDesigner GetTabHeaderDesigner()
	{
		return this;
	}
}
