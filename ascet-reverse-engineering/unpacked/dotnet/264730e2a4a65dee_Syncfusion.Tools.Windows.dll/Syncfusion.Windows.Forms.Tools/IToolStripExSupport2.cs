using System.Drawing;

namespace Syncfusion.Windows.Forms.Tools;

public interface IToolStripExSupport2 : IToolStripExSupport
{
	ToolStripBorderStyle BorderStyle { get; }

	LauncherStyle LauncherStyle { get; }

	CaptionStyle CaptionStyle { get; }

	CaptionTextStyle CaptionTextStyle { get; }

	CaptionAlignment CaptionAlignment { get; }

	Font CaptionFont { get; }

	int CaptionMinHeight { get; }
}
