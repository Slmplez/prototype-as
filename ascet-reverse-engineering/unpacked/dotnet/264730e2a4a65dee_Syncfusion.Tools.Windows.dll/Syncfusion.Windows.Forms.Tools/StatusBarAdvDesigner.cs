using System.ComponentModel;
using System.ComponentModel.Design;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools;

public class StatusBarAdvDesigner : ParentControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new StatusBarAdvActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		if (base.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentAdding += OnComponentAdding;
			componentChangeService.ComponentAdded += ComponentChangeService_ComponentAdded;
		}
	}

	public void ComponentChangeService_ComponentAdded(object sender, ComponentEventArgs e)
	{
		if (base.Component is StatusBarAdv statusBarAdv)
		{
			statusBarAdv.UnlockRedraw();
		}
	}

	private void OnComponentAdding(object sender, ComponentEventArgs e)
	{
		if (base.Component is StatusBarAdv statusBarAdv)
		{
			statusBarAdv.LockRedraw();
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && base.GetService(typeof(IDesignerHost)) is IDesignerHost designerHost && designerHost.GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentAdding -= OnComponentAdding;
			componentChangeService.ComponentAdded -= ComponentChangeService_ComponentAdded;
		}
		base.Dispose(disposing);
	}
}
