using System.ComponentModel.Design;
using System.Windows.Forms.Design;
using Syncfusion.Documentation;

namespace Syncfusion.Windows.Forms.Grid;

[DocumentationExclude]
internal class GridListControlDesigner : ControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new GridListControlChooseDataSourceActionList(base.Component));
				actionLists.Add(new DesignerActionSupportList(base.Component, null));
			}
			return actionLists;
		}
	}
}
