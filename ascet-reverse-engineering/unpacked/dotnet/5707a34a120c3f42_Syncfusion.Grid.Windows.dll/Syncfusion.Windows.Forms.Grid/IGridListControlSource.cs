using System;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public interface IGridListControlSource
{
	event EventHandler ItemPropertiesChanged;

	int GetWidth(int columnIndex);

	GridStyleInfo GetStyle(int recordNum, int columnIndex);

	void SetWidth(int columnIndex, int width);

	int GetVisibleColumnCount();
}
