using System;
using System.Windows.Forms;

namespace Syncfusion.Windows.Forms;

public interface IDynamicSplitterFrame
{
	DynamicSplitBars SplitBars { get; }

	int RowCount { get; }

	int ColumnCount { get; }

	Control ActivePane { get; set; }

	event EventHandler SplitBarsChanged;

	event EventHandler VSplitPosChanged;

	event EventHandler HSplitPosChanged;

	event EventHandler SplitterLayoutChanged;

	bool SplitRow(int cy);

	bool SplitColumn(int cx);

	void DeleteRow(int row);

	void DeleteColumn(int column);

	Control GetPane(int row, int column);

	bool FindPane(Control control, out int row, out int column);

	void SetActivePane(int row, int column);

	bool CanActivateNext(bool prev);

	void ActivateNext(bool prev);
}
