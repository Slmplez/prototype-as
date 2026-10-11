using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class SplashPanelDesigner : ScrollableControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new SplashPanelActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
	}
}
