using System.Collections;

namespace Syncfusion.Windows.Forms.Grid;

public class GridSheetFamilyItem
{
	internal Hashtable sheetDependentCells;

	internal Hashtable sheetDependentFormulaCells;

	internal Hashtable sheetDependentNamedRangeCells;

	internal Hashtable sheetNamedRanges;

	internal Hashtable sheetNamedRangesOriginalNames;

	internal Hashtable SheetNameToGridModel;

	internal Hashtable TokenToGridModel;

	internal Hashtable GridModelToToken;

	internal Hashtable SheetNameToToken;

	internal Hashtable TokenToSheetName;

	internal bool isSheeted;

	internal ArrayList sheetNamesSized;
}
