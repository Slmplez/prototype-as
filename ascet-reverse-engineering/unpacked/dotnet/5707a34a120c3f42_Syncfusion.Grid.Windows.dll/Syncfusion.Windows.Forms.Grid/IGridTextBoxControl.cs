namespace Syncfusion.Windows.Forms.Grid;

public interface IGridTextBoxControl
{
	bool IsSuspendEvents { get; }

	bool Initializing { get; }

	GridCellRendererBase ParentCell { get; }

	bool FloatDone { get; set; }

	bool Floatable { get; set; }

	GridMargins TextBoxMargins { get; }

	void SuspendEvents();

	void ResumeEvents();

	void BeginInit();

	void EndInit();
}
