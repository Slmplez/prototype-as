using System.ComponentModel;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
[ToolboxItem(false)]
public class GridListControlModel : GridModel
{
	internal GridListControl listControl;

	[DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)]
	[Browsable(false)]
	public GridListControl ListControl => listControl;

	public override int NameToColIndex(string name)
	{
		for (int i = 0; i < listControl.Grid.ColCount; i++)
		{
			if (listControl.GetColumnStyle(i).Tag is PropertyDescriptor propertyDescriptor && propertyDescriptor.Name == name)
			{
				return i + 1;
			}
		}
		return base.NameToColIndex(name);
	}
}
