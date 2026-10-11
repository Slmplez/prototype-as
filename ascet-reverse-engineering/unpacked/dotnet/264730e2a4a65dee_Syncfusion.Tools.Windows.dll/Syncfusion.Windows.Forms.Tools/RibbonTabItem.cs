using System;
using System.ComponentModel;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public class RibbonTabItem : ToolStripButton, IToolStripTabItem
{
	private const int DEF_ITEM_WIDTH = 42;

	private RibbonTabPage m_page;

	[Browsable(false)]
	public RibbonTabPage Page
	{
		get
		{
			return m_page;
		}
		set
		{
			if (value == null)
			{
				throw new ArgumentNullException("Page");
			}
			m_page = value;
		}
	}

	public RibbonTabItem(RibbonTabPage page)
		: this()
	{
		if (page == null)
		{
			throw new ArgumentNullException("page");
		}
		m_page = page;
	}

	public RibbonTabItem()
	{
		Text = base.Name;
		base.Width = 42;
		base.AutoSize = true;
	}

	public void Activate()
	{
		if (!base.Checked)
		{
			base.Checked = true;
		}
	}

	protected override void OnClick(EventArgs e)
	{
		base.OnClick(e);
		Activate();
	}
}
