using System.Drawing;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public interface IGridDrawSelectionFrame
{
	[DocumentationExclude]
	void DrawSelectionFrame(GridControlBase pGrid, Graphics g, bool bDrawOld, GridRangeInfo pNewRange);
}
