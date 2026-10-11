using System.ComponentModel;
using System.Windows.Forms;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar.Design;
using Syncfusion.Windows.Forms.Tools.Controls.RibbonTabControl.Interfaces;

namespace Syncfusion.Windows.Forms.Tools.Controls.RibbonTabBar;

[ToolboxItem(false)]
[Designer(typeof(RibbonTabBarDesigner))]
public class RibbonTabBar : Syncfusion.Windows.Forms.Tools.RibbonTabControl
{
	private IContainer components;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ToolStrip LeftPanel => ((RibbonTabBarHeader)base.Header).LeftPanel;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Content)]
	public ToolStrip TopPanel => ((RibbonTabBarHeader)base.Header).TopPanel;

	public new event RibbonTabItemChangingEventHandler TabChanging
	{
		add
		{
			base.Header.TabChanging += value;
		}
		remove
		{
			base.Header.TabChanging -= value;
		}
	}

	public new event RibbonTabItemChangedEventHandler TabChanged
	{
		add
		{
			base.Header.TabChanged += value;
		}
		remove
		{
			base.Header.TabChanged -= value;
		}
	}

	public RibbonTabBar()
	{
		InitializeComponent();
	}

	protected override IRibbonHeaderControl GetHeader()
	{
		return new RibbonTabBarHeader();
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			components.Dispose();
		}
		base.Dispose(disposing);
	}

	private void InitializeComponent()
	{
		this.components = new System.ComponentModel.Container();
		base.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
	}
}
