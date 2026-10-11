using System;

namespace Syncfusion.Windows.Forms.Grid;

[Flags]
public enum GridFormulaCopyFlags
{
	None = 0,
	ClipBoardText = 1,
	ClipBoardFormula = 2,
	ClipBoardReferencesAdjusted = 4,
	InsDelRangeReferencesUpdated = 0x80,
	NamedRangeReferencesUpdated = 0x100,
	UpdateReferencesDuringDnD = 0x200
}
