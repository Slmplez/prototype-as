using System.ComponentModel;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

[ToolStripItemDesignerAvailability(ToolStripItemDesignerAvailability.None)]
public abstract class CustomDropDownButtonBase : ToolStripDropDownButton
{
	private ToolStripPanelItem m_panel;

	public ToolStripPanelItem Panel
	{
		get
		{
			if (m_panel == null)
			{
				m_panel = new ToolStripPanelItem(bUseStandardLayout: true);
				m_panel.AutoSize = false;
				m_panel.Transparent = false;
				base.DropDown.Items.Add(m_panel);
			}
			return m_panel;
		}
	}

	public override bool HasDropDownItems => true;

	internal abstract ToolStripEx ToolStrip { get; }

	public CustomDropDownButtonBase()
	{
		base.AutoSize = false;
		base.TextImageRelation = TextImageRelation.ImageAboveText;
		base.DropDown = new ToolStripDropDown();
		base.DropDown.Opening += DropDown_Opening;
		base.DropDownDirection = ToolStripDropDownDirection.BelowRight;
	}

	private void DropDown_Opening(object sender, CancelEventArgs e)
	{
		ToolStripEx toolStrip = ToolStrip;
		if (toolStrip != null)
		{
			base.DropDown.Renderer = toolStrip.Renderer;
			Panel.AutoSize = false;
			Panel.RightToLeft = toolStrip.RightToLeft;
			Panel.ToolStrip.LayoutStyle = toolStrip.LayoutStyle;
			Panel.ToolStrip.Text = toolStrip.Text;
			Panel.ToolStrip.Font = toolStrip.Font;
			Panel.ToolStrip.ShowCaption = toolStrip.ShowCaptionInternal;
			Panel.ToolStrip.CaptionFont = toolStrip.CaptionFont;
			Panel.ToolStrip.CaptionStyle = toolStrip.CaptionStyle;
			Panel.ToolStrip.CaptionTextStyle = toolStrip.CaptionTextStyle;
			Panel.ToolStrip.CaptionAlignment = toolStrip.CaptionAlignment;
			Panel.ToolStrip.CaptionTextStyle = toolStrip.CaptionTextStyle;
			Panel.ToolStrip.LauncherStyle = toolStrip.LauncherStyle;
			Panel.ToolStrip.ShowLauncher = toolStrip.ShowLauncher;
			Panel.ToolStrip.GroupedButtons = toolStrip.GroupedButtons;
			Panel.ToolStrip.ImageScalingSize = toolStrip.ImageScalingSize;
			if (sender is ToolStripDropDown toolStripDropDown && toolStripDropDown.OwnerItem is QuickToolstripReflectable)
			{
				Panel.Size = Panel.GetPreferredSize(Size.Empty);
			}
			else
			{
				Panel.Size = Panel.GetPreferredSize(toolStrip.ExpandedSize);
			}
		}
	}
}
