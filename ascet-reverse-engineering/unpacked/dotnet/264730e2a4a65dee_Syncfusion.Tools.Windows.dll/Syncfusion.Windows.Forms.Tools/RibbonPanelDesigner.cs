using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Drawing.Design;
using System.Drawing.Drawing2D;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class RibbonPanelDesigner : ParentControlDesigner
{
	private DesignerVerbCollection m_verbs = new DesignerVerbCollection();

	private RibbonPanel m_control;

	private static Pen _adornmentBorderPen;

	public override DesignerVerbCollection Verbs => m_verbs;

	public override SelectionRules SelectionRules
	{
		get
		{
			SelectionRules result = base.SelectionRules;
			if (m_control.Parent is RibbonControlAdv)
			{
				result = SelectionRules.None;
			}
			return result;
		}
	}

	static RibbonPanelDesigner()
	{
		_adornmentBorderPen = new Pen(Color.Black);
		_adornmentBorderPen.DashStyle = DashStyle.Dot;
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		m_control = (RibbonPanel)component;
		m_control.ToolStripAdded += OnToolStripAdded;
		m_control.ToolStripRemoved += OnToolStripRemoved;
		m_control.VisibleChanged += OnPanelVisibleChanged;
		m_verbs.Add(new DesignerVerb("Add ToolStrip", AddToolStrip));
		foreach (Control control in m_control.Controls)
		{
			if (control is ToolStripEx toolStrip)
			{
				OnToolStripAdded(m_control, new ToolStripEventArgs(toolStrip));
			}
		}
	}

	public void AddToolStrip(object sender, EventArgs e)
	{
		if (Control.Site != null && Control.Site.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost)
		{
			ToolStripEx toolStrip = (ToolStripEx)designerHost.CreateComponent(typeof(ToolStripEx));
			m_control.AddToolStrip(toolStrip);
		}
	}

	protected override void OnPaintAdornments(PaintEventArgs pe)
	{
		base.OnPaintAdornments(pe);
	}

	public override bool CanParent(Control control)
	{
		return control is ToolStripEx;
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		if (GetService(typeof(IToolboxService)) is IToolboxService toolboxService)
		{
			ToolboxItem selectedToolboxItem = toolboxService.GetSelectedToolboxItem((IDesignerHost)GetService(typeof(IDesignerHost)));
			if (selectedToolboxItem == null || selectedToolboxItem.TypeName == typeof(ToolStripEx).FullName)
			{
				base.OnMouseDragBegin(x, y);
			}
		}
	}

	public void OnToolStripAdded(object sender, ToolStripEventArgs args)
	{
		if (args.ToolStrip is ToolStripEx toolStripEx)
		{
			toolStripEx.StateChanging += OnTolStripStateChanging;
			toolStripEx.State = ToolStripEx.ToolStripExState.Expanded;
		}
	}

	public void OnToolStripRemoved(object sender, ToolStripEventArgs args)
	{
		if (args.ToolStrip is ToolStripEx toolStripEx)
		{
			toolStripEx.StateChanging -= OnTolStripStateChanging;
		}
	}

	public void OnPanelVisibleChanged(object sender, EventArgs e)
	{
		Control control = Control;
		if (control != null)
		{
			PropertyDescriptor propertyDescriptor = TypeDescriptor.GetProperties(control).Find("Visible", ignoreCase: false);
			bool flag = (bool)propertyDescriptor.GetValue(control);
			if (propertyDescriptor != null && flag != control.Visible)
			{
				propertyDescriptor.SetValue(control, control.Visible);
			}
		}
	}

	public void OnTolStripStateChanging(object sender, CancelEventArgs e)
	{
		if (sender is ToolStripEx { State: ToolStripEx.ToolStripExState.Expanded })
		{
			e.Cancel = true;
		}
	}
}
