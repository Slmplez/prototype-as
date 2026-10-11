namespace Syncfusion.Windows.Forms;

public interface ISuppportHistory
{
	HistoryManager HistoryManager { get; set; }

	bool HistoryEnabled { get; set; }
}
