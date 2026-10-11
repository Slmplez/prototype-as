using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class RibbonTabPageDesigner : ParentControlDesigner
{
	private RibbonTabPage m_control;

	private DesignerVerbCollection m_verbs = new DesignerVerbCollection();

	private static Pen _adornmentsBorderPen;

	public override DesignerVerbCollection Verbs => m_verbs;

	static RibbonTabPageDesigner()
	{
		_adornmentsBorderPen = new Pen(Color.Gray);
		_adornmentsBorderPen.DashStyle = DashStyle.Dash;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonTabPage)base.Component;
		if (m_control.Site != null && m_control.Site.GetService(typeof(DesignerActionService)) is DesignerActionService designerActionService)
		{
			designerActionService.Clear();
		}
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		base.OnPaintAdornments(pe);
		pe.Graphics.DrawRectangle(_adornmentsBorderPen, 0, 0, m_control.Width - 1, m_control.Height - 1);
	}
}
