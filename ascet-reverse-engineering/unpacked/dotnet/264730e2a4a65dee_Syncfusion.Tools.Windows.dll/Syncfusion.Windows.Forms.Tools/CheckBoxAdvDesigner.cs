using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class CheckBoxAdvDesigner : ControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new CheckBoxAdvActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
	}
}
