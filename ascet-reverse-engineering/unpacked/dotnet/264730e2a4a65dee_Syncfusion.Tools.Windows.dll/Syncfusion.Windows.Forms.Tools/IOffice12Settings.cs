using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface IOffice12Settings
{
	LauncherStyle LauncherStyle { get; set; }

	bool ShowCaption { get; set; }

	bool ShowLauncher { get; set; }

	CaptionStyle CaptionStyle { get; set; }

	CaptionTextStyle CaptionTextStyle { get; set; }

	CaptionAlignment CaptionAlignment { get; set; }

	Font CaptionFont { get; set; }

	int CaptionMinHeight { get; set; }

	ToolStripBorderStyle BorderStyle { get; set; }

	ToolStripEx.ColorScheme OfficeColorScheme { get; set; }
}
