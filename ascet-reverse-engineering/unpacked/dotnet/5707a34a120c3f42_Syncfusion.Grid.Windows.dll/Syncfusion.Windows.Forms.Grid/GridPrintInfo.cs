using System.Collections;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
public class GridPrintInfo
{
	[DocumentationExclude]
	public int m_nPrintTopRow;

	[DocumentationExclude]
	public int m_nPrintLeftCol;

	[DocumentationExclude]
	public ArrayList m_awPageFirstCol;

	[DocumentationExclude]
	public ArrayList m_awPageFirstRow;

	[DocumentationExclude]
	public int m_nCurrentPageColIndex;

	[DocumentationExclude]
	public int m_nCurrentPageRowIndex;

	[DocumentationExclude]
	public GridCountRecordsBehavior m_nPrintHandleRecordCount = GridCountRecordsBehavior.CountPrint;

	[DocumentationExclude]
	public bool m_bPrintPaintMsg;

	[DocumentationExclude]
	public bool m_bPrintCurSelOnly;
}
