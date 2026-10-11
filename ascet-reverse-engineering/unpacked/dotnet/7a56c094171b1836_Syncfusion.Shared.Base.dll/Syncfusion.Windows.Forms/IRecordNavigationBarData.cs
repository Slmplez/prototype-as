namespace Syncfusion.Windows.Forms;

public interface IRecordNavigationBarData
{
	int MinRecord { get; }

	int MaxRecord { get; }

	bool AllowAddNew { get; }
}
