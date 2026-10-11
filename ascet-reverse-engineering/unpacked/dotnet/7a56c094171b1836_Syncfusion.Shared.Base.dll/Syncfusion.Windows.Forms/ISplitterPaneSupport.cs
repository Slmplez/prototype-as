namespace Syncfusion.Windows.Forms;

public interface ISplitterPaneSupport
{
	bool FillSplitterPane { get; }

	bool IsSplitterPaneClosing { get; }

	bool IsSplitterPaneClosed { get; }

	void PaneClosing();

	void PaneClosed();
}
