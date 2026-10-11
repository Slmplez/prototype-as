namespace Syncfusion.Windows.Forms.Tools;

public interface IToolStripExSupport
{
	bool ShowCaption { get; }

	bool ShowLauncher { get; }

	bool GroupedButtons { get; }

	bool LauncherSelected { get; }

	int CaptionHeight { get; }
}
