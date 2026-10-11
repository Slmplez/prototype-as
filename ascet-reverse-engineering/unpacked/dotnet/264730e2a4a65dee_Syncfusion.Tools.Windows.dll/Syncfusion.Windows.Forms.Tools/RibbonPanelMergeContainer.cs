using System.ComponentModel;
using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

[ToolboxBitmap(typeof(RibbonPanelMergeContainer), "ToolboxIcons.RibbonPanelMergeContainer.bmp")]
[ToolboxItem(true)]
public class RibbonPanelMergeContainer : RibbonPanel
{
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	[Browsable(true)]
	public new Size Size
	{
		get
		{
			return base.Size;
		}
		set
		{
			base.Size = value;
		}
	}

	[Browsable(true)]
	[DesignerSerializationVisibility(DesignerSerializationVisibility.Visible)]
	public new Point Location
	{
		get
		{
			return base.Location;
		}
		set
		{
			base.Location = value;
		}
	}

	[Description("Specifies the default color scheme (Silver. Blue).")]
	protected override ToolStripEx.ColorScheme DefaultOfficeColorScheme => ToolStripEx.ColorScheme.Blue;

	[Description("Specifies the default border style.")]
	protected override ToolStripBorderStyle DefaultBorderStyle => ToolStripBorderStyle.Etched;

	[Description("Specifies the default style (Top, Bottom) of caption")]
	protected override CaptionStyle DefaultCaptionStyle => CaptionStyle.Bottom;

	public RibbonPanelMergeContainer()
	{
		Size = new Size(100, 50);
		base.Visible = false;
	}
}
