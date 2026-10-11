using System.ComponentModel;
using Syncfusion.Styles;

namespace Syncfusion.Windows.Forms.Grid;

[TypeConverter(typeof(StyleInfoBaseConverter))]
internal class GridBaseStyleInfo : GridStyleInfo
{
	public GridBaseStyleInfo(StyleInfoIdentityBase identity, GridStyleInfoStore store)
		: base(identity, store)
	{
	}
}
