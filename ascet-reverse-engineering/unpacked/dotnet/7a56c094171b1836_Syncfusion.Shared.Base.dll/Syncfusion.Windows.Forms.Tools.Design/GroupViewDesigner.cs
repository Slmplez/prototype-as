using System.ComponentModel;
using System.ComponentModel.Design;
using System.Drawing;
using System.Windows.Forms;
using System.Windows.Forms.Design;

namespace Syncfusion.Windows.Forms.Tools.Design;

public class GroupViewDesigner : ControlDesigner
{
	private DesignerActionListCollection actionLists;

	public override DesignerActionListCollection ActionLists
	{
		get
		{
			if (actionLists == null)
			{
				actionLists = new DesignerActionListCollection();
				actionLists.Add(new GroupViewActionList(base.Component));
			}
			return actionLists;
		}
	}

	public override void Initialize(IComponent component)
	{
		base.Initialize(component);
		IComponentChangeService componentChangeService = GetService(typeof(IComponentChangeService)) as IComponentChangeService;
		componentChangeService.ComponentRemoved += IComponentChangeService_ComponentRemoved;
	}

	public void IComponentChangeService_ComponentRemoved(object sender, ComponentEventArgs e)
	{
		if (!e.Component.Equals(base.Component))
		{
			return;
		}
		GroupView groupView = base.Component as GroupView;
		if (groupView.GroupViewItems.Count > 0)
		{
			GroupViewItem[] array = new GroupViewItem[groupView.GroupViewItems.Count];
			groupView.GroupViewItems.CopyTo(array, 0);
			GroupViewItem[] array2 = array;
			foreach (GroupViewItem item in array2)
			{
				groupView.GroupViewItems.Remove(item);
				GetService(typeof(IDesignerHost));
			}
			groupView.GroupViewItems.Clear();
		}
	}

	protected override void OnMouseDragBegin(int x, int y)
	{
		base.OnMouseDragBegin(x, y);
		GroupView groupView = base.Component as GroupView;
		((IGroupViewDesignerInvoke)groupView).HandleMouseDown(MouseButtons.Left, groupView.PointToClient(new Point(x, y)));
	}

	protected override void OnMouseDragEnd(bool cancel)
	{
		base.OnMouseDragEnd(cancel);
		GroupView groupView = base.Component as GroupView;
		((IGroupViewDesignerInvoke)groupView).HandleMouseUp(MouseButtons.Left, groupView.PointToClient(Cursor.Position));
	}

	protected override void Dispose(bool bdispose)
	{
		if (GetService(typeof(IComponentChangeService)) is IComponentChangeService componentChangeService)
		{
			componentChangeService.ComponentRemoved -= IComponentChangeService_ComponentRemoved;
		}
		base.Dispose(bdispose);
	}
}
