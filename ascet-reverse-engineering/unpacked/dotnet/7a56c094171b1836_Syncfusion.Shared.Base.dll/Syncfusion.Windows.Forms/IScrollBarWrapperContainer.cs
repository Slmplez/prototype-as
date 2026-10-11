namespace Syncfusion.Windows.Forms;

public interface IScrollBarWrapperContainer
{
	ScrollBarWrapper VScrollBar { get; }

	ScrollBarWrapper HScrollBar { get; }

	void UpdateScrollBars();
}
