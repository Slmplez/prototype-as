using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class DomainUpDownExtDesigner : ControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new DomainUpDownExtActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override SelectionRules SelectionRules => base.SelectionRules & ~(SelectionRules.TopSizeable | SelectionRules.BottomSizeable);

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
	}
}
