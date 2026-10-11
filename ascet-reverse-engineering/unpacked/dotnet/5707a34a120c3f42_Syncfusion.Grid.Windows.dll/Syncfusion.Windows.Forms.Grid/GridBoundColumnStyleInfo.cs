using System.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(StyleInfoBaseConverter))]
internal class GridBoundColumnStyleInfo : GridStyleInfo
{
	public GridBoundColumnStyleInfo(GridBoundColumn boundColumn, GridStyleInfoStore store)
		: base(new GridBoundColumnStyleInfoIdentity(boundColumn), store)
	{
	}

	public GridBoundColumnStyleInfo(GridBoundColumn boundColumn)
		: base(new GridBoundColumnStyleInfoIdentity(boundColumn))
	{
	}
}
